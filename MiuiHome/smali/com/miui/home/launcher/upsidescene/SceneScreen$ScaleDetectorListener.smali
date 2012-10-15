.class Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/SceneScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mAppsSelectView:Lcom/miui/home/launcher/upsidescene/AppsSelectView;
    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$200(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 61
    .local v0, scale:F
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->isBeingDragged()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x4348

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    const v2, 0x3f733333

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    const v2, 0x3f86bca2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 67
    :cond_2
    const v2, 0x3f4ccccd

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onPinchIn(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_0

    .line 71
    :cond_3
    const v2, 0x3fa66666

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onPinchOut(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->isBeingDragged()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mScrollableScreen:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->finishCurrentGesture()V

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 v1, 0x1

    #setter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mCurrentGestureFinished:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$102(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)Z

    .line 53
    return-void
.end method
