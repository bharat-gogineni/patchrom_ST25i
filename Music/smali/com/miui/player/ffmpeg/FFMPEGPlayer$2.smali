.class Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;
.super Ljava/lang/Object;
.source "FFMPEGPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/miui/player/ffmpeg/FFMPEGPlayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;->this$0:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    iput p2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;->this$0:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    iget-object v0, v0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;->val$error:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;->this$0:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    #calls: Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onCompletion()V
    invoke-static {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->access$000(Lcom/miui/player/ffmpeg/FFMPEGPlayer;)V

    .line 324
    :cond_0
    return-void
.end method
