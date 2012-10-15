.class Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-wide p2, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->mVersion:J

    .line 276
    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x40

    .line 280
    new-instance v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    invoke-direct {v2}, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;-><init>()V

    .line 281
    .local v2, info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    iget-wide v5, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->mVersion:J

    .line 282
    .local v5, version:J
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-wide v7, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceVersion:J

    iput-wide v7, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    .line 283
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v7, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mSize:I

    iput v7, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    .line 284
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v4, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mSetVersion:[J

    .line 288
    .local v4, setVersion:[J
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveStart:I
    invoke-static {v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$200(Lcom/miui/gallery/app/AlbumDataAdapter;)I

    move-result v0

    .local v0, i:I
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v3, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mActiveEnd:I

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 289
    rem-int/lit16 v1, v0, 0x3e8

    .line 290
    .local v1, index:I
    aget-wide v7, v4, v1

    cmp-long v7, v7, v5

    if-eqz v7, :cond_1

    .line 291
    iput v0, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    .line 292
    sub-int v7, v3, v0

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadCount:I

    .line 307
    .end local v1           #index:I
    .end local v2           #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    :cond_0
    :goto_1
    return-object v2

    .line 288
    .restart local v1       #index:I
    .restart local v2       #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v1           #index:I
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v0, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentStart:I

    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget v3, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mContentEnd:I

    :goto_2
    if-ge v0, v3, :cond_4

    .line 298
    rem-int/lit16 v1, v0, 0x3e8

    .line 299
    .restart local v1       #index:I
    aget-wide v7, v4, v1

    cmp-long v7, v7, v5

    if-eqz v7, :cond_3

    .line 300
    iput v0, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    .line 301
    sub-int v7, v3, v0

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v2, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadCount:I

    goto :goto_1

    .line 297
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 307
    .end local v1           #index:I
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-wide v7, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mSourceVersion:J

    iget-wide v9, p0, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->mVersion:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;->call()Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
