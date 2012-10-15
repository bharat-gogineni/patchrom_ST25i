.class abstract Lcom/miui/gallery/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/miui/gallery/ui/Texture;


# static fields
.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/miui/gallery/ui/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/GLCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/gallery/ui/BasicTexture;-><init>(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 3
    .parameter "canvas"
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mWidth:I

    .line 41
    iput v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mHeight:I

    .line 48
    iput-object v1, p0, Lcom/miui/gallery/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BasicTexture;->setAssociatedCanvas(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 55
    iput p2, p0, Lcom/miui/gallery/ui/BasicTexture;->mId:I

    .line 56
    iput p3, p0, Lcom/miui/gallery/ui/BasicTexture;->mState:I

    .line 57
    sget-object v1, Lcom/miui/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/miui/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 157
    .local v0, canvas:Lcom/miui/gallery/ui/GLCanvas;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BasicTexture;->isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v0, p0}, Lcom/miui/gallery/ui/GLCanvas;->unloadTexture(Lcom/miui/gallery/ui/BasicTexture;)Z

    .line 160
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/ui/BasicTexture;->mState:I

    .line 161
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/BasicTexture;->setAssociatedCanvas(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 162
    return-void

    .line 156
    .end local v0           #canvas:Lcom/miui/gallery/ui/GLCanvas;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/GLCanvas;

    move-object v0, v1

    goto :goto_0
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/miui/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yieldAllTextures()V
    .locals 4

    .prologue
    .line 179
    sget-object v3, Lcom/miui/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 180
    :try_start_0
    sget-object v2, Lcom/miui/gallery/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/BasicTexture;

    .line 181
    .local v1, t:Lcom/miui/gallery/ui/BasicTexture;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/BasicTexture;->yield()V

    goto :goto_0

    .line 183
    .end local v1           #t:Lcom/miui/gallery/ui/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    return-void
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/ui/GLCanvas;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIII)V

    .line 126
    return-void
.end method

.method public draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 129
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/ui/GLCanvas;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;IIII)V

    .line 130
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/miui/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/miui/gallery/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BasicTexture;->recycle()V

    .line 168
    sget-object v0, Lcom/miui/gallery/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mId:I

    return v0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v0, 0x1

    .line 137
    iget v1, p0, Lcom/miui/gallery/ui/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/miui/gallery/ui/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/miui/gallery/ui/BasicTexture;->freeResource()V

    .line 144
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mCanvasRef:Ljava/lang/ref/WeakReference;

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setBorder(Z)V
    .locals 0
    .parameter "hasBorder"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/miui/gallery/ui/BasicTexture;->mHasBorder:Z

    .line 122
    return-void
.end method

.method protected setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    iput p1, p0, Lcom/miui/gallery/ui/BasicTexture;->mWidth:I

    .line 78
    iput p2, p0, Lcom/miui/gallery/ui/BasicTexture;->mHeight:I

    .line 79
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mTextureWidth:I

    .line 80
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/BasicTexture;->mTextureHeight:I

    .line 81
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/miui/gallery/ui/BasicTexture;->freeResource()V

    .line 153
    return-void
.end method
