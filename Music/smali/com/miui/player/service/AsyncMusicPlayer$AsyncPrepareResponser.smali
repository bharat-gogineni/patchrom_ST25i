.class public interface abstract Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncPrepareResponser"
.end annotation


# virtual methods
.method public abstract onPrepareFailed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V
.end method

.method public abstract onPrepareSuccess(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onSeeked(I)V
.end method

.method public abstract prepareAsync(Lcom/miui/player/service/BufferedMediaPlayer;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/miui/player/service/OnlinePlayDeniedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
