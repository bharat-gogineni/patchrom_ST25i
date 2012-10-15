.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricChooseRunnable"
.end annotation


# instance fields
.field final mArtistName:Ljava/lang/String;

.field final mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

.field final mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "track"
    .parameter "artist"
    .parameter "provider"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/player/plugin/onlinelyric/LyricProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p5, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    iput-object p2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mTrackName:Ljava/lang/String;

    .line 1523
    iput-object p3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mArtistName:Ljava/lang/String;

    .line 1524
    iput-object p4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    .line 1525
    iput-object p5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    .line 1526
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1530
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1531
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1532
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1535
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1536
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v3, 0x7f09008a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1569
    :goto_0
    return-void

    .line 1540
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_3

    .line 1541
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1544
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 1545
    .local v1, names:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_5

    .line 1546
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 1547
    .local v8, item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    invoke-virtual {v8}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v6

    .line 1548
    .local v6, artist:Ljava/lang/String;
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getTrack()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    if-eqz v6, :cond_4

    .end local v6           #artist:Ljava/lang/String;
    :goto_3
    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1545
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1548
    .restart local v6       #artist:Ljava/lang/String;
    :cond_4
    const-string v6, ""

    goto :goto_3

    .line 1551
    .end local v6           #artist:Ljava/lang/String;
    .end local v8           #item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    :cond_5
    new-instance v0, Lcom/miui/player/ui/SingleChoiceDialog;

    new-instance v2, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)V

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v4, -0x1

    const v5, 0x7f090097

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/SingleChoiceDialog;-><init>([Ljava/lang/CharSequence;Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;Landroid/content/Context;II)V

    .line 1568
    .local v0, scd:Lcom/miui/player/ui/SingleChoiceDialog;
    invoke-virtual {v0}, Lcom/miui/player/ui/SingleChoiceDialog;->show()V

    goto :goto_0
.end method
