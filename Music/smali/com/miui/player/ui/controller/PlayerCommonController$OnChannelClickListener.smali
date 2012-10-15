.class Lcom/miui/player/ui/controller/PlayerCommonController$OnChannelClickListener;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/PlayerCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnChannelClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/PlayerCommonController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnChannelClickListener;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 91
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 92
    .local v2, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 97
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnChannelClickListener;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    #getter for: Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;
    invoke-static {v3}, Lcom/miui/player/ui/controller/PlayerCommonController;->access$000(Lcom/miui/player/ui/controller/PlayerCommonController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/ui/UIHelper;->toggleCurrentAudioFavorite(Landroid/content/Context;)Z

    .line 99
    iget-object v3, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnChannelClickListener;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/PlayerCommonController;->refreshFavorte()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v0           #id:J
    :catch_0
    move-exception v3

    goto :goto_0
.end method
