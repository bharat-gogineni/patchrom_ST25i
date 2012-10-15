.class public final enum Lcom/android/phone/MiuiConstants$AudioMode;
.super Ljava/lang/Enum;
.source "MiuiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiConstants$AudioMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiConstants$AudioMode;

.field public static final enum Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

.field public static final enum Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

.field public static final enum Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

.field public static final enum Speaker:Lcom/android/phone/MiuiConstants$AudioMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/android/phone/MiuiConstants$AudioMode;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiConstants$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 6
    new-instance v0, Lcom/android/phone/MiuiConstants$AudioMode;

    const-string v1, "Bluetooth"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiConstants$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 7
    new-instance v0, Lcom/android/phone/MiuiConstants$AudioMode;

    const-string v1, "Earpiece"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/MiuiConstants$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 8
    new-instance v0, Lcom/android/phone/MiuiConstants$AudioMode;

    const-string v1, "Speaker"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/MiuiConstants$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/MiuiConstants$AudioMode;

    sget-object v1, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->$VALUES:[Lcom/android/phone/MiuiConstants$AudioMode;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiConstants$AudioMode;
    .locals 1
    .parameter

    .prologue
    .line 4
    const-class v0, Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiConstants$AudioMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiConstants$AudioMode;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->$VALUES:[Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiConstants$AudioMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiConstants$AudioMode;

    return-object v0
.end method
