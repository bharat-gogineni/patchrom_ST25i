.class Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;
.super Ljava/lang/Object;
.source "MiuiManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiManageConferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionInfo"
.end annotation


# instance fields
.field public callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public connection:Lcom/android/internal/telephony/Connection;

.field final synthetic this$0:Lcom/android/phone/MiuiManageConferenceUtils;

.field public view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiManageConferenceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiManageConferenceUtils;Lcom/android/phone/MiuiManageConferenceUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;-><init>(Lcom/android/phone/MiuiManageConferenceUtils;)V

    return-void
.end method
