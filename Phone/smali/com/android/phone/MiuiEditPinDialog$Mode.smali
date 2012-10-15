.class public final enum Lcom/android/phone/MiuiEditPinDialog$Mode;
.super Ljava/lang/Enum;
.source "MiuiEditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiEditPinDialog$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiEditPinDialog$Mode;

.field public static final enum FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field public static final enum ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field public static final enum PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field public static final enum PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field public static final enum PUK1:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field public static final enum PUK2:Lcom/android/phone/MiuiEditPinDialog$Mode;

.field public static final enum Unknow:Lcom/android/phone/MiuiEditPinDialog$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    const-string v1, "Unknow"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiEditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->Unknow:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 53
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    const-string v1, "ICC_LOCK"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/MiuiEditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 54
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    const-string v1, "FDN"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/MiuiEditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 55
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    const-string v1, "PIN1"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/MiuiEditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 56
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    const-string v1, "PIN2"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/MiuiEditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 57
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    const-string v1, "PUK1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiEditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 58
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    const-string v1, "PUK2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiEditPinDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/phone/MiuiEditPinDialog$Mode;

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->Unknow:Lcom/android/phone/MiuiEditPinDialog$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/MiuiEditPinDialog$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->FDN:Lcom/android/phone/MiuiEditPinDialog$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/MiuiEditPinDialog$Mode;->PIN2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK1:Lcom/android/phone/MiuiEditPinDialog$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/MiuiEditPinDialog$Mode;->PUK2:Lcom/android/phone/MiuiEditPinDialog$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->$VALUES:[Lcom/android/phone/MiuiEditPinDialog$Mode;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiEditPinDialog$Mode;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiEditPinDialog$Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiEditPinDialog$Mode;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/MiuiEditPinDialog$Mode;->$VALUES:[Lcom/android/phone/MiuiEditPinDialog$Mode;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiEditPinDialog$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiEditPinDialog$Mode;

    return-object v0
.end method
