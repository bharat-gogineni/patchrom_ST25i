.class public Lcom/miui/gallery/settings/GalleryCloudSettings;
.super Lmiui/widget/MiCloudAdvancedSettingsBase;
.source "GalleryCloudSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected canSync(ZLjava/lang/String;)Z
    .locals 1
    .parameter "syncOn"
    .parameter "authority"

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method protected getMainSyncPrefSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/settings/GalleryCloudSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMainSyncPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "pref_key_sync_gallery"

    return-object v0
.end method

.method protected getPreferencesResourceId()I
    .locals 1

    .prologue
    .line 15
    const/high16 v0, 0x7f06

    return v0
.end method
