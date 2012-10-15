.class public Lcom/xiaomi/mms/utils/MxMessageLogicHelper;
.super Ljava/lang/Object;
.source "MxMessageLogicHelper.java"


# static fields
.field private static final MMS_ID:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final SMS_ID:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 30
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v5, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->SMS_ID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v5, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->MMS_ID:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 36
    .local v4, random:Ljava/util/Random;
    const v5, 0xffff

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v2, v5

    .line 37
    .local v2, r:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide v7, 0xfffffffffffL

    and-long/2addr v5, v7

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long v0, v2, v5

    .line 39
    .local v0, base:J
    sget-object v5, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->SMS_ID:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    or-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 42
    sget-object v5, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->MMS_ID:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v6, 0x4000

    or-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructFullRecipientId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mxId"

    .prologue
    .line 117
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@xiaomi.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static constructSmsBody(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .parameter "pdu"
    .parameter "miMsgId"

    .prologue
    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v1, jObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "type"

    const-string v3, "sms"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "pdu"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "msgId"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    const-string v2, "sentTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "error when construct sms"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getSimpleMid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fullId"

    .prologue
    .line 137
    if-nez p0, :cond_1

    .line 138
    const/4 p0, 0x0

    .line 144
    .end local p0
    .local v0, atIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 140
    .end local v0           #atIndex:I
    .restart local p0
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 141
    .restart local v0       #atIndex:I
    if-lez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isSms(J)Z
    .locals 4
    .parameter "msgId"

    .prologue
    .line 152
    const-wide/high16 v0, -0x1000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextMiId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->SMS_ID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static obtainMessage(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/Message;
    .locals 1
    .parameter "fromMid"
    .parameter "toMid"

    .prologue
    .line 104
    invoke-static {p1}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->constructFullRecipientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v0, Lmiui/push/Message;

    invoke-direct {v0}, Lmiui/push/Message;-><init>()V

    .line 106
    .local v0, msg:Lmiui/push/Message;
    invoke-virtual {v0, p0}, Lmiui/push/Message;->setFrom(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method

.method public static sendAckToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "from"
    .parameter "to"
    .parameter "packetId"

    .prologue
    .line 88
    invoke-static {p1, p2}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->obtainMessage(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/Message;

    move-result-object v0

    .line 89
    .local v0, msg:Lmiui/push/Message;
    new-instance v1, Lmiui/push/CommonPacketExtension;

    const-string v2, "sent"

    const/4 v3, 0x0

    const-string v4, "id"

    invoke-direct {v1, v2, v3, v4, p3}, Lmiui/push/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v1, sentExt:Lmiui/push/CommonPacketExtension;
    invoke-virtual {v0, v1}, Lmiui/push/Message;->addExtension(Lmiui/push/CommonPacketExtension;)V

    .line 92
    invoke-static {p0}, Lmiui/push/ServiceClient;->getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/push/ServiceClient;->sendMessage(Lmiui/push/Message;)Z

    move-result v2

    return v2
.end method

.method public static sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "from"
    .parameter "to"
    .parameter "packetId"

    .prologue
    const/4 v4, 0x0

    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static sendReceivedAck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "from"
    .parameter "to"
    .parameter "packetId"
    .parameter "errorReason"
    .parameter "errorDspt"

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/xiaomi/mms/utils/MxMessageLogicHelper;->obtainMessage(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/Message;

    move-result-object v3

    .line 69
    .local v3, msg:Lmiui/push/Message;
    new-instance v4, Lmiui/push/CommonPacketExtension;

    const-string v5, "received"

    const/4 v6, 0x0

    const-string v7, "id"

    invoke-direct {v4, v5, v6, v7, p3}, Lmiui/push/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v4, rcvExt:Lmiui/push/CommonPacketExtension;
    invoke-virtual {v3, v4}, Lmiui/push/Message;->addExtension(Lmiui/push/CommonPacketExtension;)V

    .line 72
    if-eqz p4, :cond_0

    .line 73
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "reason"

    aput-object v6, v0, v5

    .line 74
    .local v0, attrNames:[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "client"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    aput-object p4, v1, v5

    .line 75
    .local v1, attrValues:[Ljava/lang/String;
    new-instance v2, Lmiui/push/CommonPacketExtension;

    const-string v5, "error"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v0, v1}, Lmiui/push/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    .local v2, errExt:Lmiui/push/CommonPacketExtension;
    invoke-virtual {v2, p5}, Lmiui/push/CommonPacketExtension;->setText(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3, v2}, Lmiui/push/Message;->addExtension(Lmiui/push/CommonPacketExtension;)V

    .line 80
    .end local v0           #attrNames:[Ljava/lang/String;
    .end local v1           #attrValues:[Ljava/lang/String;
    .end local v2           #errExt:Lmiui/push/CommonPacketExtension;
    :cond_0
    invoke-static {p0}, Lmiui/push/ServiceClient;->getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/push/ServiceClient;->sendMessage(Lmiui/push/Message;)Z

    move-result v5

    return v5
.end method
