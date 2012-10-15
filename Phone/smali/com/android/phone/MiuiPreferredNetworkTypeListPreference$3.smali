.class Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$3;
.super Ljava/lang/Object;
.source "MiuiPreferredNetworkTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$networkType:I


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$3;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    iput p2, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$3;->val$networkType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$3;->this$0:Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;

    iget v1, p0, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference$3;->val$networkType:I

    #calls: Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->handleClick(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;->access$300(Lcom/android/phone/MiuiPreferredNetworkTypeListPreference;I)V

    .line 143
    return-void
.end method
