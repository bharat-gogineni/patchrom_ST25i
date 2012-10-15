.class Lcom/android/thememanager/view/WallpaperView$1;
.super Lcom/android/thememanager/util/MoveAnimation;
.source "WallpaperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/view/WallpaperView;->autoSwitchCurreentWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/view/WallpaperView;


# direct methods
.method constructor <init>(Lcom/android/thememanager/view/WallpaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-direct {p0}, Lcom/android/thememanager/util/MoveAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2
    .parameter "totalMoveOffset"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 188
    .local v0, currentLeft:I
    if-gez v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$300(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$300(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;->switchNext()V

    .line 204
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #calls: Lcom/android/thememanager/view/WallpaperView;->resetWallpaperShowingState()V
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$400(Lcom/android/thememanager/view/WallpaperView;)V

    .line 205
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v1}, Lcom/android/thememanager/view/WallpaperView;->invalidate()V

    .line 206
    return-void

    .line 193
    :cond_1
    if-lez v0, :cond_2

    .line 195
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$300(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$300(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;->switchPrevious()V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$300(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    invoke-static {v1}, Lcom/android/thememanager/view/WallpaperView;->access$300(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;->switchNone()V

    goto :goto_0
.end method

.method public onMove(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 181
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 182
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$1;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->invalidate()V

    .line 183
    return-void
.end method
