.class final enum Lcom/android/phone/MiuiInCallTouchUi$PanelState;
.super Ljava/lang/Enum;
.source "MiuiInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PanelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/MiuiInCallTouchUi$PanelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field public static final enum AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field public static final enum DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field public static final enum None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

.field public static final enum ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/MiuiInCallTouchUi$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 52
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    const-string v1, "DialerPanel"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/MiuiInCallTouchUi$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 53
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    const-string v1, "ToolsPanel"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/MiuiInCallTouchUi$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 54
    new-instance v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    const-string v1, "AudioModePanel"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/MiuiInCallTouchUi$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->None:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->DialerPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->ToolsPanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->AudioModePanel:Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->$VALUES:[Lcom/android/phone/MiuiInCallTouchUi$PanelState;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/MiuiInCallTouchUi$PanelState;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/MiuiInCallTouchUi$PanelState;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/phone/MiuiInCallTouchUi$PanelState;->$VALUES:[Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    invoke-virtual {v0}, [Lcom/android/phone/MiuiInCallTouchUi$PanelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/MiuiInCallTouchUi$PanelState;

    return-object v0
.end method
