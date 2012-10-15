.class public Lcom/lidroid/util/LedController;
.super Ljava/lang/Object;
.source "LedController.java"


# static fields
.field private static sInstance:Lcom/lidroid/util/LedController;


# instance fields
.field private mCamera:Landroid/hardware/Camera;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method public static getInstance()Lcom/lidroid/util/LedController;
    .locals 1

    sget-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lidroid/util/LedController;

    invoke-direct {v0}, Lcom/lidroid/util/LedController;-><init>()V

    sput-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    :cond_0
    sget-object v0, Lcom/lidroid/util/LedController;->sInstance:Lcom/lidroid/util/LedController;

    return-object v0
.end method


# virtual methods
.method public getFlashMode()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    move v0, v6

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    :cond_0
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v6

    :goto_1
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    :cond_1
    return v2

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method public isFlashSupported()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    move v0, v5

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    :cond_0
    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    move v2, v5

    :goto_1
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    :cond_1
    return v2

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public off()V
    .locals 2

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public on()V
    .locals 3

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    :cond_0
    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/lidroid/util/LedController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method
