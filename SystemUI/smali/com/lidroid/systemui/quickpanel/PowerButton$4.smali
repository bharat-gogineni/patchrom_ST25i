.class Lcom/lidroid/systemui/quickpanel/PowerButton$4;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerButton;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerButton$4;->this$0:Lcom/lidroid/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const v1, 0x7f0200fa

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const v2, 0x1

    if-eq v2, v3, :cond_0

    const v2, 0x3

    if-eq v2, v3, :cond_1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v2, 0x0

    return v2

    :cond_0
    const v1, 0x7f0200fa

    goto :goto_0

    :cond_1
    const v1, 0x7f0200fa

    goto :goto_0
.end method
