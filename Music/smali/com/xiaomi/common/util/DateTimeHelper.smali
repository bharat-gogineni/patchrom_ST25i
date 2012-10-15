.class public Lcom/xiaomi/common/util/DateTimeHelper;
.super Ljava/lang/Object;
.source "DateTimeHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "common/DateTimeHelper"

.field static final TAG:Ljava/lang/String; = null

.field public static final sBeijingTimeZone:Ljava/util/TimeZone; = null

.field public static final sDayInMilliseconds:J = 0x5265c00L

.field public static final sDayInMinutes:J = 0x5a0L

.field public static final sHourInMilliseconds:J = 0x36ee80L

.field public static final sHourInMinutes:J = 0x3cL

.field public static final sMinuteInMilliseconds:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/xiaomi/common/util/DateTimeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/DateTimeHelper;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/util/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "src"
    .parameter "pattern"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/text/ParseException;
    sget-object v2, Lcom/xiaomi/common/util/DateTimeHelper;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getCurrentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pattern"

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/xiaomi/common/util/DateTimeHelper;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrentTiemstamp()J
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/common/util/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getElapsedMinutesFromHour()J
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/xiaomi/common/util/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v0

    .line 70
    .local v0, timestamp:J
    invoke-static {v0, v1}, Lcom/xiaomi/common/util/DateTimeHelper;->getElapsedMinutesFromHour(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final getElapsedMinutesFromHour(J)J
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/xiaomi/common/util/DateTimeHelper;->getElapsedMinutesFromToday(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public static final getElapsedMinutesFromToday()J
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/xiaomi/common/util/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v0

    .line 55
    .local v0, timestamp:J
    invoke-static {v0, v1}, Lcom/xiaomi/common/util/DateTimeHelper;->getElapsedMinutesFromToday(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final getElapsedMinutesFromToday(J)J
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/xiaomi/common/util/DateTimeHelper;->getTodayStartTimestamp(J)J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTimeString(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "time"
    .parameter "pattern"

    .prologue
    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getTodayStartTimestamp()J
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcom/xiaomi/common/util/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v0

    .line 33
    .local v0, timestamp:J
    invoke-static {v0, v1}, Lcom/xiaomi/common/util/DateTimeHelper;->getTodayStartTimestamp(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final getTodayStartTimestamp(J)J
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 40
    const-wide/32 v0, 0x5265c00

    rem-long v0, p0, v0

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static final getTomorrowStartTimestamp(J)J
    .locals 4
    .parameter "timestamp"

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 47
    rem-long v0, p0, v2

    sub-long v0, p0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 7
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    :goto_0
    return-wide v3

    .line 91
    :cond_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 92
    .local v2, gc:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    .local v1, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 95
    sget-object v5, Lcom/xiaomi/common/util/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/text/ParseException;
    const-string v5, "common/DateTimeHelper"

    const-string v6, "Failed to parse date"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static toString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "pattern"

    .prologue
    .line 117
    const-string v0, ""

    .line 118
    .local v0, ret:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 119
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    return-object v0
.end method
