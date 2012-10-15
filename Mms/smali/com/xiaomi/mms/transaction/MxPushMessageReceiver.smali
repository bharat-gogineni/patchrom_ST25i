.class public Lcom/xiaomi/mms/transaction/MxPushMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MxPushMessageReceiver.java"


# static fields
.field private static mTokenInvalidCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mms/transaction/MxPushMessageReceiver;->mTokenInvalidCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "MxPushMessageReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive broadcast, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v2, "com.xiaomi.push.new_msg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 39
    new-instance v1, Lmiui/push/Message;

    const-string v2, "ext_packet"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/push/Message;-><init>(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {v1}, Lmiui/push/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string v3, "sent"

    invoke-virtual {v1, v3, v0}, Lmiui/push/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;

    move-result-object v3

    .line 43
    const-string v4, "received"

    invoke-virtual {v1, v4, v0}, Lmiui/push/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;

    move-result-object v4

    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 47
    const-string v3, "xmthread"

    invoke-virtual {v1, v3, v0}, Lmiui/push/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;

    move-result-object v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lmiui/push/CommonPacketExtension;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v3}, Lmiui/push/CommonPacketExtension;->getText()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.xiaomi.mms.mx.ACTION_HANDLE_MX_RECEIVED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v5, "fromType"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v4, "address"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v3, "body"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 97
    const-string v2, "from"

    invoke-virtual {v1}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "to"

    invoke-virtual {v1}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "packetId"

    invoke-virtual {v1}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    :cond_1
    :goto_1
    return-void

    .line 60
    :cond_2
    const-string v2, "MxPushMessageReceiver"

    const-string v3, "fromType or address is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_3
    const-string v2, "MxPushMessageReceiver"

    const-string v3, "receive msg without thread ext"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_4
    if-eqz v3, :cond_5

    .line 67
    const-string v2, "id"

    invoke-virtual {v3, v2}, Lmiui/push/CommonPacketExtension;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.mms.mx.ACTION_HANDLE_MX_SENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v3, "msgId"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 74
    :cond_5
    if-eqz v4, :cond_8

    .line 76
    const-string v2, "id"

    invoke-virtual {v4, v2}, Lmiui/push/CommonPacketExtension;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 78
    :cond_6
    const-string v3, "MxPushMessageReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive delivered ack with illegal id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.mms.mx.ACTION_HANDLE_MX_DELIVERED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v3, "msgId"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 83
    invoke-virtual {v1}, Lmiui/push/Message;->getError()Lmiui/push/XMPPError;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    const-string v4, "MxPushMessageReceiver"

    const-string v5, "error occurs to msg: %s, description: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v3}, Lmiui/push/XMPPError;->getReason()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v2, "error"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 93
    :cond_8
    const-string v2, "MxPushMessageReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive unknown msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lmiui/push/Message;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    :cond_9
    const-string v0, "com.xiaomi.push.new_pres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 104
    new-instance v0, Lmiui/push/Presence;

    const-string v1, "ext_packet"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/push/Presence;-><init>(Landroid/os/Bundle;)V

    .line 107
    const-string v1, "MxPushMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive presence:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmiui/push/Presence;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0}, Lmiui/push/Presence;->isAvailable()Z

    move-result v1

    .line 110
    invoke-virtual {v0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->getSimpleMid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.xiaomi.mms.mx.ACTION_HANDLE_PRESENCE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v4, "from"

    invoke-virtual {v0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v4, "to"

    invoke-virtual {v0}, Lmiui/push/Presence;->getTo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v4, "packetId"

    invoke-virtual {v0}, Lmiui/push/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v0, "mid"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v0, "available"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 121
    :cond_a
    const-string v0, "com.xiaomi.push.channel_closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 122
    sget-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->DISCONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    invoke-static {p1, v0}, Lcom/xiaomi/mms/transaction/PushStatus;->setStatus(Landroid/content/Context;Lcom/xiaomi/mms/transaction/PushStatus$Status;)V

    .line 124
    const-string v0, "MxPushMessageReceiver"

    const-string v1, "push channel closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 126
    :cond_b
    const-string v0, "com.xiaomi.push.channel_opened"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 127
    const-string v0, "ext_succeeded"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    invoke-static {}, Lcom/xiaomi/mms/transaction/PushStatus;->getStatus()Lcom/xiaomi/mms/transaction/PushStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus$Status;->INIT:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    if-eq v0, v1, :cond_c

    .line 140
    sget-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    invoke-static {p1, v0}, Lcom/xiaomi/mms/transaction/PushStatus;->setStatus(Landroid/content/Context;Lcom/xiaomi/mms/transaction/PushStatus$Status;)V

    .line 143
    :cond_c
    const-string v0, "MxPushMessageReceiver"

    const-string v1, "push channel opened successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sput v7, Lcom/xiaomi/mms/transaction/MxPushMessageReceiver;->mTokenInvalidCount:I

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/mms/transaction/MxResendService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 151
    :cond_d
    sget-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->DISCONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    invoke-static {p1, v0}, Lcom/xiaomi/mms/transaction/PushStatus;->setStatus(Landroid/content/Context;Lcom/xiaomi/mms/transaction/PushStatus$Status;)V

    .line 152
    const-string v0, "ext_reason_msg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v1, "MxPushMessageReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to open channel, reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v1, "invalid-sig"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "invalid-token"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "token-expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_e
    sget v0, Lcom/xiaomi/mms/transaction/MxPushMessageReceiver;->mTokenInvalidCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/mms/transaction/MxPushMessageReceiver;->mTokenInvalidCount:I

    .line 159
    invoke-static {p1}, Lcom/xiaomi/mms/transaction/MxActivateService;->invalidMxToken(Landroid/content/Context;)V

    .line 160
    sget v0, Lcom/xiaomi/mms/transaction/MxPushMessageReceiver;->mTokenInvalidCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    .line 161
    invoke-static {p1, v8, v7}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableMx(Landroid/content/Context;ZZ)V

    goto/16 :goto_1

    .line 163
    :cond_f
    const-string v0, "MxPushMessageReceiver"

    const-string v1, "max token try time reaches, abort try"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 167
    :cond_10
    const-string v0, "com.xiaomi.push.service_started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "MxPushMessageReceiver"

    const-string v1, "push service started, need open channel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {p1, v8, v7}, Lcom/xiaomi/mms/transaction/MxActivateService;->enableMx(Landroid/content/Context;ZZ)V

    goto/16 :goto_1
.end method
