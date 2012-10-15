.class public final Lcom/miui/player/util/LocaleSortUtils;
.super Ljava/lang/Object;
.source "LocaleSortUtils.java"


# static fields
.field private static sLocalUtils:Lmiui/util/LocaleUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lmiui/util/LocaleUtils;->getIntance()Lmiui/util/LocaleUtils;

    move-result-object v0

    sput-object v0, Lcom/miui/player/util/LocaleSortUtils;->sLocalUtils:Lmiui/util/LocaleUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayName"

    .prologue
    .line 13
    sget-object v1, Lcom/miui/player/util/LocaleSortUtils;->sLocalUtils:Lmiui/util/LocaleUtils;

    invoke-virtual {v1, p0}, Lmiui/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
