.class Lcom/miui/player/ui/controller/MusicBrowserController$2;
.super Ljava/lang/Object;
.source "MusicBrowserController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/MusicBrowserController;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/MusicBrowserController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/MusicBrowserController;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/player/ui/controller/MusicBrowserController$2;->this$0:Lcom/miui/player/ui/controller/MusicBrowserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 98
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 99
    .local v2, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v2, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 102
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/miui/player/ui/controller/MusicBrowserController$2;->this$0:Lcom/miui/player/ui/controller/MusicBrowserController;

    iget-object v3, v3, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/miui/player/ui/UIHelper;->toggleCurrentAudioFavorite(Landroid/content/Context;)Z

    .line 104
    iget-object v3, p0, Lcom/miui/player/ui/controller/MusicBrowserController$2;->this$0:Lcom/miui/player/ui/controller/MusicBrowserController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshFavorte()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0           #id:J
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v3

    goto :goto_0
.end method
