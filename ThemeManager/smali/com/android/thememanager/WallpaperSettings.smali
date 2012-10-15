.class public Lcom/android/thememanager/WallpaperSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "WallpaperSettings.java"

# interfaces
.implements Lmiui/app/SDCardMonitor$SDCardStatusListener;


# instance fields
.field private mSDCardMonitor:Lmiui/app/SDCardMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method private checkLiveWallpaperPicker()V
    .locals 5

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.wallpaper.livepicker"

    const-string v4, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, list:Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    :cond_0
    const-string v3, "live_wallpaper"

    invoke-virtual {p0, v3}, Lcom/android/thememanager/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 51
    .local v2, pref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 53
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperSettings;->addPreferencesFromResource(I)V

    .line 23
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperSettings;->checkLiveWallpaperPicker()V

    .line 24
    invoke-static {p0}, Lmiui/app/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lmiui/app/SDCardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/WallpaperSettings;->mSDCardMonitor:Lmiui/app/SDCardMonitor;

    .line 25
    iget-object v0, p0, Lcom/android/thememanager/WallpaperSettings;->mSDCardMonitor:Lmiui/app/SDCardMonitor;

    invoke-virtual {v0, p0}, Lmiui/app/SDCardMonitor;->addListener(Lmiui/app/SDCardMonitor$SDCardStatusListener;)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/WallpaperSettings;->mSDCardMonitor:Lmiui/app/SDCardMonitor;

    invoke-virtual {v0, p0}, Lmiui/app/SDCardMonitor;->removeListener(Lmiui/app/SDCardMonitor$SDCardStatusListener;)V

    .line 36
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onDestroy()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 42
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 0
    .parameter "mount"

    .prologue
    .line 30
    invoke-static {p0}, Lmiui/app/resourcebrowser/util/ResourceHelper;->exit(Landroid/app/Activity;)V

    .line 31
    return-void
.end method
