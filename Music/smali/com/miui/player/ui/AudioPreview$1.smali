.class Lcom/miui/player/ui/AudioPreview$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AudioPreview;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/miui/player/ui/AudioPreview$1;->this$0:Lcom/miui/player/ui/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, action:Ljava/lang/String;
    const-string v1, "oneshot_prepared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview$1;->this$0:Lcom/miui/player/ui/AudioPreview;

    invoke-virtual {v1}, Lcom/miui/player/ui/AudioPreview;->updateMetaInfo()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v1, "oneshot_metainfo_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview$1;->this$0:Lcom/miui/player/ui/AudioPreview;

    invoke-virtual {v1}, Lcom/miui/player/ui/AudioPreview;->updateMetaInfo()V

    goto :goto_0

    .line 158
    :cond_2
    const-string v1, "oneshot_playstate_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview$1;->this$0:Lcom/miui/player/ui/AudioPreview;

    invoke-virtual {v1}, Lcom/miui/player/ui/AudioPreview;->updateStatus()V

    .line 160
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview$1;->this$0:Lcom/miui/player/ui/AudioPreview;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/AudioPreview;->queueNextRefresh(Z)V

    goto :goto_0

    .line 161
    :cond_3
    const-string v1, "oneshot_play_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview$1;->this$0:Lcom/miui/player/ui/AudioPreview;

    const v2, 0x7f0900bb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 164
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview$1;->this$0:Lcom/miui/player/ui/AudioPreview;

    invoke-virtual {v1}, Lcom/miui/player/ui/AudioPreview;->finish()V

    goto :goto_0
.end method
