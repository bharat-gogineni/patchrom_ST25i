.class Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;
.super Landroid/os/Handler;
.source "WallpaperView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 297
    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must create WallpaperHander in main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "who"

    .prologue
    .line 303
    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    #getter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$900(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_0

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 307
    .local v0, dirty:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    #getter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$900(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    #getter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$900(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 308
    .local v1, dx:I
    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    #getter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$900(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    #getter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->canvasVisiableArea:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$900(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 309
    .local v2, dy:I
    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    iget-object v3, v3, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->this$0:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/thememanager/view/WallpaperView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 316
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 319
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 320
    invoke-virtual {p0, p2, p1}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$WallpaperHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 322
    :cond_0
    return-void
.end method
