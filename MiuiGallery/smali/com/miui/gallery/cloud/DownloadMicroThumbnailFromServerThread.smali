.class public Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;
.super Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;
.source "DownloadMicroThumbnailFromServerThread.java"


# static fields
.field private static mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V
    .locals 0
    .parameter "context"
    .parameter "account"
    .parameter "extToken"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/DownloadFromServerThreadBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V

    .line 19
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "extToken"

    .prologue
    .line 23
    sget-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V

    sput-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    .line 25
    const-string v0, "SyncStateManager"

    const-string v1, "\u5f00\u542f\u524d\u53f0\u4e0b\u8f7d\u7f29\u7565\u56fe"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->start()V

    .line 28
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->resetSyncStateManager()V

    .line 29
    sget-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    return-object v0
.end method


# virtual methods
.method protected download(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;)I
    .locals 7
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "DownloadMicroThumbnailFromServerThread"

    const-string v1, "download micro thumbnails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/DownloadFromServer;->downloadMicroThumbnailFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Z)I

    move-result v6

    .line 38
    .local v6, result:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_0

    .line 39
    const-string v0, "DownloadMicroThumbnailFromServerThread"

    const-string v1, "micro thumbnails download exit, end the thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->interrupt()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->mInstance:Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    .line 43
    :cond_0
    return v6
.end method
