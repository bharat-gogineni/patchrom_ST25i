.class Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BookmarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDMADeliveryPduGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BookmarkFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BookmarkFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getNextMessageId()I
    .locals 5

    .prologue
    .line 755
    monitor-enter p0

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 756
    .local v0, msgId:I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, nextMsgId:Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v2, "CDMA:SMS"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 759
    const-string v2, "CDMA DeliveryPduGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next persist.radio.cdma.msgid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v2, "CDMA DeliveryPduGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readback gets "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "persist.radio.cdma.msgid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :cond_0
    monitor-exit p0

    return v0

    .line 755
    .end local v0           #msgId:I
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private privateGetDeliveryPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;J)Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    .locals 20
    .parameter "originatorAddress"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "time"

    .prologue
    .line 615
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v11

    .line 617
    .local v11, originAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez p1, :cond_0

    .line 618
    const/4 v13, 0x0

    .line 702
    :goto_0
    return-object v13

    .line 620
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 621
    .local v4, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 622
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->getNextMessageId()I

    move-result v17

    move/from16 v0, v17

    iput v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 623
    move/from16 v0, p2

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 624
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 625
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 626
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 627
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 629
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v8

    .line 630
    .local v8, encodedBearerData:[B
    const-string v17, "CDMA:SMS"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 631
    const-string v17, "CDMA DeliveryPduGenerator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MO (encoded) BearerData = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v17, "CDMA DeliveryPduGenerator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MO raw BearerData = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    if-nez v8, :cond_2

    .line 636
    const/4 v13, 0x0

    goto :goto_0

    .line 641
    :cond_2
    new-instance v15, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 642
    .local v15, timeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    move-wide/from16 v0, p4

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 643
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 644
    .local v5, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 646
    .local v12, outputStream:Ljava/io/DataOutputStream;
    const/16 v17, 0x0

    :try_start_0
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v8, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 647
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 648
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 649
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->timeStampToBCDBytes(Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;)[B

    move-result-object v16

    .line 650
    .local v16, tsb:[B
    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 655
    .end local v16           #tsb:[B
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 657
    iget-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v14, 0x1005

    .line 660
    .local v14, teleservice:I
    :goto_2
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 661
    .local v9, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 662
    iput v14, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 663
    iput-object v11, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 664
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 665
    iput-object v8, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 671
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v17, 0x1f4

    move/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 672
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 673
    .local v6, dos:Ljava/io/DataOutputStream;
    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 674
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 675
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 676
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 677
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 678
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 679
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 680
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 681
    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 682
    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    rsub-int/lit8 v17, v17, 0x24

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 685
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 686
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 687
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 688
    const/16 v17, 0x24

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 690
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 691
    const/16 v17, 0x0

    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v8, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 692
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    rsub-int v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 693
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 695
    new-instance v13, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;-><init>(Lcom/android/mms/ui/BookmarkFragment;)V

    .line 696
    .local v13, pdu:Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedMessage:[B

    .line 697
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedScAddress:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 699
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #dos:Ljava/io/DataOutputStream;
    .end local v13           #pdu:Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    :catch_0
    move-exception v10

    .line 700
    .local v10, ex:Ljava/io/IOException;
    const-string v17, "CDMA DeliveryPduGenerator"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "creating Delivery failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 651
    .end local v9           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v10           #ex:Ljava/io/IOException;
    .end local v14           #teleservice:I
    :catch_1
    move-exception v7

    .line 652
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 657
    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    const/16 v14, 0x1002

    goto/16 :goto_2
.end method


# virtual methods
.method public createCDMABCD(I)B
    .locals 4
    .parameter "decimal"

    .prologue
    .line 738
    and-int/lit16 v2, p1, 0xff

    div-int/lit8 v1, v2, 0xa

    .line 739
    .local v1, tens:I
    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v3, v1, 0xa

    sub-int v0, v2, v3

    .line 740
    .local v0, ones:I
    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v2, v0

    int-to-byte v2, v2

    return v2
.end method

.method public getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;ZJ)Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    .locals 6
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 600
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-object v0

    .line 604
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 605
    .local v3, localUserData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 606
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    .line 610
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->privateGetDeliveryPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;J)Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public timeStampToBCDBytes(Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;)[B
    .locals 12
    .parameter "ts"

    .prologue
    const/16 v11, 0x3b

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 706
    const/4 v8, 0x6

    new-array v4, v8, [B

    .line 708
    .local v4, ret:[B
    iget v6, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 709
    .local v6, year:I
    const/16 v8, 0x82f

    if-gt v6, v8, :cond_0

    const/16 v8, 0x7cc

    if-ge v6, v8, :cond_1

    :cond_0
    move-object v4, v7

    .line 733
    .end local v4           #ret:[B
    :goto_0
    return-object v4

    .line 710
    .restart local v4       #ret:[B
    :cond_1
    const/16 v8, 0x7d0

    if-lt v6, v8, :cond_3

    add-int/lit16 v6, v6, -0x7d0

    .line 711
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v9

    aput-byte v9, v4, v8

    .line 713
    iget v8, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v3, v8, 0x1

    .line 714
    .local v3, month:I
    if-lt v3, v10, :cond_2

    const/16 v8, 0xc

    if-le v3, v8, :cond_4

    :cond_2
    move-object v4, v7

    goto :goto_0

    .line 710
    .end local v3           #month:I
    :cond_3
    add-int/lit16 v6, v6, -0x76c

    goto :goto_1

    .line 715
    .restart local v3       #month:I
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v8

    aput-byte v8, v4, v10

    .line 717
    iget v0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    .line 718
    .local v0, day:I
    if-lt v0, v10, :cond_5

    const/16 v8, 0x1f

    if-le v0, v8, :cond_6

    :cond_5
    move-object v4, v7

    goto :goto_0

    .line 719
    :cond_6
    const/4 v8, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v9

    aput-byte v9, v4, v8

    .line 721
    iget v1, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    .line 722
    .local v1, hour:I
    if-ltz v1, :cond_7

    const/16 v8, 0x17

    if-le v1, v8, :cond_8

    :cond_7
    move-object v4, v7

    goto :goto_0

    .line 723
    :cond_8
    const/4 v8, 0x3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v9

    aput-byte v9, v4, v8

    .line 725
    iget v2, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    .line 726
    .local v2, minute:I
    if-ltz v2, :cond_9

    if-le v2, v11, :cond_a

    :cond_9
    move-object v4, v7

    goto :goto_0

    .line 727
    :cond_a
    const/4 v8, 0x4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v9

    aput-byte v9, v4, v8

    .line 729
    iget v5, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 730
    .local v5, second:I
    if-ltz v5, :cond_b

    if-le v5, v11, :cond_c

    :cond_b
    move-object v4, v7

    goto :goto_0

    .line 731
    :cond_c
    const/4 v7, 0x5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v8

    aput-byte v8, v4, v7

    goto :goto_0
.end method
