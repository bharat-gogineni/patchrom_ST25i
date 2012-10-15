.class public Lcom/miui/player/ui/MusicSettings;
.super Landroid/preference/PreferenceActivity;
.source "MusicSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mFilterCategoryPref:Landroid/preference/Preference;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field mPlayAndDownload:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 169
    new-instance v0, Lcom/miui/player/ui/MusicSettings$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicSettings$1;-><init>(Lcom/miui/player/ui/MusicSettings;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private removeChildPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceGroup"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 100
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 101
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 102
    .local v1, childPreference:Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1           #childPreference:Landroid/preference/Preference;
    invoke-direct {p0, v1, p2}, Lcom/miui/player/ui/MusicSettings;->removeChildPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeChildPreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 2
    .parameter "preferenceGroup"
    .parameter "key"

    .prologue
    .line 87
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 88
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/MusicSettings;->removeChildPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v1

    .line 91
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->addPreferencesFromResource(I)V

    .line 42
    const-string v4, "other_connect_album"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    const-string v4, "other_connect_lyric"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    const-string v4, "other_connect_listen"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    const-string v4, "filter_by_size"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v4, "filter_by_duration"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const-string v4, "filter_music_folder"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    const-string v4, "android_album"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v4, "play_and_download"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const-string v4, "screen_bright_wake"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v4, "keep_quit_location"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    const-string v4, "display_lyric"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    const-string v4, "display_album"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v4, "shake_while_screen_on"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    const-string v4, "display_spectrogram"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/TwoStatePreference;

    .line 58
    .local v3, specPref:Landroid/preference/TwoStatePreference;
    const-string v4, "fade_effect_active"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    .line 60
    .local v1, fadePref:Landroid/preference/TwoStatePreference;
    sget-boolean v4, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 62
    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 63
    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 64
    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 70
    :goto_0
    const-string v4, "music_filter"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/MusicSettings;->mFilterCategoryPref:Landroid/preference/Preference;

    .line 71
    const-string v4, "play_and_download"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MusicSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/MusicSettings;->mPlayAndDownload:Landroid/preference/Preference;

    .line 73
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 75
    const v4, 0x7f090013

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 76
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/miui/player/util/Utils;->isOnlineVaild()Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 81
    .local v2, screen:Landroid/preference/PreferenceScreen;
    const-string v4, "mobile_connect_settings"

    invoke-direct {p0, v2, v4}, Lcom/miui/player/ui/MusicSettings;->removeChildPreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 82
    const-string v4, "play_and_download"

    invoke-direct {p0, v2, v4}, Lcom/miui/player/ui/MusicSettings;->removeChildPreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 84
    .end local v2           #screen:Landroid/preference/PreferenceScreen;
    :cond_1
    return-void

    .line 66
    .end local v0           #bar:Landroid/app/ActionBar;
    :cond_2
    invoke-virtual {v3, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicSettings;->finish()V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 135
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, key:Ljava/lang/String;
    invoke-static {p0, v1, p2}, Lcom/miui/player/util/PreferenceCache;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v2, "display_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "other_connect_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    const-string v2, "android_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-static {}, Lcom/miui/player/model/AlbumListAdapter;->removeCache()V

    .line 166
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 152
    :cond_2
    const-string v2, "display_lyric"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "lyric"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "shake"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.updateshake"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v2, "filter_by_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "filter_by_size_progress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "filter_by_duration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "filter_by_duration_progress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    :cond_5
    invoke-static {p0}, Lcom/miui/player/util/PlaylistRecoverer;->instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/util/PlaylistRecoverer;->markForceRecover()V

    .line 164
    invoke-static {p0}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/util/FolderProvider;->markForceUpdate()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/miui/player/ui/MusicSettings;->mMountReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 129
    return-void
.end method
