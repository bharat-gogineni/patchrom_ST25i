.class public Lcom/xiaomi/mms/transaction/PushStatus;
.super Ljava/lang/Object;
.source "PushStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mms/transaction/PushStatus$Status;
    }
.end annotation


# static fields
.field private static volatile mStatus:Lcom/xiaomi/mms/transaction/PushStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->INIT:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    sput-object v0, Lcom/xiaomi/mms/transaction/PushStatus;->mStatus:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getStatus()Lcom/xiaomi/mms/transaction/PushStatus$Status;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/xiaomi/mms/transaction/PushStatus;->mStatus:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    return-object v0
.end method

.method private static notifyChannelChanged(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mms.PUSH_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public static setStatus(Landroid/content/Context;Lcom/xiaomi/mms/transaction/PushStatus$Status;)V
    .locals 2
    .parameter "context"
    .parameter "status"

    .prologue
    .line 18
    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus;->mStatus:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 19
    .local v0, changed:Z
    :goto_0
    sput-object p1, Lcom/xiaomi/mms/transaction/PushStatus;->mStatus:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/xiaomi/mms/transaction/PushStatus;->notifyChannelChanged(Landroid/content/Context;)V

    .line 23
    :cond_0
    return-void

    .line 18
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
