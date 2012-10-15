.class public Lcom/xiaomi/common/monitor/MonitoringData;
.super Ljava/lang/Object;
.source "MonitoringData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    }
.end annotation


# static fields
.field public static final ReportSchedule_Always:I = 0x0

.field public static final ReportSchedule_Daily:I = 0x1

.field public static final ReportSchedule_Once:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static final createDailyFeatureUsageRecord(Ljava/lang/String;)Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    .locals 3
    .parameter "featureName"

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "featureName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    new-instance v0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    const-string v1, "feature/usage"

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public static final createDailyNetworkFlowRecord(Ljava/lang/String;)Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    .locals 3
    .parameter "networkFlow"

    .prologue
    const/4 v2, 0x1

    .line 45
    new-instance v0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    const-string v1, "info/network_flow"

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public static final createDailyNetworkInterfaceRecord(Ljava/lang/String;)Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    .locals 3
    .parameter "interfaces"

    .prologue
    const/4 v2, 0x1

    .line 52
    new-instance v0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    const-string v1, "info/network_interface"

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public static final createPhoneInfoRecord(Ljava/lang/String;)Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;
    .locals 4
    .parameter "XML"

    .prologue
    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM XML"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    new-instance v0, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    const-string v1, "Info/PhoneInfo"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method
