.class final enum Lcom/android/phone/MiuiInCallAnswerWidget$State;
.super Ljava/lang/Enum;
.source "MiuiInCallAnswerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiInCallAnswerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiInCallAnswerWidget$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiInCallAnswerWidget$State;

.field public static final enum Down:Lcom/android/phone/MiuiInCallAnswerWidget$State;

.field public static final enum Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

.field public static final enum Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;

    const-string v1, "Init"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiInCallAnswerWidget$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 92
    new-instance v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;

    const-string v1, "Up"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiInCallAnswerWidget$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 93
    new-instance v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;

    const-string v1, "Down"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/MiuiInCallAnswerWidget$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Down:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/MiuiInCallAnswerWidget$State;

    sget-object v1, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Init:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Up:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/MiuiInCallAnswerWidget$State;->Down:Lcom/android/phone/MiuiInCallAnswerWidget$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->$VALUES:[Lcom/android/phone/MiuiInCallAnswerWidget$State;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiInCallAnswerWidget$State;
    .locals 1
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiInCallAnswerWidget$State;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/phone/MiuiInCallAnswerWidget$State;->$VALUES:[Lcom/android/phone/MiuiInCallAnswerWidget$State;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiInCallAnswerWidget$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiInCallAnswerWidget$State;

    return-object v0
.end method
