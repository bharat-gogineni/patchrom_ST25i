.class public final enum Lcom/android/phone/MiuiConstants$CdmaCallState;
.super Ljava/lang/Enum;
.source "MiuiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CdmaCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiConstants$CdmaCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiConstants$CdmaCallState;

.field public static final enum AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

.field public static final enum Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

.field public static final enum Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

.field public static final enum Idle:Lcom/android/phone/MiuiConstants$CdmaCallState;

.field public static final enum ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

.field public static final enum ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

.field public static final enum UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiConstants$CdmaCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->Idle:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 18
    new-instance v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    const-string v1, "UnauthenticatedActive"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/MiuiConstants$CdmaCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 19
    new-instance v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    const-string v1, "AuthenticatedActive"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/MiuiConstants$CdmaCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 20
    new-instance v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    const-string v1, "Holding"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/MiuiConstants$CdmaCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 21
    new-instance v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    const-string v1, "ThreeWayOutgoing"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/MiuiConstants$CdmaCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 22
    new-instance v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    const-string v1, "ThreeWayIncoming"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiConstants$CdmaCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 23
    new-instance v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    const-string v1, "Conference"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiConstants$CdmaCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/phone/MiuiConstants$CdmaCallState;

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Idle:Lcom/android/phone/MiuiConstants$CdmaCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Holding:Lcom/android/phone/MiuiConstants$CdmaCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->$VALUES:[Lcom/android/phone/MiuiConstants$CdmaCallState;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiConstants$CdmaCallState;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiConstants$CdmaCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiConstants$CdmaCallState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/phone/MiuiConstants$CdmaCallState;->$VALUES:[Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiConstants$CdmaCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiConstants$CdmaCallState;

    return-object v0
.end method
