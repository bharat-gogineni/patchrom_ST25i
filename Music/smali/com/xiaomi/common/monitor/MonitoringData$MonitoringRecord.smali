.class public Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
.super Ljava/lang/Object;
.source "MonitoringData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/monitor/MonitoringData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitoringRecord"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mReportSchedule:I

.field private mRowId:J

.field private mTimestamp:J

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "dbIterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dbIterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    const-string v0, "key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 85
    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 88
    const-string v0, "schedule"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mReportSchedule:I

    .line 89
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mTimestamp:J

    .line 90
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mRowId:J

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "schedule"
    .parameter "storeInSqlDb"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 68
    if-eqz p4, :cond_2

    .line 69
    iget-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 72
    :cond_2
    iput p3, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mReportSchedule:I

    .line 73
    sget-object v0, Lcom/xiaomi/common/util/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mTimestamp:J

    .line 74
    if-eqz p4, :cond_3

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mRowId:J

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mRowId:J

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getReportSchedule()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mReportSchedule:I

    return v0
.end method

.method public getRowId()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mRowId:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mTimestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    const-string v0, "[key:%s], [value:%s], [schedule:%d], [timestampe:%s], [rowid:%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mReportSchedule:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
