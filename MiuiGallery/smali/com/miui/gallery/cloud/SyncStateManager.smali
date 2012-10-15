.class public Lcom/miui/gallery/cloud/SyncStateManager;
.super Ljava/lang/Object;
.source "SyncStateManager.java"


# static fields
.field private static LOG_ENABLE:Z

.field private static sUINewPush:I


# instance fields
.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/cloud/SyncStateManager;->sUINewPush:I

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncStateManager;->mContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/SyncStateManager;->mCanceled:Z

    .line 39
    return-void
.end method

.method private getDesStr(I)Ljava/lang/String;
    .locals 1
    .parameter "downloadType"

    .prologue
    .line 160
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 161
    const-string v0, "\u4e0b\u8f7d\u5927\u56fe"

    .line 172
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 163
    const-string v0, "\u4e0b\u8f7d\u7f29\u7565\u56fe"

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 165
    const-string v0, "\u4e0b\u8f7d\u539f\u56fe"

    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 167
    const-string v0, "\u4e0a\u4f20\u5386\u53f2\u56fe\u7247"

    goto :goto_0

    .line 168
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 169
    const-string v0, "\u4e0a\u4f20\u65b0\u62cd\u6444\u7684\u7167\u7247"

    goto :goto_0

    .line 172
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized isUINewPush(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 70
    const-class v1, Lcom/miui/gallery/cloud/SyncStateManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/miui/gallery/cloud/SyncStateManager;->sUINewPush:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setUINewPush(IZ)V
    .locals 3
    .parameter "type"
    .parameter "uiNewPush"

    .prologue
    .line 57
    const-class v1, Lcom/miui/gallery/cloud/SyncStateManager;

    monitor-enter v1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 67
    :goto_0
    monitor-exit v1

    return-void

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    .line 63
    :try_start_0
    sget v0, Lcom/miui/gallery/cloud/SyncStateManager;->sUINewPush:I

    or-int/2addr v0, p0

    sput v0, Lcom/miui/gallery/cloud/SyncStateManager;->sUINewPush:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 65
    :cond_1
    :try_start_1
    sget v0, Lcom/miui/gallery/cloud/SyncStateManager;->sUINewPush:I

    xor-int/lit8 v2, p0, -0x1

    and-int/2addr v0, v2

    sput v0, Lcom/miui/gallery/cloud/SyncStateManager;->sUINewPush:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkNetState(IZ)I
    .locals 7
    .parameter "checkType"
    .parameter "isBackground"

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncStateManager;->isCanceled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 83
    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_4

    if-eqz p2, :cond_4

    :cond_2
    :try_start_1
    sget-boolean v4, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sPlugged:Z

    if-nez v4, :cond_4

    .line 86
    sget-boolean v3, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    if-eqz v3, :cond_3

    .line 87
    const-string v3, "SyncStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u540e\u53f0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/SyncStateManager;->getDesStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6ca1\u6709\u5145\u7535\uff0c\u9000\u51fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 93
    :cond_4
    if-eqz p2, :cond_7

    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_7

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->isUIDownloading()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 95
    sget-boolean v3, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    if-eqz v3, :cond_6

    .line 96
    const-string v3, "SyncStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/SyncStateManager;->getDesStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u524d\u53f0\u5f00\u59cb\u4e0b\u8f7d\uff0c\u540e\u53f0\u9000\u51fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    goto :goto_0

    .line 102
    :cond_7
    if-nez p2, :cond_a

    if-eq p1, v5, :cond_8

    if-ne p1, v6, :cond_a

    :cond_8
    invoke-static {p1}, Lcom/miui/gallery/cloud/SyncStateManager;->isUINewPush(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 104
    sget-boolean v2, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    if-eqz v2, :cond_9

    .line 105
    const-string v2, "SyncStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u524d\u53f0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/SyncStateManager;->getDesStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6216\u8005\u6eda\u52a8\u5c4f\u5e55\uff0c\u505c\u6b62\u6b63\u5728\u7684\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v2, v3

    .line 107
    goto/16 :goto_0

    .line 111
    :cond_a
    if-nez p2, :cond_c

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->isUIDownloading()Z

    move-result v4

    if-nez v4, :cond_c

    .line 112
    sget-boolean v3, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    if-eqz v3, :cond_b

    .line 113
    const-string v3, "SyncStateManager"

    const-string v4, "\u9000\u51faalbumlist view\uff0c\u7f29\u7565\u56fe\u4e0b\u8f7d\u505c\u6b62"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_b
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    goto/16 :goto_0

    .line 119
    :cond_c
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncStateManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/gallery/cloud/CloudUtils;->getNetState(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object v0

    .line 121
    .local v0, netState:Lcn/kuaipan/kss/KssDef$NetState;
    sget-object v4, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    if-ne v0, v4, :cond_d

    .line 122
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 125
    :cond_d
    if-eq p1, v6, :cond_e

    if-ne p1, v5, :cond_10

    :cond_e
    if-eqz p2, :cond_10

    .line 127
    sget-boolean v3, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    if-eqz v3, :cond_f

    .line 128
    const-string v3, "SyncStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u540e\u53f0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/SyncStateManager;->getDesStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6ca1\u6709wifi \u505c\u6b62"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_f
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    goto/16 :goto_0

    .line 135
    :cond_10
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->onlySyncInWifi()Z

    move-result v1

    .line 136
    .local v1, syncOnlyWifi:Z
    if-eqz v1, :cond_13

    .line 138
    if-eq p1, v2, :cond_11

    if-ne p1, v3, :cond_14

    .line 140
    :cond_11
    sget-boolean v3, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    if-eqz v3, :cond_12

    .line 141
    const-string v3, "SyncStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u540e\u53f0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/SyncStateManager;->getDesStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4ec5\u5728wifi \u4e0b\u540c\u6b65\u5f00\u542f\uff0c\u9000\u51fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_12
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    goto/16 :goto_0

    .line 147
    :cond_13
    if-ne p1, v3, :cond_14

    sget-boolean v3, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sPlugged:Z

    if-nez v3, :cond_14

    .line 148
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->setCanceled(Z)V

    .line 149
    sget-boolean v3, Lcom/miui/gallery/cloud/SyncStateManager;->LOG_ENABLE:Z

    if-eqz v3, :cond_0

    .line 150
    const-string v3, "SyncStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u540e\u53f0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/SyncStateManager;->getDesStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7531\u4e8e\u6ca1\u6709\u5145\u7535\uff0c \u6240\u4ee52G/3G \u4e0a\u4f20\u9000\u51fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 156
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized checkState(IZ)I
    .locals 2
    .parameter "checkType"
    .parameter "isBackground"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncStateManager;->checkNetState(IZ)I

    move-result v0

    .line 186
    .local v0, result:I
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncStateManager;->isCanceled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x2

    .line 189
    :cond_0
    monitor-exit p0

    return v0

    .line 185
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/SyncStateManager;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/SyncStateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/provider/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanceled(Z)V
    .locals 0
    .parameter "canceled"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/SyncStateManager;->mCanceled:Z

    .line 75
    return-void
.end method
