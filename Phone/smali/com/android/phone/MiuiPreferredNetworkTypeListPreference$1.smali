.class Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;
.super Ljava/lang/Object;
.source "MiuiPreferredNetworkTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    iget-object v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$1;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    #getter for: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->mCurrentNetworkType:I
    invoke-static {v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$100(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$200(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;Ljava/lang/String;)V

    .line 153
    return-void
.end method
