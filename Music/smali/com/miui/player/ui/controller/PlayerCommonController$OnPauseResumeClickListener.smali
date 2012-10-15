.class Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;
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
    name = "OnPauseResumeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/PlayerCommonController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 148
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 149
    .local v0, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->pause()V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    .line 160
    .end local v0           #service:Lcom/miui/player/service/IMediaPlaybackService;
    :cond_0
    :goto_1
    return-void

    .line 153
    .restart local v0       #service:Lcom/miui/player/service/IMediaPlaybackService;
    :cond_1
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0           #service:Lcom/miui/player/service/IMediaPlaybackService;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
