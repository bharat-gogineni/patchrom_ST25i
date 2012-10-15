.class Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;
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
    name = "OnNextClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/PlayerCommonController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 131
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 132
    .local v0, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->next()V

    .line 137
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;->this$0:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method
