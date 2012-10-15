.class Lcom/miui/player/service/AudioPreviewService$ServiceStub;
.super Lcom/miui/player/service/IAudioPreviewService$Stub;
.source "AudioPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/AudioPreviewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field private final mService:Lcom/miui/player/service/AudioPreviewService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/AudioPreviewService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/miui/player/service/IAudioPreviewService$Stub;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    .line 404
    return-void
.end method


# virtual methods
.method public duration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->duration()I

    move-result v0

    return v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->pause()V

    .line 414
    return-void
.end method

.method public position()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->position()I

    move-result v0

    return v0
.end method

.method public prepareAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/AudioPreviewService;->prepareAsync(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public seek(I)V
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/AudioPreviewService;->seek(I)V

    .line 434
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;->mService:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Lcom/miui/player/service/AudioPreviewService;->start()V

    .line 429
    return-void
.end method
