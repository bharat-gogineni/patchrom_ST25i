.class public abstract Lcom/miui/gallery/cloud/SyncCloudBase;
.super Ljava/lang/Object;
.source "SyncCloudBase.java"

# interfaces
.implements Lcn/kuaipan/kss/KssDef$OnUpDownload;


# instance fields
.field protected mClient:Lorg/apache/http/client/HttpClient;

.field protected mContext:Landroid/content/Context;

.field protected mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V
    .locals 0
    .parameter "context"
    .parameter "client"
    .parameter "syncStateManager"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mClient:Lorg/apache/http/client/HttpClient;

    .line 25
    iput-object p3, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    .line 26
    return-void
.end method


# virtual methods
.method public OnTransData(I)Z
    .locals 1
    .parameter "transLen"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/SyncStateManager;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnTransFail(I)Z
    .locals 1
    .parameter "tryTransCount"

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method protected checkState(IZ)I
    .locals 1
    .parameter "checkType"
    .parameter "isBackground"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncCloudBase;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I

    move-result v0

    return v0
.end method

.method public abstract execute(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;Z)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
