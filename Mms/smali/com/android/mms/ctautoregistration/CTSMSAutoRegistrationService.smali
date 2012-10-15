.class public Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;
.super Landroid/app/Service;
.source "CTSMSAutoRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;
    }
.end annotation


# instance fields
.field mData:Lcom/android/mms/ctautoregistration/Data;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mReSendSMSTime:I

.field private mServiceHandler:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mServiceHandler:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->sendRegistrationSms()V

    return-void
.end method

.method private constructSms()[B
    .locals 17

    .prologue
    .line 212
    const-string v9, "XMP-MI ONE C1"

    .line 213
    .local v9, deviceID:Ljava/lang/String;
    const-string v14, "ro.product.model.real"

    const-string v15, "unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "MI 1SC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 214
    const-string v9, "XMP-2012053"

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v1, buffer:Ljava/lang/StringBuffer;
    const-string v14, "<a1>"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<b1>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</b1>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<b2>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</b2>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<b3>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</b3>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MIUI-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 222
    .local v13, softwareVersion:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x3c

    if-le v14, v15, :cond_1

    .line 223
    const/4 v14, 0x0

    const/16 v15, 0x3c

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 225
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<b4>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</b4>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v14, "</a1>"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 230
    .local v8, dataBytes:[B
    array-length v14, v8

    add-int/lit8 v12, v14, 0xc

    .line 231
    .local v12, outBytesLength:I
    new-array v11, v12, [B

    .line 233
    .local v11, outBytes:[B
    const/4 v14, 0x0

    const/4 v15, 0x2

    aput-byte v15, v11, v14

    .line 234
    const/4 v14, 0x1

    const/4 v15, 0x3

    aput-byte v15, v11, v14

    .line 235
    const/4 v14, 0x2

    array-length v15, v8

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    .line 236
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-byte v15, v11, v14

    .line 237
    const/4 v14, 0x0

    const/4 v15, 0x4

    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v8, v14, v11, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 240
    .local v2, crc32:Ljava/util/zip/CRC32;
    const/4 v14, 0x0

    add-int/lit8 v15, v12, -0x8

    invoke-virtual {v2, v11, v14, v15}, Ljava/util/zip/CRC32;->update([BII)V

    .line 241
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    .line 242
    .local v6, crcValue:J
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, crcString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 244
    .local v4, crcLength:I
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 245
    .local v3, crcBytes:[B
    add-int/lit8 v10, v12, -0x8

    .local v10, i:I
    :goto_0
    if-ge v10, v12, :cond_2

    .line 246
    const/16 v14, 0x30

    aput-byte v14, v11, v10

    .line 245
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 248
    :cond_2
    const/4 v14, 0x0

    sub-int v15, v12, v4

    invoke-static {v3, v14, v11, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    return-object v11
.end method

.method private handleAckSMS(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 120
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v12, "pdu"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, [B

    move-object v8, v12

    check-cast v8, [B

    .line 124
    .local v8, pdu:[B
    if-eqz v8, :cond_0

    .line 127
    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 128
    .local v7, message:Landroid/telephony/SmsMessage;
    if-eqz v7, :cond_0

    .line 131
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v11

    .line 132
    .local v11, userData:[B
    if-eqz v11, :cond_0

    array-length v12, v11

    if-eqz v12, :cond_0

    .line 135
    array-length v12, v11

    const/4 v13, 0x2

    if-lt v12, v13, :cond_2

    const/4 v12, 0x0

    aget-byte v12, v11, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    aget-byte v12, v11, v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    .line 136
    iget-object v12, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mData:Lcom/android/mms/ctautoregistration/Data;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ctautoregistration/Data;->setRegistered(Z)V

    goto :goto_0

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    .line 141
    .local v0, ackString:Ljava/lang/String;
    const-string v12, "<b2>"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, esnStartIndex:I
    const-string v12, "</b2>"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 143
    .local v2, esnEndIndex:I
    const-string v12, "<b3>"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 144
    .local v6, imsiStartIndex:I
    const-string v12, "</b3>"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 145
    .local v5, imsiEndIndex:I
    const/4 v1, 0x0

    .line 146
    .local v1, esn:Ljava/lang/String;
    const/4 v4, 0x0

    .line 148
    .local v4, imsi:Ljava/lang/String;
    const/4 v12, -0x1

    if-eq v3, v12, :cond_0

    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    const/4 v12, -0x1

    if-eq v5, v12, :cond_0

    .line 150
    add-int/lit8 v3, v3, 0x4

    .line 151
    add-int/lit8 v6, v6, 0x4

    .line 152
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 155
    const/4 v9, 0x0

    .line 156
    .local v9, phoneEsn:Ljava/lang/String;
    const/4 v10, 0x0

    .line 157
    .local v10, uimImsi:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 158
    iget-object v12, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 159
    iget-object v12, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .line 162
    :cond_3
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 164
    iget-object v12, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mData:Lcom/android/mms/ctautoregistration/Data;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ctautoregistration/Data;->setRegistered(Z)V

    goto/16 :goto_0
.end method

.method private sendRegistrationSms()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 199
    const-string v0, "CTSMSAutoRegistration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin sendRegistrationSms, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mReSendSMSTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " times"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->constructSms()[B

    move-result-object v4

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ctautoregistration/SMSSentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 206
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "10659401"

    const/4 v3, -0x1

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 208
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "CTSMSAutoRegistration"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;-><init>(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;)V

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mServiceHandler:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;

    .line 41
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 43
    new-instance v0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$1;-><init>(Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;)V

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 63
    new-instance v0, Lcom/android/mms/ctautoregistration/Data;

    invoke-direct {v0, p0}, Lcom/android/mms/ctautoregistration/Data;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mData:Lcom/android/mms/ctautoregistration/Data;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mReSendSMSTime:I

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "CTSMSAutoRegistration"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mServiceHandler:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 79
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 84
    const-string v2, "CTSMSAutoRegistration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service onStartCommand, intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 89
    .local v1, returnValue:I
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mServiceHandler:Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService$ServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 95
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v2, "com.xiaomi.CTSMSAutoRegistration_ACK_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->handleAckSMS(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->stopSelf()V

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "com.xiaomi.ctsmsautoregistration.SMS_SENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    const-string v2, "CTSMSAutoRegistration"

    const-string v3, "SMS sent successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mData:Lcom/android/mms/ctautoregistration/Data;

    iget-object v3, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ctautoregistration/Data;->setImsi(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->stopSelf()V

    goto :goto_0

    .line 104
    :cond_3
    const-string v2, "com.xiaomi.ctsmsautoregistration.SEND_SMS_FAILED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mReSendSMSTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mReSendSMSTime:I

    .line 107
    const-string v2, "CTSMSAutoRegistration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS sent failed, times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mReSendSMSTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v2, p0, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->mReSendSMSTime:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    .line 110
    invoke-direct {p0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->sendRegistrationSms()V

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ctautoregistration/CTSMSAutoRegistrationService;->stopSelf()V

    goto :goto_0
.end method
