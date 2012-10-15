.class Lcom/miui/player/ffmpeg/FFMPEGPlayer$3;
.super Ljava/lang/Object;
.source "FFMPEGPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ffmpeg/FFMPEGPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/ffmpeg/FFMPEGPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$3;->this$0:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer$3;->this$0:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    iget-object v0, v0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 346
    return-void
.end method
