.class Lcom/miui/player/ui/MusicBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$1;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$1;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    iget-object v0, v0, Lcom/miui/player/ui/MusicBrowserActivity;->mBrowserController:Lcom/miui/player/ui/controller/MusicBrowserController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshTrackCount()V

    .line 319
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$1;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    .line 320
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$1;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicBrowserActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$1;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshGrid()V

    .line 323
    :cond_0
    return-void
.end method
