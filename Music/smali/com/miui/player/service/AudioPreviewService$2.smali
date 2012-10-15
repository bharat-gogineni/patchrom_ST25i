.class Lcom/miui/player/service/AudioPreviewService$2;
.super Ljava/lang/Object;
.source "AudioPreviewService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 297
    iput-object p1, p0, Lcom/miui/player/service/AudioPreviewService$2;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$2;->this$0:Lcom/miui/player/service/AudioPreviewService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/player/service/AudioPreviewService;->mPrepared:Z

    .line 302
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$2;->this$0:Lcom/miui/player/service/AudioPreviewService;

    iget-boolean v0, v0, Lcom/miui/player/service/AudioPreviewService;->mSupposedToBePlaying:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$2;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->start()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$2;->this$0:Lcom/miui/player/service/AudioPreviewService;

    const-string v1, "oneshot_prepared"

    invoke-virtual {v0, v1}, Lcom/miui/player/service/AudioPreviewService;->notifyStatus(Ljava/lang/String;)V

    .line 307
    return-void
.end method
