.class Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MxActivateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mms/transaction/MxActivateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountDownBroadcastReceiver"
.end annotation


# instance fields
.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mSentStatus:I

.field final synthetic this$0:Lcom/xiaomi/mms/transaction/MxActivateService;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mms/transaction/MxActivateService;)V
    .locals 2
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->this$0:Lcom/xiaomi/mms/transaction/MxActivateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 889
    const/4 v0, -0x2

    iput v0, p0, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->mSentStatus:I

    .line 891
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mms/transaction/MxActivateService;Lcom/xiaomi/mms/transaction/MxActivateService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;-><init>(Lcom/xiaomi/mms/transaction/MxActivateService;)V

    return-void
.end method


# virtual methods
.method public getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public getSentStatus()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->mSentStatus:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->getResultCode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->mSentStatus:I

    .line 896
    iget-object v0, p0, Lcom/xiaomi/mms/transaction/MxActivateService$CountDownBroadcastReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 897
    return-void
.end method
