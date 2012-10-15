.class public Lcom/miui/home/launcher/LauncherPreferenceActivity;
.super Lmiui/preference/BasePreferenceActivity;
.source "LauncherPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCellLayoutSizeList:Landroid/preference/ListPreference;

.field private mCellLayoutSizeOldVal:Ljava/lang/String;

.field private mIconShadow:Landroid/preference/Preference;

.field private mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

.field private mTransformationList:Landroid/preference/ListPreference;

.field private mWallpaperScrollList:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 58
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v6, 0x7f050004

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->addPreferencesFromResource(I)V

    .line 60
    const-string v6, "pref_key_keep_in_memory"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    const-string v6, "pref_key_icon_shadow"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    .line 63
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string v6, "pref_key_transformation_type"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    .line 66
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    const-string v6, "pref_key_checkboxes"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 69
    .local v0, boxes:Landroid/preference/PreferenceGroup;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 70
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_transformation_type"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, defVal:Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_key_transformation_type"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 75
    .end local v4           #defVal:Ljava/lang/String;
    :cond_0
    const-string v6, "pref_key_cell_layout_size"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    .line 76
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 78
    .local v2, cx:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 79
    .local v3, cy:I
    if-ne v2, v9, :cond_4

    if-ne v3, v9, :cond_4

    .line 80
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 86
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeOldVal:Ljava/lang/String;

    .line 87
    sget-boolean v6, Lmiui/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    if-nez v6, :cond_2

    .line 88
    const-string v6, "pref_key_enable_drawing_cache"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_2
    const-string v6, "pref_key_wallpaper_scroll_type"

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    .line 91
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    const-string v6, "pref_key_wallpaper_scroll_type"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 93
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_key_wallpaper_scroll_type"

    const-string v8, "byTheme"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    const-string v7, "byTheme"

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 96
    :cond_3
    return-void

    .line 81
    :cond_4
    const-string v6, "pref_key_cell_layout_size"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    invoke-static {v2, v3}, Lcom/miui/home/launcher/ResConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, cellSize:Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_key_cell_layout_size"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onDestroy()V

    .line 112
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeOldVal:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 115
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 117
    .local v1, launcher:Lcom/miui/home/launcher/Launcher;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->reloadResConfig(Lcom/miui/home/launcher/LauncherApplication;)V

    .line 119
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->finish()V

    .line 123
    .end local v0           #app:Lcom/miui/home/launcher/LauncherApplication;
    .end local v1           #launcher:Lcom/miui/home/launcher/Launcher;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "keep_launcher_in_memory"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_1
    :goto_0
    return v3

    .line 130
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mIconShadow:Landroid/preference/Preference;

    if-ne p1, v4, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 132
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 133
    .end local v0           #app:Lcom/miui/home/launcher/LauncherApplication;
    :cond_3
    instance-of v2, p1, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 134
    check-cast v1, Landroid/preference/ListPreference;

    .line 135
    .local v1, lp:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mKeepInMemoryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keep_launcher_in_memory"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mTransformationList:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mWallpaperScrollList:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherPreferenceActivity;->mCellLayoutSizeList:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
