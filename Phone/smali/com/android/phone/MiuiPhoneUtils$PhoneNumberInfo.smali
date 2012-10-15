.class public Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
.super Ljava/lang/Object;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberInfo"
.end annotation


# instance fields
.field public countryCodeAdded:Z

.field public ipPrefixAdded:Z

.field public final isEmergency:Z

.field public final original:Ljava/lang/String;

.field public remberOriginal:Z

.field public toDial:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "numberToDial"
    .parameter "isEmergency"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->original:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->isEmergency:Z

    .line 59
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->original:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->remberOriginal:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->ipPrefixAdded:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->countryCodeAdded:Z

    .line 63
    return-void
.end method
