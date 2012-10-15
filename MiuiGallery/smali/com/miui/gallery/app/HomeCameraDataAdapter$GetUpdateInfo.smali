.class Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "HomeCameraDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;
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
        "Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-wide p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->mVersion:J

    .line 243
    return-void
.end method


# virtual methods
.method public call()Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 247
    new-instance v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;

    invoke-direct {v2, v8}, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V

    .line 248
    .local v2, info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    iget-wide v5, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->mVersion:J

    .line 249
    .local v5, version:J
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)J

    move-result-wide v9

    iput-wide v9, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->version:J

    .line 250
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v7

    iput v7, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->size:I

    .line 251
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J

    move-result-object v4

    .line 254
    .local v4, setVersion:[J
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v7

    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I
    invoke-static {v9}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$900(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v9

    if-gt v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 255
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1000(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v0

    .local v0, i:I
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 256
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$900(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v7

    rem-int v1, v0, v7

    .line 257
    .local v1, index:I
    aget-wide v9, v4, v1

    cmp-long v7, v9, v5

    if-eqz v7, :cond_2

    .line 258
    iput v0, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadStart:I

    .line 260
    sub-int v7, v3, v0

    iput v7, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadCount:I

    .line 266
    .end local v1           #index:I
    .end local v2           #info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    :cond_0
    :goto_2
    return-object v2

    .line 254
    .end local v0           #i:I
    .end local v3           #n:I
    .restart local v2       #info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 255
    .restart local v0       #i:I
    .restart local v1       #index:I
    .restart local v3       #n:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v1           #index:I
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)J

    move-result-wide v9

    iget-wide v11, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->mVersion:J

    cmp-long v7, v9, v11

    if-nez v7, :cond_0

    move-object v2, v8

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;->call()Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
