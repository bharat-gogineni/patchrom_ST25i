.class Lcom/miui/player/ui/PlaylistBrowserActivity$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iget-object v0, v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iget-object v0, v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapter:Lcom/miui/player/model/PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistListAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_0
    return-void
.end method
