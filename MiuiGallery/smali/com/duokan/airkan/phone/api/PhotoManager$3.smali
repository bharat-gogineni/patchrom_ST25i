.class Lcom/duokan/airkan/phone/api/PhotoManager$3;
.super Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;
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
    .line 520
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-direct {p0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthReqResponse(II)V
    .locals 8
    .parameter "handle"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 524
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->isSwitched2Video:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    invoke-static {p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1602(I)I

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1700(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 529
    invoke-static {p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1602(I)I

    .line 530
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "request is not from photo"

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIs2Connect:Z
    invoke-static {v4, v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1702(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 535
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v4, v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 536
    const/4 v3, 0x0

    .line 537
    .local v3, text:Ljava/lang/String;
    if-nez p2, :cond_4

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication Success. Handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1602(I)I

    .line 540
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-static {}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1600()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->onAuthPassed(ZI)V

    .line 542
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v4, v7}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$302(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 553
    :goto_1
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on Connected of control link: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 559
    const/4 v2, 0x1

    .line 581
    .local v2, isConnected:Z
    :goto_2
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$600(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 582
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mRequestWasSent:Z
    invoke-static {v4, v7}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$602(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 583
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->postrequest()V

    .line 584
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->startOfferTimer()V

    .line 587
    :cond_3
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-eq v2, v4, :cond_0

    .line 588
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v4, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$502(Lcom/duokan/airkan/phone/api/PhotoManager;Z)Z

    .line 589
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mIsConnected:Z
    invoke-static {v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$500(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v5

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->setConnStatus(Z)V
    invoke-static {v4, v5}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$700(Lcom/duokan/airkan/phone/api/PhotoManager;Z)V

    goto/16 :goto_0

    .line 544
    .end local v2           #isConnected:Z
    :cond_4
    const/4 v4, -0x1

    if-ne v4, p2, :cond_5

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication Failed. Ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 546
    :cond_5
    const/4 v4, -0x2

    if-ne v4, p2, :cond_6

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication init Failed. Ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 548
    :cond_6
    const/4 v4, -0x3

    if-ne v4, p2, :cond_7

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection Failed. Ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 551
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication Failed. Ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 560
    :cond_8
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->linkConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$300(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 561
    const/4 v2, 0x0

    .restart local v2       #isConnected:Z
    goto/16 :goto_2

    .line 564
    .end local v2           #isConnected:Z
    :cond_9
    const/4 v1, 0x0

    .line 565
    .local v1, i:I
    :goto_3
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataConnected:Z
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 566
    add-int/lit8 v1, v1, 0x1

    .line 567
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_0

    .line 570
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting for data link connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :try_start_0
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->sleepInterval:I
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$400(Lcom/duokan/airkan/phone/api/PhotoManager;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 577
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_a
    const/4 v2, 0x1

    .restart local v2       #isConnected:Z
    goto/16 :goto_2
.end method

.method public onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disConnected, mReleaseFromLoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->mReleaseFromLoc:Z
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2700(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->Release(Z)I

    .line 649
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2800(Lcom/duokan/airkan/phone/api/PhotoManager;)Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onDisconnected()V

    .line 650
    return-void
.end method

.method public onPhotoControlResponse(IBILjava/lang/String;)V
    .locals 4
    .parameter "handle"
    .parameter "code"
    .parameter "result"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v1, 0x4

    if-ne v1, p2, :cond_1

    .line 614
    if-nez p3, :cond_2

    .line 615
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->sliderShow:Z
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2200(Lcom/duokan/airkan/phone/api/PhotoManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    sput v3, Lcom/duokan/airkan/phone/api/PhotoManager;->waitingShowHandle:I

    .line 617
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-virtual {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->queryNextBufferImage()V

    .line 623
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->lastSentHandle:I
    invoke-static {v1, v3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2402(Lcom/duokan/airkan/phone/api/PhotoManager;I)I

    .line 625
    :cond_1
    return-void

    .line 619
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p3, :cond_0

    .line 621
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->ShownImageNotExist()V
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2300(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    goto :goto_0
.end method

.method public onPhotoOffer(ILcom/duokan/airkan/common/aidl/photo/ParcelOfferData;)V
    .locals 3
    .parameter "handle"
    .parameter "offerData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-short v1, p2, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->screenWidth:S

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->remoteW:I
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1802(Lcom/duokan/airkan/phone/api/PhotoManager;I)I

    .line 598
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-short v1, p2, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->screenHeight:S

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->remoteH:I
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$1902(Lcom/duokan/airkan/phone/api/PhotoManager;I)I

    .line 599
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget v1, p2, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->tcpport:I

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->tcpport:I
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2002(Lcom/duokan/airkan/phone/api/PhotoManager;I)I

    .line 600
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    iget-object v1, p2, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->dataip:Ljava/lang/String;

    #setter for: Lcom/duokan/airkan/phone/api/PhotoManager;->dataip:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2102(Lcom/duokan/airkan/phone/api/PhotoManager;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const-string v1, "offer received"

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->cancelOfferTimer(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/duokan/airkan/phone/api/PhotoManager;->postquery(ZZZS)V

    .line 603
    return-void
.end method

.method public onPhotoPull([I)V
    .locals 1
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->send4Pull([I)V
    invoke-static {v0, p1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2600(Lcom/duokan/airkan/phone/api/PhotoManager;[I)V

    .line 642
    return-void
.end method

.method public onPhotoQueryResult(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
    .locals 3
    .parameter "handle"
    .parameter "photoQueryData"
    .parameter "sstl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->showinghandle:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " checking handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->checkinghandle:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p2, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->status:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->queryResult(Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
    invoke-static {v1, p2, p3}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2500(Lcom/duokan/airkan/phone/api/PhotoManager;Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V

    .line 636
    return-void
.end method

.method public onReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "released"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->Release(Z)I

    .line 656
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$3;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->photoListener:Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2800(Lcom/duokan/airkan/phone/api/PhotoManager;)Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;->onReleased()V

    .line 658
    return-void
.end method
