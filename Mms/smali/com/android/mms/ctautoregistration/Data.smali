.class public Lcom/android/mms/ctautoregistration/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private final DATA_PREFS:Ljava/lang/String;

.field private final IMSI_PREFS:Ljava/lang/String;

.field private final REGISTERED_PREFS:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "data_Preferences"

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/Data;->DATA_PREFS:Ljava/lang/String;

    .line 11
    const-string v0, "imsi"

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/Data;->IMSI_PREFS:Ljava/lang/String;

    .line 12
    const-string v0, "registered"

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/Data;->REGISTERED_PREFS:Ljava/lang/String;

    .line 15
    const-string v0, "data_Preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ctautoregistration/Data;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public getOldImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/mms/ctautoregistration/Data;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "imsi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered()Z
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ctautoregistration/Data;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "registered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 2
    .parameter "imsi"

    .prologue
    .line 23
    iget-object v1, p0, Lcom/android/mms/ctautoregistration/Data;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "imsi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method

.method public setRegistered(Z)V
    .locals 2
    .parameter "registered"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/android/mms/ctautoregistration/Data;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "registered"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    return-void
.end method
