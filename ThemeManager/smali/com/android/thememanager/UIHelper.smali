.class public Lcom/android/thememanager/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 91
    const-wide/16 v0, -0x1

    .line 92
    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 96
    const/4 v6, 0x7

    if-ne v2, v6, :cond_0

    move v2, v5

    .line 100
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    const-string v2, "miui.app.resourcebrowser.USING_PICKER"

    const-string v6, "com.android.thememanager.extra_select_resource"

    invoke-virtual {v8, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    :goto_1
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->getRingtoneType(J)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v2, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 132
    const-string v2, ""

    .line 133
    const-string v2, ""

    .line 134
    const-wide/16 v6, 0x2

    cmp-long v6, v0, v6

    if-nez v6, :cond_a

    .line 135
    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "/system/media/wallpaper"

    aput-object v7, v6, v4

    const-string v7, "/data/media/wallpaper"

    aput-object v7, v6, v3

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v7, v6, v5

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v5, v6, v9

    .line 139
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    .line 187
    :goto_2
    const-wide/32 v9, 0x8000

    cmp-long v2, v0, v9

    if-nez v2, :cond_1

    .line 188
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    const-string v2, "miui.app.resourcebrowser.SHOW_RINGTONE_NAME"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    :cond_1
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v9, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "android.intent.extra.SHOW_COMPONENT_SIZE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_2
    const-string v8, "miui.app.resourcebrowser.RESOURCE_SET_NAME"

    invoke-virtual {p0, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "miui.app.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->getResourceSetCategory(J)I

    move-result v8

    invoke-virtual {p0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v2, "miui.app.resourcebrowser.DISPLAY_TYPE"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->getDisplayType(J)I

    move-result v8

    invoke-virtual {p0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v2, "miui.app.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getResourceTypeParameter(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "miui.app.resourcebrowser.CATEGORY_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isCategorySupported(J)Z

    move-result v8

    invoke-virtual {p0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-wide/32 v8, 0x10000

    cmp-long v2, v0, v8

    if-eqz v2, :cond_3

    const-wide/32 v8, 0x20000

    cmp-long v2, v0, v8

    if-nez v2, :cond_4

    .line 204
    :cond_3
    const-string v8, "miui.app.resourcebrowser.CATEGORY_SUPPORTED"

    const-string v2, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_3
    invoke-virtual {p0, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    :cond_4
    const-string v2, "miui.app.resourcebrowser.VERSION_SUPPORTED"

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isVersionSupported(J)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    const-string v2, "miui.app.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    const-string v2, "miui.app.resourcebrowser.DOWNLOAD_FOLDER"

    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "miui.app.resourcebrowser.DOWNLOAD_FOLDER_EXTRA"

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v2, "miui.app.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "miui.app.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "miui.app.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "miui.app.resourcebrowser.ONLINE_LIST_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/OnlineThemeResourceListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "miui.app.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 217
    :cond_5
    const-string v2, "miui.app.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_4
    const-string v2, "miui.app.resourcebrowser.RECOMMENDATION_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "miui.app.resourcebrowser.RECOMMENDATION_LIST_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/RecommendedThemeResourceListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v2

    .line 225
    sget v3, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 226
    const-string v5, "miui.app.resourcebrowser.PLATFORM_VERSION_START"

    invoke-virtual {p0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v2, "miui.app.resourcebrowser.PLATFORM_VERSION_END"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 233
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_14

    .line 234
    const-string v0, "preview_cover_"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v0, "cover_preview"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    .line 236
    :goto_5
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 237
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 102
    :pswitch_1
    const-wide/16 v0, 0x100

    .line 103
    goto/16 :goto_0

    .line 105
    :pswitch_2
    const-wide/16 v0, 0x200

    .line 106
    goto/16 :goto_0

    .line 108
    :pswitch_3
    const-wide/16 v0, 0x400

    goto/16 :goto_0

    .line 112
    :cond_6
    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    const-wide/16 v0, 0x2

    goto/16 :goto_1

    .line 114
    :cond_7
    const-string v0, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    const-string v0, "android.intent.extra.SHOW_COMPONENT_NAME"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "clock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    const-wide/32 v0, 0x10000

    .line 121
    :goto_6
    const-string v2, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v2, "thememanager.local.clock_photo_size_flag"

    const-string v6, "android.intent.extra.SHOW_COMPONENT_SIZE"

    invoke-virtual {v8, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    :cond_8
    const-wide/32 v0, 0x20000

    goto :goto_6

    .line 125
    :cond_9
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto/16 :goto_1

    .line 140
    :cond_a
    const-wide/16 v6, 0x4

    cmp-long v6, v0, v6

    if-nez v6, :cond_b

    .line 141
    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "/system/media/lockscreen"

    aput-object v7, v6, v4

    const-string v7, "/data/media/lockscreen"

    aput-object v7, v6, v3

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    aput-object v7, v6, v5

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    aput-object v5, v6, v9

    .line 145
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2

    .line 146
    :cond_b
    const-wide/16 v6, 0x40

    cmp-long v6, v0, v6

    if-eqz v6, :cond_c

    const-wide/16 v6, 0x100

    cmp-long v6, v0, v6

    if-nez v6, :cond_d

    .line 147
    :cond_c
    new-array v6, v10, [Ljava/lang/String;

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

    aput-object v7, v6, v4

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RINGTONE_PATH:Ljava/lang/String;

    aput-object v7, v6, v3

    const-string v7, "/system/media/audio/ringtones"

    aput-object v7, v6, v5

    const-string v5, "/data/media/audio/ringtones"

    aput-object v5, v6, v9

    .line 151
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2

    .line 152
    :cond_d
    const-wide/16 v6, 0x200

    cmp-long v6, v0, v6

    if-nez v6, :cond_e

    .line 153
    new-array v6, v10, [Ljava/lang/String;

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    aput-object v7, v6, v4

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    aput-object v7, v6, v3

    const-string v7, "/system/media/audio/notifications"

    aput-object v7, v6, v5

    const-string v5, "/data/media/audio/notifications"

    aput-object v5, v6, v9

    .line 157
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2

    .line 158
    :cond_e
    const-wide/16 v6, 0x400

    cmp-long v6, v0, v6

    if-nez v6, :cond_f

    .line 159
    new-array v6, v10, [Ljava/lang/String;

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_ALARM_PATH:Ljava/lang/String;

    aput-object v7, v6, v4

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->INTERNAL_ALARM_PATH:Ljava/lang/String;

    aput-object v7, v6, v3

    const-string v7, "/system/media/audio/alarms"

    aput-object v7, v6, v5

    const-string v5, "/data/media/audio/alarms"

    aput-object v5, v6, v9

    .line 163
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2

    .line 164
    :cond_f
    const-wide/32 v6, 0x10000

    cmp-long v6, v0, v6

    if-nez v6, :cond_10

    .line 165
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/system/media/theme"

    aput-object v7, v6, v4

    const-string v7, "/system/media/theme/gadget/clock"

    aput-object v7, v6, v3

    const-string v7, "/data/media/theme"

    aput-object v7, v6, v5

    const-string v5, "/data/media/theme/clock"

    aput-object v5, v6, v9

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v5, v6, v10

    const/4 v5, 0x5

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v7, v6, v5

    .line 170
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2

    .line 171
    :cond_10
    const-wide/32 v6, 0x20000

    cmp-long v6, v0, v6

    if-nez v6, :cond_11

    .line 172
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/system/media/theme"

    aput-object v7, v6, v4

    const-string v7, "/system/media/theme/gadget/photo_frame"

    aput-object v7, v6, v3

    const-string v7, "/data/media/theme"

    aput-object v7, v6, v5

    const-string v5, "/data/media/theme/photo_frame"

    aput-object v5, v6, v9

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v5, v6, v10

    const/4 v5, 0x5

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v7, v6, v5

    .line 177
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2

    .line 179
    :cond_11
    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    aput-object v2, v6, v4

    const-string v2, "/system/media/theme"

    aput-object v2, v6, v3

    const-string v2, "/data/media/theme"

    aput-object v2, v6, v5

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v2, v6, v9

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v2, v6, v10

    .line 183
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    .line 184
    const-string v2, "/data/media/theme"

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_2

    :cond_12
    move v2, v4

    .line 204
    goto/16 :goto_3

    .line 219
    :cond_13
    const-string v2, "miui.app.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    const-class v3, Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 243
    :cond_14
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_15
    const-string v1, "miui.app.resourcebrowser.THUMBNAIL_PREFIX"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 249
    const-string v1, "miui.app.resourcebrowser.THUMBNAIL_PREFIX_INDICATOR"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 250
    const-string v1, "miui.app.resourcebrowser.PREVIEW_PREFIX"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 251
    const-string v1, "miui.app.resourcebrowser.PREVIEW_PREFIX_INDICATOR"

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 253
    return-object p0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static computeCurrentUsingPath(Landroid/content/Context;Landroid/os/Bundle;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "metaData"
    .parameter "resourceType"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, filename:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 273
    :cond_0
    const-wide/16 v3, 0x100

    cmp-long v3, p2, v3

    if-nez v3, :cond_2

    .line 274
    const/4 v3, 0x1

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 275
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p0, v2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    move-object v3, v0

    .line 301
    :goto_1
    return-object v3

    .line 276
    :cond_2
    const-wide/16 v3, 0x200

    cmp-long v3, p2, v3

    if-nez v3, :cond_3

    .line 277
    const/4 v3, 0x2

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 278
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-static {p0, v2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 279
    goto :goto_0

    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    const-wide/16 v3, 0x400

    cmp-long v3, p2, v3

    if-nez v3, :cond_4

    .line 280
    const/4 v3, 0x4

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 281
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-static {p0, v2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 282
    goto :goto_0

    .line 283
    .end local v2           #uri:Landroid/net/Uri;
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, pref:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_6

    .line 286
    invoke-static {p2, p3}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const-wide/16 v3, 0x2

    cmp-long v3, p2, v3

    if-nez v3, :cond_5

    const-string v3, "wallpaper"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 289
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_5
    invoke-static {p0, p2, p3}, Lcom/android/thememanager/ThemeHelper;->wallpaperPrefOlderThanSystem(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_6
    const-string v0, "/system/media/theme/default.mtz"

    goto :goto_0

    .line 298
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_7
    if-eqz p1, :cond_1

    const-string v3, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const-string v3, "miui.app.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getDisplayType(J)I
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 27
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x800

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x20000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    const/16 v0, 0x9

    .line 46
    :goto_0
    return v0

    .line 33
    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 34
    const/4 v0, 0x6

    goto :goto_0

    .line 35
    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 36
    const/4 v0, 0x7

    goto :goto_0

    .line 37
    :cond_3
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 38
    const/16 v0, 0xb

    goto :goto_0

    .line 39
    :cond_4
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    .line 42
    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    .line 43
    :cond_6
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 44
    const/16 v0, 0xa

    goto :goto_0

    .line 46
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getResourceSetCategory(J)I
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x2

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRingtoneType(J)I
    .locals 3
    .parameter "resourceType"

    .prologue
    const/4 v0, 0x1

    .line 257
    const-wide/16 v1, 0x200

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    .line 258
    const/4 v0, 0x2

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    if-nez v1, :cond_2

    .line 260
    const/4 v0, 0x4

    goto :goto_0

    .line 261
    :cond_2
    const-wide/16 v1, 0x100

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 263
    const-wide/16 v1, 0x40

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 264
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public static isAudioResource(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 51
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCategorySupported(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 76
    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x10000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x20000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageResource(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 57
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVersionSupported(J)Z
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportImportMenu(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 61
    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
