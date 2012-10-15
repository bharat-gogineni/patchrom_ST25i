.class public Lcom/miui/gallery/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/app/PhotoPage$Model;
.implements Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;,
        Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final VERSION_OUT_OF_RANGE:J

.field private static sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/miui/gallery/data/MediaItem;

.field private mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

.field private mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mItemPath:Lcom/miui/gallery/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPhotoView:Lcom/miui/gallery/ui/PhotoView;

.field private mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/miui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/miui/gallery/util/ThreadPool;

.field private final mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 71
    invoke-static {}, Lcom/miui/gallery/data/MediaObject;->nextVersionNumber()J

    move-result-wide v3

    sput-wide v3, Lcom/miui/gallery/app/PhotoDataAdapter;->VERSION_OUT_OF_RANGE:J

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, k:I
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    .line 92
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 94
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 95
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 96
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 100
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 101
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/Path;I)V
    .locals 4
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    .line 117
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    .line 118
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .line 119
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 129
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .line 130
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    .line 148
    iput-wide v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    .line 149
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    .line 163
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    .line 171
    invoke-static {p3}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 172
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoView;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    .line 173
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/Path;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 174
    iput p5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 175
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 179
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$1;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 200
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 201
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->fireModelInvalidated()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/PhotoDataAdapter;JLcom/miui/gallery/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateFullImage(JLcom/miui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/PhotoDataAdapter;JLcom/miui/gallery/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateScreenNail(JLcom/miui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/PhotoDataAdapter;)[Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method private destroyDecodeGifImage()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v0}, Lcom/miui/gallery/util/DecodeGifImage;->getFutureTask()Lcom/miui/gallery/util/Future;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    .line 374
    :cond_0
    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
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
    .line 823
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 824
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 827
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 829
    :goto_0
    return-object v2

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 830
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 831
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireModelInvalidated()V
    .locals 7

    .prologue
    .line 213
    const/4 v4, -0x1

    .local v4, i:I
    :goto_0
    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 214
    iget v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v5, v4

    invoke-direct {p0, v5}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    .line 215
    .local v2, current:J
    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v4, 0x1

    aget-wide v0, v5, v6

    .line 216
    .local v0, change:J
    cmp-long v5, v2, v0

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 218
    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v4, 0x1

    aput-wide v2, v5, v6

    .line 213
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    .end local v0           #change:J
    .end local v2           #current:J
    :cond_1
    return-void
.end method

.method private getFullScreenForMicroThumbnail(Lcom/miui/gallery/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 476
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, p2

    .line 491
    .end local p2
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 480
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailTypeByFilePath(Ljava/lang/String;)I

    move-result v2

    .line 481
    .local v2, type:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 482
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 483
    .local v3, width:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 484
    .local v1, height:I
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getHeight()I

    move-result v5

    invoke-static {p2, v4, v5}, Lcom/miui/gallery/util/CropUtil;->fitScreenBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 485
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 488
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, p2, v5, v6}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .end local v1           #height:I
    .end local v3           #width:I
    :cond_3
    move-object v0, p2

    .line 491
    .end local p2
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getImage(I)Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 400
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 408
    :goto_0
    return-object v2

    .line 401
    :cond_1
    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 403
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 404
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_3

    move-object v1, v4

    .line 405
    .local v1, screennail:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v1, :cond_4

    .line 406
    new-instance v2, Lcom/miui/gallery/ui/PhotoView$ImageData;

    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->rotation:I

    invoke-direct {v2, v1, v3}, Lcom/miui/gallery/ui/PhotoView$ImageData;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v1           #screennail:Landroid/graphics/Bitmap;
    :cond_2
    move v2, v3

    .line 401
    goto :goto_1

    .line 404
    .restart local v0       #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    :cond_3
    iget-object v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 408
    .restart local v1       #screennail:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v2, Lcom/miui/gallery/ui/PhotoView$ImageData;

    invoke-direct {v2, v4, v3}, Lcom/miui/gallery/ui/PhotoView$ImageData;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 204
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    :cond_0
    sget-wide v1, Lcom/miui/gallery/app/PhotoDataAdapter;->VERSION_OUT_OF_RANGE:J

    .line 209
    :goto_0
    return-wide v1

    .line 205
    :cond_1
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 207
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v1

    goto :goto_0

    .line 209
    .end local v0           #item:Lcom/miui/gallery/data/MediaItem;
    :cond_2
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private imageEntryToString(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)Ljava/lang/String;
    .locals 4
    .parameter "entry"

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    const-string v0, "ImageEntry: null"

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ImageEntry - requestedBits: %d; screenNail: %s, screenNailTask: %s, fullImage: %s, fullImageTask: %s, failCounter: %d"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x3

    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_3

    const-string v0, "null"

    :goto_3
    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-nez v0, :cond_4

    const-string v0, "null"

    :goto_4
    aput-object v0, v2, v3

    const/4 v0, 0x5

    iget v3, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private startTaskIfNeeded(II)Lcom/miui/gallery/util/Future;
    .locals 9
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/miui/gallery/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 665
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 718
    :goto_0
    return-object v3

    .line 667
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 668
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    move-object v3, v5

    goto :goto_0

    .line 670
    :cond_2
    if-ne p2, v4, :cond_3

    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v3, :cond_3

    .line 671
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 672
    :cond_3
    if-ne p2, v8, :cond_4

    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v3, :cond_4

    .line 673
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 676
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v6, p1, 0x20

    aget-object v2, v3, v6

    .line 677
    .local v2, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v2, :cond_7

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 678
    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->isGifMimeType(Ljava/lang/String;)Z

    move-result v1

    .line 679
    .local v1, isGif:Z
    if-ne p2, v4, :cond_a

    .line 680
    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    .line 681
    if-eqz v1, :cond_6

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne p1, v3, :cond_6

    .line 683
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v3}, Lcom/miui/gallery/util/DecodeGifImage;->getVersion()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 684
    :cond_5
    new-instance v3, Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2, p0}, Lcom/miui/gallery/util/DecodeGifImage;-><init>(JLcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;)V

    iput-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    .line 685
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v3}, Lcom/miui/gallery/util/DecodeGifImage;->getFutureTask()Lcom/miui/gallery/util/Future;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    .line 688
    :cond_6
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 677
    .end local v1           #isGif:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 691
    .restart local v1       #isGif:Z
    :cond_8
    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 693
    if-eqz v1, :cond_9

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne p1, v3, :cond_9

    .line 694
    new-instance v3, Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2, p0}, Lcom/miui/gallery/util/DecodeGifImage;-><init>(JLcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;)V

    iput-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    .line 695
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v3}, Lcom/miui/gallery/util/DecodeGifImage;->getFutureTask()Lcom/miui/gallery/util/Future;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    .line 703
    :goto_2
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    goto/16 :goto_0

    .line 698
    :cond_9
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v4, v2}, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/miui/gallery/data/MediaItem;)V

    new-instance v5, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v6

    invoke-direct {v5, p0, v6, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;J)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    goto :goto_2

    .line 707
    :cond_a
    if-ne p2, v8, :cond_b

    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_b

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_b

    .line 711
    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 712
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v6

    invoke-direct {v5, p0, v6, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;J)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 716
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    goto/16 :goto_0

    :cond_b
    move-object v3, v5

    .line 718
    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 422
    if-gez p1, :cond_0

    .line 424
    const-string v1, "PhotoDataAdapter"

    const-string v2, "why the index < 0 ?"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->destroyDecodeGifImage()V

    .line 429
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 430
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 432
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 433
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 435
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 436
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 437
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider()V

    .line 438
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView;->notifyOnNewImage()V

    .line 440
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/miui/gallery/data/Path;)V

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->fireModelInvalidated()V

    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateCurrentTileProvider(JLcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V
    .locals 2
    .parameter "version"
    .parameter "entry"

    .prologue
    .line 232
    if-nez p3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0, p3}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    goto :goto_0
.end method

.method private updateFullImage(JLcom/miui/gallery/util/Future;)V
    .locals 5
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p3, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 318
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eq v2, p3, :cond_2

    .line 319
    :cond_0
    const-string v2, "PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFullImage() simply return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->imageEntryToString(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 323
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 349
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 328
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 330
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_5

    .line 332
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 334
    const/4 v2, 0x3

    iput v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    .line 340
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    if-eqz v2, :cond_3

    .line 341
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    const/4 v3, 0x1

    invoke-interface {v2, p1, p2, v3}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoAvailable(JZ)V

    .line 343
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateCurrentTileProvider(JLcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 348
    :goto_2
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 337
    :cond_4
    const/4 v2, 0x0

    iput v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    goto :goto_1

    .line 346
    :cond_5
    const-string v2, "PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFullImage() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->imageEntryToString(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateImageCache()V
    .locals 12

    .prologue
    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    .line 722
    new-instance v4, Ljava/util/HashSet;

    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 723
    .local v4, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v9, :cond_5

    .line 724
    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v10, v1, 0x20

    aget-object v3, v9, v10

    .line 725
    .local v3, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v3, :cond_0

    move-wide v5, v7

    .line 728
    .local v5, version:J
    :goto_1
    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 723
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v5           #version:J
    :cond_0
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    goto :goto_1

    .line 730
    .restart local v5       #version:J
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 731
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 732
    if-eqz v0, :cond_4

    .line 733
    iget v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 734
    iget-object v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v9, :cond_2

    .line 735
    iget-object v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v9}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 736
    iput-object v11, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 738
    :cond_2
    iput-object v11, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 739
    iget v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v9, v9, -0x3

    iput v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 746
    :cond_3
    :goto_3
    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->mediaItem:Lcom/miui/gallery/data/MediaItem;

    goto :goto_2

    .line 742
    :cond_4
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {v0, v11}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    .line 743
    .restart local v0       #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v9

    iput v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->rotation:I

    .line 744
    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 750
    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v3           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v5           #version:J
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 751
    .local v5, version:Ljava/lang/Long;
    iget-object v7, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 752
    .restart local v0       #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v7}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 753
    :cond_7
    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v7}, Lcom/miui/gallery/util/Future;->cancel()V

    goto :goto_4

    .line 755
    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v5           #version:Ljava/lang/Long;
    :cond_8
    return-void
.end method

.method private updateImageRequests()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 611
    iget-boolean v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 642
    :cond_0
    return-void

    .line 613
    :cond_1
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 614
    .local v1, currentIndex:I
    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v9, v1, 0x20

    aget-object v5, v8, v9

    .line 615
    .local v5, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v9}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 621
    const/4 v7, 0x0

    .line 622
    .local v7, task:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 623
    sget-object v8, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 624
    .local v6, offset:I
    sget-object v8, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 625
    .local v0, bit:I
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/miui/gallery/util/Future;

    move-result-object v7

    .line 626
    if-eqz v7, :cond_5

    .line 630
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 631
    .local v2, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v8, :cond_4

    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eq v8, v7, :cond_4

    .line 632
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v8}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 633
    iput-object v10, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    .line 634
    iget v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 636
    :cond_4
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eq v8, v7, :cond_3

    .line 637
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v8}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 638
    iput-object v10, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 639
    iget v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    goto :goto_1

    .line 622
    .end local v2           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v0       #bit:I
    .restart local v6       #offset:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateScreenNail(JLcom/miui/gallery/util/Future;)V
    .locals 6
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v5, 0x0

    .line 256
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 257
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v2, 0x0

    .line 263
    .local v2, shouldUpdate:Z
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v3}, Lcom/miui/gallery/util/DecodeGifImage;->getFutureTask()Lcom/miui/gallery/util/Future;

    move-result-object v3

    if-eq p3, v3, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-ne p3, v3, :cond_3

    .line 265
    :cond_2
    const/4 v2, 0x1

    .line 267
    :cond_3
    if-nez v2, :cond_4

    .line 272
    const-string v3, "PhotoDataAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreenNail() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->imageEntryToString(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_4
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    .line 277
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    .line 278
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->mediaItem:Lcom/miui/gallery/data/MediaItem;

    iget-object v4, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/app/PhotoDataAdapter;->getFullScreenForMicroThumbnail(Lcom/miui/gallery/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    .line 280
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    .line 281
    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    .line 286
    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_6

    .line 288
    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 313
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 292
    :cond_6
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateCurrentTileProvider(JLcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 299
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoView;->retrieveSavedPosition()Lcom/miui/gallery/ui/PositionRepository$Position;

    goto :goto_1

    .line 302
    :cond_7
    iput v5, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    .line 303
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    if-eqz v3, :cond_8

    .line 304
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    invoke-interface {v3, p1, p2, v5}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoAvailable(JZ)V

    .line 306
    :cond_8
    const/4 v1, -0x1

    .local v1, i:I
    :goto_2
    const/4 v3, 0x1

    if-gt v1, v3, :cond_5

    .line 307
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_a

    .line 308
    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 309
    :cond_9
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 306
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 584
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v2

    .line 586
    .local v2, start:I
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 588
    .local v0, end:I
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iput v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .line 591
    iput v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    .line 594
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x10

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v2

    .line 596
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 597
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 599
    :cond_2
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    .line 600
    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    .line 601
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 599
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    :cond_5
    iput v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .line 605
    iput v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    .line 606
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 4

    .prologue
    .line 549
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 550
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TileImageViewAdapter;->clear()V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 558
    iget-object v2, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    .line 559
    .local v2, screenNail:Landroid/graphics/Bitmap;
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 560
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_2

    .line 561
    if-eqz v0, :cond_1

    .line 562
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 564
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 567
    .local v3, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 568
    .local v1, height:I
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 571
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->clear()V

    .line 576
    iget v4, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failCounter:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 577
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setFailedToLoad()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->clear()V

    .line 397
    return-void
.end method

.method public getBackupImage()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 460
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 463
    const/4 v2, 0x0

    .line 472
    :goto_0
    return-object v2

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 467
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v1, :cond_1

    move-object v2, v0

    .line 468
    goto :goto_0

    .line 471
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getFullScreenForMicroThumbnail(Lcom/miui/gallery/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 472
    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v1, v1, 0x20

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation()I
    .locals 4

    .prologue
    .line 503
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 504
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->rotation:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getImage(I)Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getImage(I)Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedToLoad()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->isFailedToLoad()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 448
    return-void
.end method

.method public notifyDirty()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    .line 355
    :cond_0
    return-void
.end method

.method public onUpdateGifFrame(JLcom/miui/gallery/util/Future;)V
    .locals 0
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateScreenNail(JLcom/miui/gallery/util/Future;)V

    .line 229
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 377
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    .line 379
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 380
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    .line 382
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 384
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 385
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v2}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 386
    :cond_1
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v2}, Lcom/miui/gallery/util/Future;->cancel()V

    goto :goto_0

    .line 388
    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 392
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->destroyDecodeGifImage()V

    .line 393
    return-void
.end method

.method public previous()V
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 452
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 360
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 361
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 363
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    .line 364
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 366
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->notifyModelInvalidated()V

    .line 367
    return-void
.end method

.method public setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V
    .locals 3
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 536
    iput p2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 537
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 538
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 539
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->fireModelInvalidated()V

    .line 542
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 543
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    .line 225
    return-void
.end method
