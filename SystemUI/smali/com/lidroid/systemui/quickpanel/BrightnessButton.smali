.class public Lcom/lidroid/systemui/quickpanel/BrightnessButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "BrightnessButton.java"


# static fields
.field private static final AUTO_BACKLIGHT:I = -0x1

.field private static final CM_MODE_AUTO_LOW_MAX:I = 0x2

.field private static final CM_MODE_AUTO_MIN_DEF_MAX:I = 0x0

.field private static final CM_MODE_AUTO_MIN_LOW_MID_HIGH_MAX:I = 0x1

.field private static final CM_MODE_MIN_MAX:I = 0x3

.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final HIGH_BACKLIGHT:I = 0xbf

.field private static final LOW_BACKLIGHT:I = 0x3f

.field private static final MAX_BACKLIGHT:I = 0xff

.field private static final MID_BACKLIGHT:I = 0x7f

.field private static final MIN_BACKLIGHT:I = 0x1e

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getBrightnessState(Landroid/content/Context;)I
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x3f

    if-ge v0, v2, :cond_0

    move v2, v6

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x66

    if-ge v0, v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_3

    if-ne v1, v5, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v8

    goto :goto_0

    :cond_3
    const/16 v2, 0xbf

    if-ge v0, v2, :cond_5

    if-ne v1, v5, :cond_4

    move v2, v8

    goto :goto_0

    :cond_4
    move v2, v7

    goto :goto_0

    :cond_5
    const/16 v2, 0xff

    if-ge v0, v2, :cond_6

    move v2, v7

    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_0
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMinBacklight(Landroid/content/Context;)I
    .locals 4

    const/16 v3, 0x1e

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "light_sensor_custom"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "light_screen_dim"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private static getNextBrightnessValue(Landroid/content/Context;)I
    .locals 13

    const/16 v11, 0x2f

    const/4 v12, 0x5

    const/16 v9, 0x66

    const/4 v10, 0x4

    const/4 v8, 0x3

    const/16 v7, 0x3f

    const/4 v6, 0x2

    const/16 v5, 0xff

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v6, :cond_0

    move v2, v7

    :goto_0
    return v2

    :cond_0
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    :cond_1
    if-ge v0, v7, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v10, :cond_2

    if-ne v1, v6, :cond_3

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    if-ne v1, v8, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    if-eq v1, v12, :cond_13

    move v2, v9

    goto :goto_0

    :cond_5
    if-ge v0, v9, :cond_a

    if-eq v1, v10, :cond_6

    if-nez v1, :cond_7

    :cond_6
    move v2, v9

    goto :goto_0

    :cond_7
    if-eq v1, v6, :cond_8

    if-ne v1, v8, :cond_9

    :cond_8
    move v2, v5

    goto :goto_0

    :cond_9
    if-eq v1, v12, :cond_12

    const/16 v2, 0x7f

    goto :goto_0

    :cond_a
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_c

    if-eq v1, v10, :cond_12

    if-eq v1, v12, :cond_12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    const/16 v2, 0x7f

    goto :goto_0

    :cond_b
    move v2, v5

    goto :goto_0

    :cond_c
    const/16 v2, 0xbf

    if-ge v0, v2, :cond_e

    if-eq v1, v10, :cond_12

    if-eq v1, v12, :cond_12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    const/16 v2, 0xbf

    goto :goto_0

    :cond_d
    move v2, v5

    goto :goto_0

    :cond_e
    if-ge v0, v5, :cond_f

    if-eq v1, v10, :cond_12

    if-eq v1, v12, :cond_12

    move v2, v5

    goto :goto_0

    :cond_f
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eq v1, v8, :cond_10

    if-eq v1, v10, :cond_12

    const/4 v2, -0x1

    goto :goto_0

    :cond_10
    if-eq v1, v12, :cond_11

    if-ne v1, v6, :cond_12

    :cond_11
    move v2, v7

    goto :goto_0

    :cond_12
    invoke-static {p0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    :cond_13
    if-ge v0, v11, :cond_10

    move v2, v11

    goto :goto_0
.end method

.method private static isAutomaticModeSupported(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static isBrightnessSetToAutomatic(Landroid/content/Context;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v5, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    move v3, v6

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    const-string v3, "PowerWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v6

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x7f080087

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    const-string v5, "screen_brightness_mode"

    iget-object v5, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getNextBrightnessValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    const-string v5, "screen_brightness"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v3, v5

    const-string v5, "PowerWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateState()V
    .locals 5

    const v4, 0x7f0200ee

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0200eb

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->getBrightnessState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f0200ed

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    :pswitch_2
    iput v4, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    iput v3, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0200ec

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mIcon:I

    iput v3, p0, Lcom/lidroid/systemui/quickpanel/BrightnessButton;->mState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
