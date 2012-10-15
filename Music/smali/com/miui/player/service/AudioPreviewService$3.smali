.class Lcom/miui/player/service/AudioPreviewService$3;
.super Ljava/lang/Object;
.source "AudioPreviewService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/AudioPreviewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/AudioPreviewService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/AudioPreviewService;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/miui/player/service/AudioPreviewService$3;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$3;->this$0:Lcom/miui/player/service/AudioPreviewService;

    iput-boolean v2, v0, Lcom/miui/player/service/AudioPreviewService;->mPrepared:Z

    .line 315
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$3;->this$0:Lcom/miui/player/service/AudioPreviewService;

    const-string v1, "oneshot_play_error"

    invoke-virtual {v0, v1}, Lcom/miui/player/service/AudioPreviewService;->notifyStatus(Ljava/lang/String;)V

    .line 316
    return v2
.end method
