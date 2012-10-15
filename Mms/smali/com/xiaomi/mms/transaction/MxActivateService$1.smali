.class Lcom/xiaomi/mms/transaction/MxActivateService$1;
.super Ljava/lang/Object;
.source "MxActivateService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mms/transaction/MxActivateService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mms/transaction/MxActivateService;

.field final synthetic val$handlerThread:Landroid/os/HandlerThread;

.field final synthetic val$manually:Z

.field final synthetic val$tm:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/mms/transaction/MxActivateService;Landroid/telephony/TelephonyManager;ZLandroid/os/HandlerThread;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1;->this$0:Lcom/xiaomi/mms/transaction/MxActivateService;

    iput-object p2, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1;->val$tm:Landroid/telephony/TelephonyManager;

    iput-boolean p3, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1;->val$manually:Z

    iput-object p4, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 308
    iget-object v0, p0, Lcom/xiaomi/mms/transaction/MxActivateService$1;->val$tm:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mms/transaction/MxActivateService$1$1;-><init>(Lcom/xiaomi/mms/transaction/MxActivateService$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 332
    return v2
.end method
