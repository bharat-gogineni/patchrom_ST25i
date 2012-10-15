.class Lcom/xiaomi/mms/transaction/MxActivateService$1$1;
.super Landroid/telephony/PhoneStateListener;
.source "MxActivateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mms/transaction/MxActivateService$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/mms/transaction/MxActivateService$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mms/transaction/MxActivateService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;->this$1:Lcom/xiaomi/mms/transaction/MxActivateService$1;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 314
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.action.SEND_SMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, sendSmsIntent:Landroid/content/Intent;
    const-string v1, "extra_manually"

    iget-object v2, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;->this$1:Lcom/xiaomi/mms/transaction/MxActivateService$1;

    iget-boolean v2, v2, Lcom/xiaomi/mms/transaction/MxActivateService$1;->val$manually:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;->this$1:Lcom/xiaomi/mms/transaction/MxActivateService$1;

    iget-object v1, v1, Lcom/xiaomi/mms/transaction/MxActivateService$1;->this$0:Lcom/xiaomi/mms/transaction/MxActivateService;

    invoke-virtual {v1}, Lcom/xiaomi/mms/transaction/MxActivateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v1, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;->this$1:Lcom/xiaomi/mms/transaction/MxActivateService$1;

    iget-object v1, v1, Lcom/xiaomi/mms/transaction/MxActivateService$1;->this$0:Lcom/xiaomi/mms/transaction/MxActivateService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/mms/transaction/MxActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 326
    iget-object v1, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;->this$1:Lcom/xiaomi/mms/transaction/MxActivateService$1;

    iget-object v1, v1, Lcom/xiaomi/mms/transaction/MxActivateService$1;->val$tm:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 328
    iget-object v1, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;->this$1:Lcom/xiaomi/mms/transaction/MxActivateService$1;

    iget-object v1, v1, Lcom/xiaomi/mms/transaction/MxActivateService$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 330
    .end local v0           #sendSmsIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
