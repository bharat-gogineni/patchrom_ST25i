.class Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnExternalIndexClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-boolean v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    if-eqz v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setAnimationPlaying(Z)V

    .line 625
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeExternal()V

    goto :goto_0
.end method
