.class Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "HomeRecentAlbumDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
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
        "Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-wide p2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->mVersion:J

    .line 258
    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 6
    .parameter "version"

    .prologue
    .line 261
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSetVersion:[J
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[J

    move-result-object v3

    .line 262
    .local v3, setVersion:[J
    array-length v1, v3

    .line 263
    .local v1, length:I
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$500(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v0

    .local v0, i:I
    iget-object v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I
    invoke-static {v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 264
    rem-int v4, v0, v1

    aget-wide v4, v3, v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    .line 266
    .end local v0           #i:I
    :goto_1
    return v0

    .line 263
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-wide v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    .line 272
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceVersion:J
    invoke-static {v3}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$700(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v1, v2

    .line 277
    :goto_0
    return-object v1

    .line 273
    :cond_0
    new-instance v1, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;

    invoke-direct {v1, v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V

    .line 274
    .local v1, info:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
    iget-object v2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceVersion:J
    invoke-static {v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$700(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->version:J

    .line 275
    iput v0, v1, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    .line 276
    iget-object v2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I
    invoke-static {v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->size:I

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;->call()Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
