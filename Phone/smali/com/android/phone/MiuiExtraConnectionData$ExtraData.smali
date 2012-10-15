.class Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
.super Ljava/lang/Object;
.source "MiuiExtraConnectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiExtraConnectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraData"
.end annotation


# instance fields
.field public digitsPressed:Ljava/lang/String;

.field public firewallCode:I

.field public origDialAddress:Ljava/lang/String;

.field public suppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->digitsPressed:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->firewallCode:I

    .line 37
    iput-object v1, p0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->origDialAddress:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->suppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiExtraConnectionData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;-><init>()V

    return-void
.end method
