.class Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BookmarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GSMDeliveryPduGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BookmarkFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BookmarkFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 536
    const-string v3, "utf-16be"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 538
    .local v1, textPart:[B
    if-eqz p2, :cond_0

    .line 540
    array-length v3, p2

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 542
    .local v2, userData:[B
    array-length v3, p2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 543
    array-length v3, p2

    invoke-static {p2, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 549
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 550
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    return-object v0

    .line 546
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method private getDeliveryPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/mms/ui/BookmarkFragment$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 556
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 558
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p1, :cond_0

    .line 559
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedScAddress:[B

    .line 565
    :goto_0
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 569
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 574
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 578
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 581
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 582
    return-object v0

    .line 561
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    move v2, v3

    .line 574
    goto :goto_1
.end method

.method private writeTimeStampStringForDate(JLjava/io/ByteArrayOutputStream;)V
    .locals 12
    .parameter "timestamp"
    .parameter "bo"

    .prologue
    .line 500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 501
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 502
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit16 v10, v11, -0x7d0

    .line 503
    .local v10, year:I
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v5, v11, 0x1

    .line 504
    .local v5, month:I
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 505
    .local v1, dayOfMonth:I
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 506
    .local v2, hourOfDay:I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 507
    .local v4, minute:I
    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 508
    .local v7, sec:I
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    .line 509
    .local v8, tz:Ljava/util/TimeZone;
    invoke-virtual {v8, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 510
    .local v6, offset:I
    const v11, 0xea60

    div-int v3, v6, v11

    .line 511
    .local v3, minOffset:I
    div-int/lit8 v9, v3, 0xf

    .line 513
    .local v9, tzValue:I
    if-gez v9, :cond_0

    .line 514
    rsub-int v9, v9, 0x80

    .line 517
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 518
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 519
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 520
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 521
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 522
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 523
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v11

    invoke-virtual {p3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    return-void
.end method


# virtual methods
.method public createSwappedBCD(I)I
    .locals 4
    .parameter "decimal"

    .prologue
    .line 528
    and-int/lit16 v2, p1, 0xff

    div-int/lit8 v1, v2, 0xa

    .line 529
    .local v1, tens:I
    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v3, v1, 0xa

    sub-int v0, v2, v3

    .line 530
    .local v0, ones:I
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    return v2
.end method

.method public getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "time"

    .prologue
    .line 438
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 439
    :cond_0
    const/4 v4, 0x0

    .line 496
    :goto_0
    return-object v4

    .line 442
    :cond_1
    new-instance v4, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;

    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {v4, v7}, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;-><init>(Lcom/android/mms/ui/BookmarkFragment;)V

    .line 444
    .local v4, ret:Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    const/4 v3, 0x0

    .line 445
    .local v3, mtiByte:B
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->getDeliveryPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/mms/ui/BookmarkFragment$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 449
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    .line 451
    .local v1, encoding:I
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p3, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 466
    .local v6, userData:[B
    :goto_1
    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 467
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa0

    if-le v7, v8, :cond_2

    .line 469
    const/4 v4, 0x0

    goto :goto_0

    .line 452
    .end local v6           #userData:[B
    :catch_0
    move-exception v2

    .line 456
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, p3, v7}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 457
    .restart local v6       #userData:[B
    const/4 v1, 0x3

    goto :goto_1

    .line 458
    .end local v6           #userData:[B
    :catch_1
    move-exception v5

    .line 459
    .local v5, uex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM DeliveryPduGenerator"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/4 v4, 0x0

    goto :goto_0

    .line 479
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v5           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #userData:[B
    :cond_2
    const/16 v7, 0x12

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 492
    :goto_2
    invoke-direct {p0, p4, p5, v0}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->writeTimeStampStringForDate(JLjava/io/ByteArrayOutputStream;)V

    .line 494
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v0, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 495
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v4, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedMessage:[B

    goto :goto_0

    .line 481
    :cond_3
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8c

    if-le v7, v8, :cond_4

    .line 483
    const/4 v4, 0x0

    goto :goto_0

    .line 488
    :cond_4
    sget-boolean v7, Lmiui/os/Build;->IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

    if-eqz v7, :cond_5

    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_5
    const/16 v7, 0xb

    goto :goto_3
.end method
