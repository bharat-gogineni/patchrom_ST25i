.class Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;
.super Ljava/util/TimerTask;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/PhotoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect timeout"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, -0x4

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->postConnectResult(I)V
    invoke-static {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$3000(Lcom/duokan/airkan/phone/api/PhotoManager;I)V

    .line 1516
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$ConnectTimerTask;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->errorProcess(I)V

    .line 1517
    return-void
.end method
