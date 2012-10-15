.class public Lcom/miui/gallery/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/miui/gallery/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/GLRootView$1;,
        Lcom/miui/gallery/ui/GLRootView$IdleRunner;
    }
.end annotation


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/miui/gallery/ui/GLCanvasImpl;

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipRetryCount:I

.field private mContentView:Lcom/miui/gallery/ui/GLView;

.field private final mEglConfigChooser:Lcom/miui/gallery/ui/GalleryEGLConfigChooser;

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/miui/gallery/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v2, p0, Lcom/miui/gallery/ui/GLRootView;->mFrameCount:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFrameCountingStart:J

    .line 58
    iput v2, p0, Lcom/miui/gallery/ui/GLRootView;->mInvalidateColor:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    .line 72
    iput-boolean v2, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderRequested:Z

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    .line 75
    iput v2, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRetryCount:I

    .line 77
    new-instance v0, Lcom/miui/gallery/ui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/miui/gallery/ui/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mEglConfigChooser:Lcom/miui/gallery/ui/GalleryEGLConfigChooser;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    .line 86
    new-instance v0, Lcom/miui/gallery/ui/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/GLRootView$IdleRunner;-><init>(Lcom/miui/gallery/ui/GLRootView;Lcom/miui/gallery/ui/GLRootView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleRunner:Lcom/miui/gallery/ui/GLRootView$IdleRunner;

    .line 88
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 92
    iput-boolean v2, p0, Lcom/miui/gallery/ui/GLRootView;->mInDownState:Z

    .line 100
    iget v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    .line 101
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mEglConfigChooser:Lcom/miui/gallery/ui/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 103
    invoke-virtual {p0, p0}, Lcom/miui/gallery/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 104
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/GLRootView;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/GLRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/GLRootView;)Lcom/miui/gallery/ui/GLCanvasImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mCanvas:Lcom/miui/gallery/ui/GLCanvasImpl;

    return-object v0
.end method

.method private layoutContentPane()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    iget v2, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    .line 193
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLRootView;->getWidth()I

    move-result v1

    .line 194
    .local v1, width:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLRootView;->getHeight()I

    move-result v0

    .line 195
    .local v0, height:I
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout content pane "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v2, v5, v5, v1, v0}, Lcom/miui/gallery/ui/GLView;->layout(IIII)V

    .line 201
    :cond_0
    return-void
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    .line 285
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mCanvas:Lcom/miui/gallery/ui/GLCanvasImpl;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/GLCanvasImpl;->deleteRecycledResources()V

    .line 288
    invoke-static {}, Lcom/miui/gallery/ui/UploadedTexture;->resetUploadLimit()V

    .line 290
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderRequested:Z

    .line 292
    iget v5, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/GLRootView;->layoutContentPane()V

    .line 297
    :cond_0
    iget v5, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRetryCount:I

    if-lez v5, :cond_1

    .line 298
    iget v5, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRetryCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRetryCount:I

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    .line 300
    .local v0, clip:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-interface {p1, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 303
    .end local v0           #clip:Landroid/graphics/Rect;
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mCanvas:Lcom/miui/gallery/ui/GLCanvasImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/ui/GLCanvasImpl;->setCurrentAnimationTimeMillis(J)V

    .line 304
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    if-eqz v5, :cond_2

    .line 305
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    iget-object v6, p0, Lcom/miui/gallery/ui/GLRootView;->mCanvas:Lcom/miui/gallery/ui/GLCanvasImpl;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 308
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 310
    .local v3, now:J
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 311
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/anim/CanvasAnimation;

    invoke-virtual {v5, v3, v4}, Lcom/miui/gallery/anim/CanvasAnimation;->setStartTime(J)V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_3
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 316
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #now:J
    :cond_4
    invoke-static {}, Lcom/miui/gallery/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 317
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLRootView;->requestRender()V

    .line 320
    :cond_5
    iget-object v6, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    monitor-enter v6

    .line 321
    :try_start_0
    iget-boolean v5, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderRequested:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 322
    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleRunner:Lcom/miui/gallery/ui/GLRootView$IdleRunner;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/GLRootView$IdleRunner;->enable()V

    .line 324
    :cond_6
    monitor-exit v6

    .line 334
    return-void

    .line 324
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/miui/gallery/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mIdleRunner:Lcom/miui/gallery/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLRootView$IdleRunner;->enable()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 339
    .local v0, action:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_4

    .line 341
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/ui/GLRootView;->mInDownState:Z

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 350
    .local v1, handled:Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 351
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v1           #handled:Z
    :goto_0
    return v1

    .line 342
    :cond_4
    iget-boolean v3, p0, Lcom/miui/gallery/ui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 408
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const-wide/16 v8, 0x0

    .line 264
    iget-object v4, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 266
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v4, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 272
    .local v0, end:J
    iget-wide v4, p0, Lcom/miui/gallery/ui/GLRootView;->mLastDrawFinishTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 273
    iget-wide v4, p0, Lcom/miui/gallery/ui/GLRootView;->mLastDrawFinishTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    .line 274
    .local v2, wait:J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 275
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 278
    .end local v2           #wait:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/ui/GLRootView;->mLastDrawFinishTime:J

    .line 279
    return-void

    .line 268
    .end local v0           #end:J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLRootView;->requestLayoutContentPane()V

    .line 207
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 236
    const-string v1, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gl10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/gallery/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 239
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 240
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 241
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/miui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 243
    iget-object v1, p0, Lcom/miui/gallery/ui/GLRootView;->mCanvas:Lcom/miui/gallery/ui/GLCanvasImpl;

    invoke-virtual {v1, p2, p3}, Lcom/miui/gallery/ui/GLCanvasImpl;->setSize(II)V

    .line 245
    iget-object v1, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/gallery/ui/GLRootView;->mClipRetryCount:I

    .line 247
    return-void

    :cond_0
    move v1, v2

    .line 241
    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl1"
    .parameter "config"

    .prologue
    .line 215
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 216
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/miui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iput-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 221
    new-instance v1, Lcom/miui/gallery/ui/GLCanvasImpl;

    invoke-direct {v1, v0}, Lcom/miui/gallery/ui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/GLRootView;->mCanvas:Lcom/miui/gallery/ui/GLCanvasImpl;

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/GLRootView;->setRenderMode(I)V

    .line 227
    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 184
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/GLRootView;->mFlags:I

    .line 185
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderRequested:Z

    .line 171
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public setContentPane(Lcom/miui/gallery/ui/GLView;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 138
    iget-object v2, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    if-eqz v2, :cond_3

    .line 140
    iget-boolean v2, p0, Lcom/miui/gallery/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 144
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/miui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 145
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    iput-boolean v7, p0, Lcom/miui/gallery/ui/GLRootView;->mInDownState:Z

    .line 148
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GLView;->detachFromRoot()V

    .line 149
    invoke-static {}, Lcom/miui/gallery/ui/BasicTexture;->yieldAllTextures()V

    .line 151
    :cond_3
    iput-object p1, p0, Lcom/miui/gallery/ui/GLRootView;->mContentView:Lcom/miui/gallery/ui/GLView;

    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1, p0}, Lcom/miui/gallery/ui/GLView;->attachToRoot(Lcom/miui/gallery/ui/GLRoot;)V

    .line 154
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/miui/gallery/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 413
    return-void
.end method
