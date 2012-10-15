.class public Lcom/android/settings/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTracker:Lmiui/analytics/XiaomiAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getIMEPackageName(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x0

    .line 53
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v3

    .line 56
    :cond_1
    const-string v4, "default_input_method"

    invoke-static {p2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, currentInputMethodId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 61
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private trackCallLog()V
    .locals 19

    .prologue
    .line 70
    const-wide/32 v11, 0x5265c00

    .line 71
    .local v11, dayInterval:J
    const-wide/16 v8, 0x0

    .line 72
    .local v8, callTotalDuration:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 73
    .local v7, calendar:Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 76
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 77
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 78
    .local v16, startQueryTime:J
    add-long v14, v16, v11

    .line 80
    .local v14, endQueryTime:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/AnalyticsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const-string v4, "date>? and date<?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const/4 v6, 0x1

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 85
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 87
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {v10, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 88
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "duration"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-long/2addr v8, v1

    goto :goto_0

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v2, "callTotalDuration"

    invoke-virtual {v1, v2, v8, v9}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    if-eqz v10, :cond_1

    .line 96
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v13

    .line 93
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "AnalyticsReceiver"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v10, :cond_1

    .line 96
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 95
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    .line 96
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private trackIME()V
    .locals 5

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/settings/AnalyticsReceiver;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/settings/AnalyticsReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/AnalyticsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/AnalyticsReceiver;->getIMEPackageName(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    .local v0, curIme:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v3, "DefaultInputMethod"

    invoke-virtual {v2, v3, v0}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .end local v0           #curIme:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/AnalyticsReceiver;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lmiui/analytics/XiaomiAnalytics;->getInstance()Lmiui/analytics/XiaomiAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    .line 30
    iget-object v0, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v0, p1}, Lmiui/analytics/XiaomiAnalytics;->startSession(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/AnalyticsReceiver;->trackCallLog()V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/AnalyticsReceiver;->trackIME()V

    .line 38
    iget-object v0, p0, Lcom/android/settings/AnalyticsReceiver;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v0}, Lmiui/analytics/XiaomiAnalytics;->endSession()V

    .line 39
    return-void
.end method
