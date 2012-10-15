.class Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareInfo"
.end annotation


# instance fields
.field public final isFirst:Z

.field public final nextAudioId:J

.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;

.field public final trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/MediaPlaybackService;ZJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "isFirstA"
    .parameter "nextAudioIdA"
    .parameter "trackNameA"

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1661
    iput-boolean p2, p0, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->isFirst:Z

    .line 1662
    iput-wide p3, p0, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    .line 1663
    iput-object p5, p0, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->trackName:Ljava/lang/String;

    .line 1664
    return-void
.end method
