.class public abstract Lcom/android/settings/sound/BaseSoundActivity;
.super Landroid/app/Activity;
.source "BaseSoundActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPickerIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, ringtonePickerIntent:Landroid/content/Intent;
    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneType()I

    move-result v1

    .line 29
    .local v1, type:I
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const-string v2, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneTitleId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/sound/BaseSoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {p0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    return-object v0
.end method

.method protected abstract getRingtoneTitleId()I
.end method

.method protected abstract getRingtoneType()I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 43
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneType()I

    move-result v1

    .line 45
    .local v1, type:I
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 46
    .local v0, ringtoneUri:Landroid/net/Uri;
    invoke-static {p0, v1, v0}, Landroid/media/ExtraRingtoneManager;->resolveDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    invoke-static {p0, v1, v0}, Landroid/media/ExtraRingtoneManager;->setRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 49
    .end local v0           #ringtoneUri:Landroid/net/Uri;
    .end local v1           #type:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->finish()V

    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/settings/sound/BaseSoundActivity;->requestWindowFeature(I)Z

    .line 18
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 19
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getPickerIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/sound/BaseSoundActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 20
    return-void
.end method
