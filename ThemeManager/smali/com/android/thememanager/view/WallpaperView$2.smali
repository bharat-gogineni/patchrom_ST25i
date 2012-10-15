.class Lcom/android/thememanager/view/WallpaperView$2;
.super Lcom/android/thememanager/util/MoveAnimation;
.source "WallpaperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/view/WallpaperView;->setScanMode(Z)V
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
    .line 241
    iput-object p1, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-direct {p0}, Lcom/android/thememanager/util/MoveAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2
    .parameter "totalMoveOffset"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$800(Lcom/android/thememanager/view/WallpaperView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z
    invoke-static {v1, v0}, Lcom/android/thememanager/view/WallpaperView;->access$802(Lcom/android/thememanager/view/WallpaperView;Z)Z

    .line 262
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #calls: Lcom/android/thememanager/view/WallpaperView;->resetWallpaperShowingState()V
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView;->access$400(Lcom/android/thememanager/view/WallpaperView;)V

    .line 263
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->invalidate()V

    .line 264
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(I)V
    .locals 10
    .parameter "offset"

    .prologue
    .line 244
    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/thememanager/view/WallpaperView;->access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, p1

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 245
    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/thememanager/view/WallpaperView;->access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, p1

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 247
    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I
    invoke-static {v8}, Lcom/android/thememanager/view/WallpaperView;->access$500(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v1

    .line 248
    .local v1, bH:I
    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I
    invoke-static {v8}, Lcom/android/thememanager/view/WallpaperView;->access$600(Lcom/android/thememanager/view/WallpaperView;)I

    move-result v2

    .line 249
    .local v2, bW:I
    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/thememanager/view/WallpaperView;->access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 250
    .local v6, vH:I
    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/thememanager/view/WallpaperView;->access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 251
    .local v7, vW:I
    mul-int v8, v7, v1

    div-int/2addr v8, v6

    sub-int v8, v2, v8

    div-int/lit8 v3, v8, 0x2

    .line 252
    .local v3, l:I
    mul-int v8, v7, v1

    div-int/2addr v8, v6

    add-int v4, v3, v8

    .line 253
    .local v4, r:I
    const/4 v5, 0x0

    .line 254
    .local v5, t:I
    move v0, v1

    .line 256
    .local v0, b:I
    iget-object v8, p0, Lcom/android/thememanager/view/WallpaperView$2;->this$0:Lcom/android/thememanager/view/WallpaperView;

    #getter for: Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
    invoke-static {v8}, Lcom/android/thememanager/view/WallpaperView;->access$700(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    move-result-object v8

    invoke-virtual {v8, v3, v5, v4, v0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->setDrawingArea(IIII)V

    .line 257
    return-void
.end method
