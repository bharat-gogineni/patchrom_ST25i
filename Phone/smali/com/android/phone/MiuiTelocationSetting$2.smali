.class Lcom/android/phone/MiuiTelocationSetting$2;
.super Ljava/lang/Object;
.source "MiuiTelocationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiTelocationSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiTelocationSetting;

.field final synthetic val$countryCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiTelocationSetting;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/MiuiTelocationSetting$2;->this$0:Lcom/android/phone/MiuiTelocationSetting;

    iput-object p2, p0, Lcom/android/phone/MiuiTelocationSetting$2;->val$countryCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/MiuiTelocationSetting$2;->this$0:Lcom/android/phone/MiuiTelocationSetting;

    iget-object v1, p0, Lcom/android/phone/MiuiTelocationSetting$2;->val$countryCode:Ljava/lang/String;

    #calls: Lcom/android/phone/MiuiTelocationSetting;->setCountryCode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiTelocationSetting;->access$200(Lcom/android/phone/MiuiTelocationSetting;Ljava/lang/String;)V

    .line 82
    return-void
.end method
