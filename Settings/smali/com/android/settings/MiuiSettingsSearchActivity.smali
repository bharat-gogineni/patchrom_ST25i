.class public Lcom/android/settings/MiuiSettingsSearchActivity;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettingsSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettingsSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 24
    invoke-static {v0}, Lcom/android/settings/FrequentlySet;->getShowIndex(I)I

    move-result v0

    .line 25
    invoke-static {}, Lcom/android/settings/FrequentlySet;->getHeaderIds()[I

    move-result-object v1

    .line 26
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    aget v0, v1, v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/MiuiSettingsSearchActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 31
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 32
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const/4 v2, 0x0

    iget v0, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/MiuiSettingsSearchActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 34
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettingsSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettingsSearchActivity;->finish()V

    .line 42
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
