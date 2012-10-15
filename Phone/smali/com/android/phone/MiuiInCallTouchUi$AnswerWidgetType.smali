.class public final enum Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;
.super Ljava/lang/Enum;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "AnswerWidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

.field public static final enum Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

.field public static final enum Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    const-string v1, "Horizontal"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 47
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    const-string v1, "Vertical"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Horizontal:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->Vertical:Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->$VALUES:[Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->$VALUES:[Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiInCallTouchUi$AnswerWidgetType;

    return-object v0
.end method
