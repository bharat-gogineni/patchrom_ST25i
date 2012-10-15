.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricModifySaveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricViewController;->saveLyric()V

    .line 818
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode()V
    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$400(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 819
    return-void
.end method
