.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$2;
.super Ljava/lang/Object;
.source "Weather_2x4_new.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4_new;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$2;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v0, v3, v4

    .line 172
    .local v0, diffY:F
    const/high16 v3, 0x4120

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$2;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->switchCity(Z)V
    invoke-static {v3, v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$000(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Z)V

    .line 179
    :goto_0
    return v1

    .line 175
    :cond_0
    const/high16 v3, -0x3ee0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 176
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$2;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4_new;->switchCity(Z)V
    invoke-static {v2, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->access$000(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 179
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 165
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 153
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method
