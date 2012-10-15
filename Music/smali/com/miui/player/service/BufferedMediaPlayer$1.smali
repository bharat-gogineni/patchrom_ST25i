.class Lcom/miui/player/service/BufferedMediaPlayer$1;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/BufferedMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer;

.field final synthetic val$l:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer$1;->val$l:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/service/OnlinePlayStatstics;->setAutoSkip(Z)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$1;->val$l:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$1;->val$l:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 523
    :cond_1
    return-void
.end method
