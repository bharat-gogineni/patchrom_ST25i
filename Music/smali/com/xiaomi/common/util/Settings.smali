.class Lcom/xiaomi/common/util/Settings;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# static fields
.field public static DEFAULT_SERVER_URL:Ljava/lang/String;

.field public static appName:Ljava/lang/String;

.field public static appVersionName:Ljava/lang/String;

.field public static channel:Ljava/lang/String;

.field public static phoneType:Ljava/lang/String;

.field public static sdkVersion:Ljava/lang/String;

.field public static serverUrl:Ljava/lang/String;

.field public static uuid:Ljava/lang/String;

.field public static versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const-string v0, "http://xshare.api.xiaomi.com/xShare"

    sput-object v0, Lcom/xiaomi/common/util/Settings;->DEFAULT_SERVER_URL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
