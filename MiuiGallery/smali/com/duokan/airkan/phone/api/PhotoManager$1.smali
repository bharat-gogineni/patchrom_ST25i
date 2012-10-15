.class Lcom/duokan/airkan/phone/api/PhotoManager$1;
.super Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback$Stub;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/PhotoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-direct {p0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public SaveMultiBlockDataInfo(Ljava/lang/String;III)V
    .locals 2
    .parameter "filename"
    .parameter "blockCount"
    .parameter "handle"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1102(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    new-array v1, p4, [B

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$902(Lcom/duokan/airkan/phone/api/PhotoManager;[B)[B

    .line 497
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I
    invoke-static {v0, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1002(Lcom/duokan/airkan/phone/api/PhotoManager;I)I

    .line 498
    return-void
.end method

.method public onConnected(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 424
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnected of data link: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v3, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$202(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 428
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 429
    const/4 v2, 0x1

    .line 449
    .local v2, isConnected:Z
    :goto_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 450
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v3, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$502(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 451
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$600(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v4, 0x1

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z
    invoke-static {v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$602(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 453
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->postrequest()V

    .line 454
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->startOfferTimer()V

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->setConnStatus(Z)V
    invoke-static {v3, v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$700(Lcom/duokan/airkan/phone/api/PhotoManager;Z)V

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsConnected in onConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v2           #isConnected:Z
    :cond_2
    return-void

    .line 430
    :cond_3
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 431
    const/4 v2, 0x0

    .restart local v2       #isConnected:Z
    goto :goto_0

    .line 434
    .end local v2           #isConnected:Z
    :cond_4
    const/4 v1, 0x0

    .line 435
    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 436
    add-int/lit8 v1, v1, 0x1

    .line 437
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_2

    .line 440
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting for control link connected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$400(Lcom/duokan/airkan/phone/api/PhotoManager;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 447
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_5
    const/4 v2, 0x1

    .restart local v2       #isConnected:Z
    goto/16 :goto_0
.end method

.method public onError(I)V
    .locals 2
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "received error report"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->errorProcess(I)V

    .line 471
    return-void
.end method

.method public onSendResult(ZI)V
    .locals 3
    .parameter "sendOk"
    .parameter "handle"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result, for image Handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->postSendResult(ZI)V
    invoke-static {v0, p1, p2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$100(Lcom/duokan/airkan/phone/api/PhotoManager;ZI)V

    .line 420
    return-void
.end method

.method public onServiceClosed()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceClosed from photo send service"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public savePhotoData([BILjava/lang/String;)I
    .locals 1
    .parameter "data"
    .parameter "handle"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->postSavePhotoData(Ljava/lang/String;[B)V
    invoke-static {v0, p3, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$800(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;[B)V

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public savePhotoDataM([BII)I
    .locals 4
    .parameter "data"
    .parameter "order"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 483
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive one multi blocks photo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$900(Lcom/duokan/airkan/phone/api/PhotoManager;)[B

    move-result-object v0

    const/high16 v1, 0x4

    mul-int/2addr v1, p2

    invoke-static {p1, v3, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mBlockCounts:I
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1000(Lcom/duokan/airkan/phone/api/PhotoManager;)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1100(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mImageData:[B
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$900(Lcom/duokan/airkan/phone/api/PhotoManager;)[B

    move-result-object v2

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->postSavePhotoData(Ljava/lang/String;[B)V
    invoke-static {v0, v1, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$800(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;[B)V

    .line 487
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$1;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "receive one multi blocks photo"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    return v3
.end method
