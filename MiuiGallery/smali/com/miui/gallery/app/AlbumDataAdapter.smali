.class public Lcom/miui/gallery/app/AlbumDataAdapter;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumViewBase$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;,
        Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;,
        Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;,
        Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;
    }
.end annotation


# instance fields
.field protected mActiveEnd:I

.field private mActiveStart:I

.field protected mContentEnd:I

.field protected mContentStart:I

.field protected final mData:[Lcom/miui/gallery/data/MediaItem;

.field protected final mItemVersion:[J

.field private mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected mModelListener:Lcom/miui/gallery/ui/AlbumViewModelListener;

.field private mNotifyFirstPage:Z

.field protected mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

.field protected final mSetVersion:[J

.field protected mSize:I

.field protected final mSource:Lcom/miui/gallery/data/MediaSet;

.field private mSourceListener:Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;

.field protected mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)V
    .locals 6
    .parameter "context"
    .parameter "mediaSet"

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveStart:I

    .line 55
    iput v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I

    .line 57
    iput v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    .line 58
    iput v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    .line 61
    iput-wide v4, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceVersion:J

    .line 64
    iput v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    .line 67
    new-instance v0, Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/app/AlbumDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceListener:Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;

    .line 71
    iput-boolean v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mNotifyFirstPage:Z

    .line 74
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 76
    new-array v0, v3, [Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    .line 77
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mItemVersion:[J

    .line 78
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSetVersion:[J

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mItemVersion:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSetVersion:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 82
    new-instance v0, Lcom/miui/gallery/app/AlbumDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter$1;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/AlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveStart:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/AlbumDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mNotifyFirstPage:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/app/AlbumDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mNotifyFirstPage:Z

    return p1
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 155
    return-void
.end method

.method private setContentWindow(II)V
    .locals 5
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 158
    iget v4, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    if-ne p1, v4, :cond_1

    iget v4, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    if-ne p2, v4, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    .line 160
    .local v0, end:I
    iget v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    .line 162
    .local v3, start:I
    monitor-enter p0

    .line 163
    :try_start_0
    iput p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    .line 164
    iput p2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-ge p1, v0, :cond_2

    if-lt v3, p2, :cond_3

    .line 167
    :cond_2
    move v1, v3

    .local v1, i:I
    move v2, v0

    .local v2, n:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 168
    rem-int/lit16 v4, v1, 0x3e8

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/AlbumDataAdapter;->clearSlot(I)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 171
    :cond_3
    move v1, v3

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 172
    rem-int/lit16 v4, v1, 0x3e8

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/AlbumDataAdapter;->clearSlot(I)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    :cond_4
    move v1, p2

    move v2, v0

    .restart local v2       #n:I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 175
    rem-int/lit16 v4, v1, 0x3e8

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/AlbumDataAdapter;->clearSlot(I)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 178
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    invoke-virtual {v4}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public createReloadTask()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    .line 114
    return-void
.end method

.method public executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 251
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 256
    :goto_0
    return-object v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 257
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 258
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public get(I)Lcom/miui/gallery/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "AlbumDataAdapter"

    const-string v1, "error, why out of bound?"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveStart:I

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 144
    iget v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->terminate()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceListener:Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 110
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, slot:I
    iget v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    if-ge v0, v2, :cond_0

    .line 119
    rem-int/lit16 v1, v0, 0x3e8

    .line 120
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->clearSlot(I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->setForceReload()V

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumDataAdapter;->pause()V

    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumDataAdapter;->resume()V

    .line 125
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceListener:Lcom/miui/gallery/app/AlbumDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumDataAdapter;->createReloadTask()V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->start()V

    .line 104
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 182
    iget v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 187
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v3

    .line 188
    .local v2, length:I
    iput p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveStart:I

    .line 189
    iput p2, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I

    .line 192
    if-eq p1, p2, :cond_0

    .line 194
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 196
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    .local v0, contentEnd:I
    iget v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 206
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 184
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    .line 247
    return-void
.end method

.method public setModelListener(Lcom/miui/gallery/ui/AlbumViewModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumViewModelListener;

    .line 243
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    return v0
.end method
