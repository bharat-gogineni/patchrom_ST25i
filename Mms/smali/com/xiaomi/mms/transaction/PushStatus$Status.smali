.class public final enum Lcom/xiaomi/mms/transaction/PushStatus$Status;
.super Ljava/lang/Enum;
.source "PushStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mms/transaction/PushStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/mms/transaction/PushStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/mms/transaction/PushStatus$Status;

.field public static final enum CONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

.field public static final enum CONNECTING:Lcom/xiaomi/mms/transaction/PushStatus$Status;

.field public static final enum DISCONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

.field public static final enum INIT:Lcom/xiaomi/mms/transaction/PushStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mms/transaction/PushStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->INIT:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    .line 33
    new-instance v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/mms/transaction/PushStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTING:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    .line 34
    new-instance v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/mms/transaction/PushStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    .line 35
    new-instance v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/mms/transaction/PushStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->DISCONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/mms/transaction/PushStatus$Status;

    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus$Status;->INIT:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTING:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus$Status;->CONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/mms/transaction/PushStatus$Status;->DISCONNECTED:Lcom/xiaomi/mms/transaction/PushStatus$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->$VALUES:[Lcom/xiaomi/mms/transaction/PushStatus$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mms/transaction/PushStatus$Status;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/mms/transaction/PushStatus$Status;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/xiaomi/mms/transaction/PushStatus$Status;->$VALUES:[Lcom/xiaomi/mms/transaction/PushStatus$Status;

    invoke-virtual {v0}, [Lcom/xiaomi/mms/transaction/PushStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mms/transaction/PushStatus$Status;

    return-object v0
.end method
