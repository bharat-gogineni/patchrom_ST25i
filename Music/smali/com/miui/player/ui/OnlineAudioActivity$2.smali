.class Lcom/miui/player/ui/OnlineAudioActivity$2;
.super Ljava/lang/Object;
.source "OnlineAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineAudioActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineAudioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/miui/player/ui/OnlineAudioActivity$2;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$2;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$2;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineAudioActivity;->mAdapter:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineAudioAdapter;->updateDownloadStatus()V

    .line 235
    :cond_0
    return-void
.end method
