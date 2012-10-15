.class Lcom/miui/player/ui/fragment/TrackListFragment$1;
.super Ljava/lang/Object;
.source "TrackListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/TrackListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/TrackListFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/TrackListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/miui/player/ui/fragment/TrackListFragment$1;->this$0:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment$1;->this$0:Lcom/miui/player/ui/fragment/TrackListFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/miui/player/ui/fragment/TrackListFragment$1;->this$0:Lcom/miui/player/ui/fragment/TrackListFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/TrackListFragment;->mAdapter:Lcom/miui/player/model/TrackListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackListAdapter;->notifyDataSetChanged()V

    .line 417
    :cond_0
    return-void
.end method
