.class public Lcom/lidroid/systemui/quickpanel/FlashlightButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "FlashlightButton.java"


# static fields
.field private static mIsFlashSupported:Z

.field private static mLedController:Lcom/lidroid/util/LedController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/lidroid/util/LedController;->getInstance()Lcom/lidroid/util/LedController;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    invoke-virtual {v0}, Lcom/lidroid/util/LedController;->isFlashSupported()Z

    move-result v0

    sput-boolean v0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIsFlashSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    sget-object v0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    const-string v0, "toggleFlashlight"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mType:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    return-void
.end method

.method private static getFlashlightState(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flashlight_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private startFlashlightActivity()V
    .locals 3

    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lidroid/systemui/quickpanel/FlashlightActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x7f08008b

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v3, "flashlight_mode"

    iget-object v4, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-boolean v0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIsFlashSupported:Z

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->getFlashlightState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    sget-object v0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    invoke-virtual {v0}, Lcom/lidroid/util/LedController;->off()V

    :goto_0
    iget v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->update()V

    :goto_1
    return-void

    :cond_0
    iput v1, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    sget-object v0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/lidroid/util/LedController;

    invoke-virtual {v0}, Lcom/lidroid/util/LedController;->on()V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->startFlashlightActivity()V

    goto :goto_1
.end method

.method protected updateState()V
    .locals 1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->getFlashlightState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mState:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0200f1

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIcon:I

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0200f2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/FlashlightButton;->mIcon:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
