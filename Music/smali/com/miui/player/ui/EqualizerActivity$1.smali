.class Lcom/miui/player/ui/EqualizerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "EqualizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$1;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/miui/player/ui/EqualizerActivity$1;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-boolean v0, v0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeAdjustBySeekBar:Z

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/miui/player/ui/EqualizerActivity$1;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/EqualizerActivity;->refreshVolume()V

    .line 490
    :cond_0
    return-void
.end method
