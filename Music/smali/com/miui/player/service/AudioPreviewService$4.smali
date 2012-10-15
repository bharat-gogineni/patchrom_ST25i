.class Lcom/miui/player/service/AudioPreviewService$4;
.super Ljava/lang/Object;
.source "AudioPreviewService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 321
    iput-object p1, p0, Lcom/miui/player/service/AudioPreviewService$4;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    const/4 v2, 0x0

    .line 325
    invoke-static {v2}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->setOneShot(Z)V

    .line 326
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$4;->this$0:Lcom/miui/player/service/AudioPreviewService;

    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService$4;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v1}, Lcom/miui/player/service/AudioPreviewService;->duration()I

    move-result v1

    iput v1, v0, Lcom/miui/player/service/AudioPreviewService;->mCachedPosition:I

    .line 327
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$4;->this$0:Lcom/miui/player/service/AudioPreviewService;

    iput-boolean v2, v0, Lcom/miui/player/service/AudioPreviewService;->mSupposedToBePlaying:Z

    .line 328
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$4;->this$0:Lcom/miui/player/service/AudioPreviewService;

    const-string v1, "oneshot_playstate_changed"

    invoke-virtual {v0, v1}, Lcom/miui/player/service/AudioPreviewService;->notifyStatus(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$4;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->gotoBackground()V

    .line 330
    return-void
.end method
