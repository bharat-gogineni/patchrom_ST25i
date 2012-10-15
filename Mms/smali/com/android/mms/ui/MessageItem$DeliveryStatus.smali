.class public final enum Lcom/android/mms/ui/MessageItem$DeliveryStatus;
.super Ljava/lang/Enum;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/MessageItem$DeliveryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field public static final enum FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field public static final enum INFO:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field public static final enum NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field public static final enum PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field public static final enum RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field public static final enum REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field public static final enum SENT:Lcom/android/mms/ui/MessageItem$DeliveryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->INFO:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/ui/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/ui/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->SENT:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const-string v1, "RECEIVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const-string v1, "REJECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->INFO:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->SENT:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->$VALUES:[Lcom/android/mms/ui/MessageItem$DeliveryStatus;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    .locals 1
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->$VALUES:[Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0}, [Lcom/android/mms/ui/MessageItem$DeliveryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    return-object v0
.end method
