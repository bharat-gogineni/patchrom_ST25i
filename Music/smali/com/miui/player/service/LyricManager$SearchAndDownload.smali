.class Lcom/miui/player/service/LyricManager$SearchAndDownload;
.super Ljava/lang/Object;
.source "LyricManager.java"

# interfaces
.implements Lcom/miui/player/service/LyricManager$LyricCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/LyricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchAndDownload"
.end annotation


# instance fields
.field private final mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)V
    .locals 0
    .parameter "searchInfo"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/miui/player/service/LyricManager$SearchAndDownload;->mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    .line 168
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 1
    .parameter "context"
    .parameter "cbk"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$SearchAndDownload;->mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/LyricManager$SearchAndDownload;->mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$SearchAndDownload;->mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-static {p1, v0, p2}, Lcom/miui/player/network/LyricDownloader;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z

    move-result v0

    goto :goto_0
.end method
