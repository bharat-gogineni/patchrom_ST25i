.class Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferedPosChangedNotifierForWidget"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;)V
    .locals 0
    .parameter

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;->this$1:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(F)V
    .locals 2
    .parameter "bufferedPer"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;->this$1:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1826
    return-void
.end method
