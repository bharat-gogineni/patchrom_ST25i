.class public Lcom/xiaomi/common/util/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# static fields
.field public static final CAUGHT_EXCEPTION:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "common/ExceptionHandler"

.field public static final UNCAUGHT_EXCEPTION:I

.field private static initialized:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/common/util/ExceptionHandler;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handlerException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/common/util/ExceptionHandler;->handlerException(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public static handlerException(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 8
    .parameter "thread"
    .parameter "ex"
    .parameter "type"
    .parameter "extraMessage"

    .prologue
    .line 82
    sget-boolean v5, Lcom/xiaomi/common/util/ExceptionHandler;->initialized:Z

    if-nez v5, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-nez p1, :cond_2

    .line 86
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the throwable is null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 92
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 93
    .local v4, result:Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 94
    .local v3, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, callstack:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "do"

    const-string v7, "error.report"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uuid"

    sget-object v7, Lcom/xiaomi/common/util/Settings;->uuid:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "phone_type"

    sget-object v7, Lcom/xiaomi/common/util/Settings;->phoneType:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sdk_version"

    sget-object v7, Lcom/xiaomi/common/util/Settings;->sdkVersion:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_name"

    sget-object v7, Lcom/xiaomi/common/util/Settings;->appName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_version_name"

    sget-object v7, Lcom/xiaomi/common/util/Settings;->appVersionName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "channel"

    sget-object v7, Lcom/xiaomi/common/util/Settings;->channel:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "version_code"

    sget v7, Lcom/xiaomi/common/util/Settings;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "callstack"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "extra"

    invoke-direct {v5, v6, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :try_start_0
    sget-object v5, Lcom/xiaomi/common/util/ExceptionHandler;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/xiaomi/common/util/Settings;->serverUrl:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/xiaomi/common/util/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    const-string v5, "common/ExceptionHandler"

    const-string v6, "error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static registerExceptionHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "uuid"
    .parameter "channel"

    .prologue
    .line 34
    sget-object v0, Lcom/xiaomi/common/util/Settings;->DEFAULT_SERVER_URL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/xiaomi/common/util/ExceptionHandler;->registerExceptionHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public static registerExceptionHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "uuid"
    .parameter "url"
    .parameter "channel"
    .parameter "replace"

    .prologue
    .line 50
    const/4 v5, 0x1

    sput-boolean v5, Lcom/xiaomi/common/util/ExceptionHandler;->initialized:Z

    .line 51
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 52
    .local v2, originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v5, v2, Lcom/xiaomi/common/util/DefaultExceptionHandler;

    if-eqz v5, :cond_0

    if-nez p4, :cond_0

    .line 75
    .end local v2           #originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    :goto_0
    return-void

    .line 55
    .restart local v2       #originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_0
    new-instance v1, Lcom/xiaomi/common/util/DefaultExceptionHandler;

    if-eqz p4, :cond_1

    const/4 v2, 0x0

    .end local v2           #originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    invoke-direct {v1, v2}, Lcom/xiaomi/common/util/DefaultExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    .local v1, handler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 59
    sput-object p0, Lcom/xiaomi/common/util/ExceptionHandler;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 62
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    sput-object p1, Lcom/xiaomi/common/util/Settings;->uuid:Ljava/lang/String;

    .line 63
    sput-object p2, Lcom/xiaomi/common/util/Settings;->serverUrl:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/xiaomi/common/util/Settings;->appName:Ljava/lang/String;

    .line 65
    sget-object v5, Lcom/xiaomi/common/util/Settings;->appName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 66
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/xiaomi/common/util/Settings;->appVersionName:Ljava/lang/String;

    .line 67
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v5, Lcom/xiaomi/common/util/Settings;->versionCode:I

    .line 68
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v5, Lcom/xiaomi/common/util/Settings;->phoneType:Ljava/lang/String;

    .line 69
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v5, Lcom/xiaomi/common/util/Settings;->sdkVersion:Ljava/lang/String;

    .line 70
    sput-object p3, Lcom/xiaomi/common/util/Settings;->channel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "common/ExceptionHandler"

    const-string v6, "error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static registerExceptionHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "uuid"
    .parameter "channel"
    .parameter "replace"

    .prologue
    .line 45
    sget-object v0, Lcom/xiaomi/common/util/Settings;->DEFAULT_SERVER_URL:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/xiaomi/common/util/ExceptionHandler;->registerExceptionHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public static sendMessageAsync(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 2
    .parameter "thread"
    .parameter "ex"
    .parameter "type"
    .parameter "extraMessage"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/common/util/ExceptionHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/common/util/ExceptionHandler$1;-><init>(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method
