.class public final enum Lcom/android/phone/MiuiSimContacts$SimContactOP;
.super Ljava/lang/Enum;
.source "MiuiSimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimContactOP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiSimContacts$SimContactOP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiSimContacts$SimContactOP;

.field public static final enum DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

.field public static final enum IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiSimContacts$SimContactOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    .line 45
    new-instance v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;

    const-string v1, "IMPORT"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiSimContacts$SimContactOP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/MiuiSimContacts$SimContactOP;

    sget-object v1, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->$VALUES:[Lcom/android/phone/MiuiSimContacts$SimContactOP;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiSimContacts$SimContactOP;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiSimContacts$SimContactOP;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->$VALUES:[Lcom/android/phone/MiuiSimContacts$SimContactOP;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiSimContacts$SimContactOP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiSimContacts$SimContactOP;

    return-object v0
.end method
