.class public Lcom/miui/player/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final LONG_EMPTY_ARRAY:[J

.field public static final LONG_EMPTY_OBJ_ARRAY:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    new-array v0, v1, [J

    sput-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 45
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_OBJ_ARRAY:[Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 12
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 12
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static varargs debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 18
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #imei:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #imei:Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 23
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOnlineVaild()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOutOfTime(JJ)Z
    .locals 4
    .parameter "last"
    .parameter "interval"

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    .local v0, current:J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    sub-long v2, v0, p0

    cmp-long v2, v2, p2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
