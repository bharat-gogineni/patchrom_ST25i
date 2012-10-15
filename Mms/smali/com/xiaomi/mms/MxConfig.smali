.class public Lcom/xiaomi/mms/MxConfig;
.super Ljava/lang/Object;
.source "MxConfig.java"


# static fields
.field public static final ACTIVATE_RETRY_INTERVALS:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mms/MxConfig;->ACTIVATE_RETRY_INTERVALS:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xe0t 0x93t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x4ft 0x12t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x77t 0x1bt 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
