.class public Lcom/miui/player/ui/controller/PlaylistController;
.super Lcom/miui/player/ui/controller/MediaPlaybackController;
.source "PlaylistController.java"


# instance fields
.field private final mFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/ui/fragment/TrackListFragment;)V
    .locals 1
    .parameter "activity"
    .parameter "fragment"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/player/ui/controller/MediaPlaybackController;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 17
    return-void
.end method


# virtual methods
.method protected dirty(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 21
    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doUpdate()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->notifyDataSetChanged()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method protected setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 33
    .local v0, ft:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 39
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 40
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/fragment/TrackListFragment;->playAnimation(Landroid/view/animation/Animation;)V

    .line 45
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlaylistController;->mFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/fragment/TrackListFragment;->playAnimation(Landroid/view/animation/Animation;)V

    .line 50
    return-void
.end method
