.class Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;
.super Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDownloadTask"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mModifyId3Success:Z

.field private final mTrackId:J

.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;ZJJ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "metaInfo"
    .parameter "searchInfo"
    .parameter "modifyId3Success"
    .parameter "trackId"
    .parameter "albumId"

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    .line 1627
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;-><init>(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)V

    .line 1628
    iput-boolean p5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mModifyId3Success:Z

    .line 1629
    iput-wide p6, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mTrackId:J

    .line 1630
    iput-wide p8, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mAlbumId:J

    .line 1631
    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1635
    invoke-super {p0, p1}, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1637
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1639
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iput-object v5, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-wide v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mTrackId:J

    iget-wide v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mAlbumId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/meta/AlbumManager;->getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v0

    .line 1643
    if-eqz v0, :cond_3

    .line 1644
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 1645
    :cond_1
    new-instance p1, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p1, v1, v5}, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;-><init>(Ljava/util/ArrayList;Lcom/miui/player/plugin/onlineimage/ImageProvider;)V

    .line 1648
    :cond_2
    iget-object v1, p1, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 1652
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v1, 0x7f09009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1679
    :cond_5
    :goto_0
    return-void

    .line 1658
    :cond_6
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v1, v0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mAlbumName:Ljava/lang/String;

    .line 1659
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v0, v0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mArtistName:Ljava/lang/String;

    .line 1660
    iget-boolean v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mModifyId3Success:Z

    if-eqz v2, :cond_7

    .line 1661
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v1, v0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mAlbumName:Ljava/lang/String;

    .line 1662
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mSearchInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v0, v0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mArtistName:Ljava/lang/String;

    .line 1664
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1668
    :cond_8
    const-string v2, "album"

    invoke-static {v1, v0, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1670
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1671
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-class v5, Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1672
    const-string v4, "search_result"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1673
    const-string v4, "save_path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    const-string v2, "album"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    const-string v1, "artist"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1676
    const-string v0, "raw_album"

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v1, v1, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    const-string v0, "raw_artist"

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mMetaInfo:Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v1, v1, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1678
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/16 v1, 0x1f

    invoke-virtual {v0, v3, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1620
    check-cast p1, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->onPostExecute(Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;)V

    return-void
.end method
