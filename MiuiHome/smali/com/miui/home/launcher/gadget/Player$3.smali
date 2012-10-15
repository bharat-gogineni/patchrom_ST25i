.class Lcom/miui/home/launcher/gadget/Player$3;
.super Landroid/content/BroadcastReceiver;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mFadeAnimation:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Player;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 3
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 524
    new-instance v0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1400(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;-><init>(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$3;->mFadeAnimation:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    return-void
.end method

.method private isTrackEqual(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 526
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, trackNameStr:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, artistNameStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1500(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1500(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1600(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 533
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    const-string v8, "track"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/miui/home/launcher/gadget/Player;->checkException(Ljava/lang/String;)Z
    invoke-static {v5, v8}, Lcom/miui/home/launcher/gadget/Player;->access$1700(Lcom/miui/home/launcher/gadget/Player;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const-string v5, "oneshot"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 538
    .local v2, isOneShot:Z
    if-nez v2, :cond_0

    .line 542
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/gadget/Player$3;->isTrackEqual(Landroid/content/Intent;)Z

    move-result v3

    .line 544
    .local v3, isTrackEqual:Z
    const-string v5, "com.miui.player.metachanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 545
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-virtual {v5, p2}, Lcom/miui/home/launcher/gadget/Player;->updateByChannel(Landroid/content/Intent;)V

    .line 546
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 547
    const-string v5, "other"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, extra:Ljava/lang/String;
    const-string v5, "meta_changed_track"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 549
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateTrack(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1900(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 550
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    move-result-object v8

    if-nez v3, :cond_4

    move v5, v6

    :goto_1
    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->updateAlbumStatus(Landroid/content/Intent;Z)V
    invoke-static {v8, p2, v5}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$2100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V

    .line 551
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    move-result-object v5

    if-nez v3, :cond_2

    move v7, v6

    :cond_2
    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V
    invoke-static {v5, p2, v7}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$2300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    .line 566
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2500(Lcom/miui/home/launcher/gadget/Player;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 567
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->mFadeAnimation:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->prepareUpdate()V

    goto :goto_0

    :cond_4
    move v5, v7

    .line 550
    goto :goto_1

    .line 552
    :cond_5
    if-eqz v3, :cond_0

    .line 553
    const-string v5, "meta_changed_buffer"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 554
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/miui/home/launcher/gadget/Player;->access$2400(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 555
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    move-result-object v5

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V
    invoke-static {v5, p2, v7}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$2300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 557
    :cond_6
    const-string v5, "meta_changed_album"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 558
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    move-result-object v5

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->updateAlbumStatus(Landroid/content/Intent;Z)V
    invoke-static {v5, p2, v6}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$2100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V

    goto :goto_2

    .line 559
    :cond_7
    const-string v5, "meta_changed_lyric"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 560
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    move-result-object v5

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V
    invoke-static {v5, p2, v6}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$2300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    goto :goto_2

    .line 569
    :cond_8
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    move-result-object v5

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->setTrackChange(Z)V
    invoke-static {v5, v6}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$2600(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Z)V

    goto/16 :goto_0

    .line 571
    .end local v1           #extra:Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_0

    .line 572
    const-string v5, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 574
    :cond_a
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 575
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2700(Lcom/miui/home/launcher/gadget/Player;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 576
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.miui.player.requestprogress"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v4, requestIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$2800(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 579
    .end local v4           #requestIntent:Landroid/content/Intent;
    :cond_b
    const-string v5, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 580
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/miui/home/launcher/gadget/Player;->access$2400(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 581
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 582
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateLyricAndTime()V
    invoke-static {v5}, Lcom/miui/home/launcher/gadget/Player;->access$1200(Lcom/miui/home/launcher/gadget/Player;)V

    goto/16 :goto_0
.end method
