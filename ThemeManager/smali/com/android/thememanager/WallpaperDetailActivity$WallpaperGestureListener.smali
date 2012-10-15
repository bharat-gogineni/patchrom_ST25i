.class Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WallpaperDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/WallpaperDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/WallpaperDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 659
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;
    invoke-static {v2}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2500(Lcom/android/thememanager/WallpaperDetailActivity;)Lcom/android/thememanager/view/WallpaperView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/thememanager/view/WallpaperView;->isThumbnailScanMode()Z

    move-result v2

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->updateSliderViewState(Z)V
    invoke-static {v0, v2}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2900(Lcom/android/thememanager/WallpaperDetailActivity;Z)V

    .line 660
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2500(Lcom/android/thememanager/WallpaperDetailActivity;)Lcom/android/thememanager/view/WallpaperView;

    move-result-object v2

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2500(Lcom/android/thememanager/WallpaperDetailActivity;)Lcom/android/thememanager/view/WallpaperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->isThumbnailScanMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/thememanager/view/WallpaperView;->setScanMode(Z)V

    .line 661
    return v1

    .line 660
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 644
    neg-float v1, p3

    float-to-int v0, v1

    .line 645
    .local v0, moveX:I
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2500(Lcom/android/thememanager/WallpaperDetailActivity;)Lcom/android/thememanager/view/WallpaperView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/thememanager/view/WallpaperView;->horizontalMove(I)V

    .line 646
    const/4 v1, 0x1

    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 651
    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mTitleAreaView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2600(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 652
    .local v0, shouldVisiable:Z
    :goto_0
    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->updateTitleAndOperateBarState(Z)V
    invoke-static {v2, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2700(Lcom/android/thememanager/WallpaperDetailActivity;Z)V

    .line 653
    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->autoUpdateSliderViewState(Z)V
    invoke-static {v2, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2800(Lcom/android/thememanager/WallpaperDetailActivity;Z)V

    .line 654
    return v1

    .line 651
    .end local v0           #shouldVisiable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
