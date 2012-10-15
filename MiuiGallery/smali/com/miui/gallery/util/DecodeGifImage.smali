.class public Lcom/miui/gallery/util/DecodeGifImage;
.super Ljava/lang/Object;
.source "DecodeGifImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;,
        Lcom/miui/gallery/util/DecodeGifImage$FutureTask;
    }
.end annotation


# instance fields
.field final mFinishPlayOneFrame:Ljava/lang/Runnable;

.field private mFrameIndex:I

.field private mFutureTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mGifFrameListener:Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHelper:Lmiui/util/DecodeGifImageHelper;

.field final mStartDecode:Ljava/lang/Runnable;

.field private mVersion:J


# direct methods
.method public constructor <init>(JLcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;)V
    .locals 4
    .parameter "version"
    .parameter "item"
    .parameter "listener"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lmiui/util/DecodeGifImageHelper;

    invoke-direct {v0}, Lmiui/util/DecodeGifImageHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/miui/gallery/util/DecodeGifImage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/DecodeGifImage$1;-><init>(Lcom/miui/gallery/util/DecodeGifImage;)V

    iput-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFinishPlayOneFrame:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/miui/gallery/util/DecodeGifImage$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/DecodeGifImage$2;-><init>(Lcom/miui/gallery/util/DecodeGifImage;)V

    iput-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mStartDecode:Ljava/lang/Runnable;

    .line 118
    iput-wide p1, p0, Lcom/miui/gallery/util/DecodeGifImage;->mVersion:J

    .line 119
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;

    iput-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mGifFrameListener:Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;

    .line 120
    instance-of v0, p3, Lcom/miui/gallery/data/UriImage;

    if-eqz v0, :cond_1

    move-object v0, p3

    .line 121
    check-cast v0, Lcom/miui/gallery/data/UriImage;

    invoke-virtual {v0}, Lcom/miui/gallery/data/UriImage;->isSchemeFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    new-instance v1, Lmiui/util/InputStreamLoader;

    invoke-virtual {p3}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/util/DecodeGifImageHelper;->mGifSource:Lmiui/util/InputStreamLoader;

    .line 132
    :goto_0
    new-instance v0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;-><init>(Lcom/miui/gallery/util/DecodeGifImage;Lcom/miui/gallery/util/DecodeGifImage$1;)V

    iput-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFutureTask:Lcom/miui/gallery/util/Future;

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    const-wide/32 v1, 0x200000

    iput-wide v1, v0, Lmiui/util/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage;->mStartDecode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    new-instance v1, Lmiui/util/InputStreamLoader;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Lcom/miui/gallery/data/MediaItem;->getContentUriForGallery()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, v0, Lmiui/util/DecodeGifImageHelper;->mGifSource:Lmiui/util/InputStreamLoader;

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    new-instance v1, Lmiui/util/InputStreamLoader;

    invoke-virtual {p3}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/util/DecodeGifImageHelper;->mGifSource:Lmiui/util/InputStreamLoader;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/DecodeGifImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/util/DecodeGifImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I

    return p1
.end method

.method static synthetic access$108(Lcom/miui/gallery/util/DecodeGifImage;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/DecodeGifImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/DecodeGifImage;)Lcom/miui/gallery/util/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFutureTask:Lcom/miui/gallery/util/Future;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/util/DecodeGifImage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mVersion:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/util/DecodeGifImage;)Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mGifFrameListener:Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;

    return-object v0
.end method


# virtual methods
.method public getFutureTask()Lcom/miui/gallery/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFutureTask:Lcom/miui/gallery/util/Future;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/miui/gallery/util/DecodeGifImage;->mVersion:J

    return-wide v0
.end method

.method protected handleFirstDecodeResult(Lmiui/util/DecodeGifImageHelper$GifDecodeResult;)Z
    .locals 9
    .parameter "decodeResult"

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v6, p1, Lmiui/util/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiui/util/GifDecoder;

    if-eqz v6, :cond_0

    iget-boolean v6, p1, Lmiui/util/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    if-nez v6, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v5

    .line 155
    :cond_1
    iget-object v3, p1, Lmiui/util/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiui/util/GifDecoder;

    .line 156
    .local v3, gifDecoder:Lmiui/util/GifDecoder;
    iget-object v6, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    invoke-virtual {v3}, Lmiui/util/GifDecoder;->isDecodeToTheEnd()Z

    move-result v7

    iput-boolean v7, v6, Lmiui/util/DecodeGifImageHelper;->mDecodedAllFrames:Z

    .line 157
    invoke-virtual {v3}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v1

    .line 158
    .local v1, count:I
    if-lez v1, :cond_0

    .line 162
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 163
    invoke-virtual {v3, v4}, Lmiui/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4}, Lmiui/util/GifDecoder;->getDelay(I)I

    move-result v2

    .line 165
    .local v2, duration:I
    iget-object v5, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    iget-object v5, v5, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v6, Lmiui/util/DecodeGifImageHelper$GifFrame;

    invoke-direct {v6, v0, v2, v4}, Lmiui/util/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #duration:I
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/util/DecodeGifImage;->mGifFrameListener:Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;

    iget-wide v6, p0, Lcom/miui/gallery/util/DecodeGifImage;->mVersion:J

    iget-object v8, p0, Lcom/miui/gallery/util/DecodeGifImage;->mFutureTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v5, v6, v7, v8}, Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;->onUpdateGifFrame(JLcom/miui/gallery/util/Future;)V

    .line 170
    iget-object v5, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    iget-boolean v5, v5, Lmiui/util/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-nez v5, :cond_3

    .line 171
    iget-object v5, p0, Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;

    invoke-virtual {v5}, Lmiui/util/DecodeGifImageHelper;->firstDecodeNextFrames()V

    .line 174
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method
