.class public Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;
.super Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
.source "LyricDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/LyricDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricAsyncSaveCallback"
.end annotation


# instance fields
.field final mArtistName:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "track"
    .parameter "artist"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mTrackName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mArtistName:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public isAutoChoose()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-virtual {v1}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getContent()Lcom/miui/player/plugin/onlinelyric/LyricContent;

    move-result-object v0

    .line 61
    .local v0, content:Lcom/miui/player/plugin/onlinelyric/LyricContent;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mTrackName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;->mArtistName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/miui/player/service/LyricManager;->saveLyricFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricContent;)Z

    .line 65
    .end local v0           #content:Lcom/miui/player/plugin/onlinelyric/LyricContent;
    :cond_0
    return-void
.end method
