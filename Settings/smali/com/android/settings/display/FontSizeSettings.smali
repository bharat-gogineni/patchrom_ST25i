.class public Lcom/android/settings/display/FontSizeSettings;
.super Landroid/preference/PreferenceActivity;
.source "FontSizeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sUiModeOrder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSelectedOrder:I

.field private mUiModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/FontSizePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    .line 27
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 42
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 43
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 46
    :cond_0
    const v12, 0x7f05001f

    invoke-virtual {p0, v12}, Lcom/android/settings/display/FontSizeSettings;->addPreferencesFromResource(I)V

    .line 49
    const/4 v5, 0x0

    .line 51
    .local v5, order:Ljava/lang/Integer;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 52
    .local v2, config:Landroid/content/res/Configuration;
    if-eqz v2, :cond_1

    .line 53
    sget-object v12, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    iget v13, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v13, v13, 0xf

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2           #config:Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_1
    iput v12, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 61
    .local v8, resources:Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v12, v12, 0xf0

    int-to-float v3, v12

    .line 62
    .local v3, densityFactor:F
    const v12, 0x7f070053

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, title:[Ljava/lang/String;
    const v12, 0x7f070055

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 64
    .local v10, rowHeight:[I
    const v12, 0x7f070056

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 67
    .local v7, previewSize:[I
    const-string v12, "root"

    invoke-virtual {p0, v12}, Lcom/android/settings/display/FontSizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 68
    .local v9, root:Landroid/preference/PreferenceGroup;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v12, v11

    if-ge v4, v12, :cond_4

    .line 69
    new-instance v6, Lcom/android/settings/FontSizePreference;

    invoke-direct {v6, p0}, Lcom/android/settings/FontSizePreference;-><init>(Landroid/content/Context;)V

    .line 70
    .local v6, preference:Lcom/android/settings/FontSizePreference;
    invoke-virtual {v6, v4}, Lcom/android/settings/FontSizePreference;->setOrder(I)V

    .line 71
    aget-object v12, v11, v4

    invoke-virtual {v6, v12}, Lcom/android/settings/FontSizePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    const v12, 0x7f0b06a5

    invoke-virtual {v6, v12}, Lcom/android/settings/FontSizePreference;->setSummary(I)V

    .line 73
    aget v12, v10, v4

    int-to-float v12, v12

    mul-float/2addr v12, v3

    float-to-int v12, v12

    aget v13, v7, v4

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-int v13, v13

    invoke-virtual {v6, v12, v13}, Lcom/android/settings/FontSizePreference;->setSize(II)V

    .line 76
    invoke-virtual {v6, p0}, Lcom/android/settings/FontSizePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget v12, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    if-ne v4, v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v6, v12}, Lcom/android/settings/FontSizePreference;->setChecked(Z)V

    .line 79
    iget-object v12, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 57
    .end local v3           #densityFactor:F
    .end local v4           #i:I
    .end local v6           #preference:Lcom/android/settings/FontSizePreference;
    .end local v7           #previewSize:[I
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v9           #root:Landroid/preference/PreferenceGroup;
    .end local v10           #rowHeight:[I
    .end local v11           #title:[Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    goto :goto_1

    .line 77
    .restart local v3       #densityFactor:F
    .restart local v4       #i:I
    .restart local v6       #preference:Lcom/android/settings/FontSizePreference;
    .restart local v7       #previewSize:[I
    .restart local v8       #resources:Landroid/content/res/Resources;
    .restart local v9       #root:Landroid/preference/PreferenceGroup;
    .restart local v10       #rowHeight:[I
    .restart local v11       #title:[Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 83
    .end local v6           #preference:Lcom/android/settings/FontSizePreference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 84
    return-void

    .line 55
    .end local v3           #densityFactor:F
    .end local v4           #i:I
    .end local v7           #previewSize:[I
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v9           #root:Landroid/preference/PreferenceGroup;
    .end local v10           #rowHeight:[I
    .end local v11           #title:[Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->finish()V

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 90
    .local v1, order:I
    iget v4, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    if-eq v1, v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/android/settings/display/FontSizeSettings;->mUiModes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/FontSizePreference;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings/FontSizePreference;->setChecked(Z)V

    .line 92
    iput v1, p0, Lcom/android/settings/display/FontSizeSettings;->mSelectedOrder:I

    .line 94
    sget-object v4, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/settings/display/FontSizeSettings;->sUiModeOrder:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 96
    .local v3, uiMode:I
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "ui_mode_scale"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 103
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/settings/display/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070054

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, scale:[Ljava/lang/String;
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 105
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    sparse-switch v4, :sswitch_data_0

    .line 115
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 117
    const/4 v4, 0x1

    .line 122
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #order:I
    .end local v2           #scale:[Ljava/lang/String;
    .end local v3           #uiMode:I
    :goto_1
    return v4

    .line 112
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #order:I
    .restart local v2       #scale:[Ljava/lang/String;
    .restart local v3       #uiMode:I
    :sswitch_0
    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x10

    or-int/2addr v4, v3

    iput v4, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #order:I
    .end local v2           #scale:[Ljava/lang/String;
    .end local v3           #uiMode:I
    :catch_0
    move-exception v4

    :cond_0
    move v4, v5

    .line 122
    goto :goto_1

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method
