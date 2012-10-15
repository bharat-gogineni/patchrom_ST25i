.class Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapterBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
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
        "Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-wide p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->mVersion:J

    .line 242
    return-void
.end method

.method private getInvalidIndex(J)I
    .locals 7
    .parameter "version"

    .prologue
    .line 245
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSetVersion:[J
    invoke-static {v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$200(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J

    move-result-object v4

    .line 246
    .local v4, setVersion:[J
    array-length v2, v4

    .line 247
    .local v2, length:I
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v0, v5, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    .local v0, i:I
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v3, v5, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 248
    rem-int v1, v0, v2

    .line 249
    .local v1, index:I
    aget-wide v5, v4, v1

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    .line 253
    .end local v0           #i:I
    .end local v1           #index:I
    :goto_1
    return v0

    .line 247
    .restart local v0       #i:I
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v1           #index:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public call()Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    iget-wide v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->mVersion:J

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->getInvalidIndex(J)I

    move-result v0

    .line 259
    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-wide v2, v2, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSourceVersion:J

    iget-wide v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->mVersion:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 264
    :goto_0
    return-object v1

    .line 260
    :cond_0
    new-instance v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;

    invoke-direct {v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;-><init>()V

    .line 261
    .local v1, info:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-wide v2, v2, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSourceVersion:J

    iput-wide v2, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->version:J

    .line 262
    iput v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    .line 263
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I
    invoke-static {v2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I

    move-result v2

    iput v2, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->size:I

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
    .line 236
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;->call()Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
