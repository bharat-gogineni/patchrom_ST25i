.class Lcom/android/phone/sip/MiuiSipSettings$1;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/MiuiSipSettings;->registerForSipCallOptionPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/MiuiSipSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/sip/MiuiSipSettings$1;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/sip/MiuiSipSettings$1;->this$0:Lcom/android/phone/sip/MiuiSipSettings;

    #calls: Lcom/android/phone/sip/MiuiSipSettings;->handleSipCallOptionsChange(Ljava/lang/Object;)V
    invoke-static {v0, p2}, Lcom/android/phone/sip/MiuiSipSettings;->access$000(Lcom/android/phone/sip/MiuiSipSettings;Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method
