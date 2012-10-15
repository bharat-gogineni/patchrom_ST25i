.class public final Lcom/duokan/airkan/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static mIsRelease:Z

.field private static mLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/duokan/airkan/common/Log;->mLogLevel:I

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/duokan/airkan/common/Log;->mIsRelease:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 44
    sget v0, Lcom/duokan/airkan/common/Log;->mLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 20
    sget v0, Lcom/duokan/airkan/common/Log;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 36
    sget v0, Lcom/duokan/airkan/common/Log;->mLogLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method public static setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 16
    sput p0, Lcom/duokan/airkan/common/Log;->mLogLevel:I

    .line 17
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 28
    sget v0, Lcom/duokan/airkan/common/Log;->mLogLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method
