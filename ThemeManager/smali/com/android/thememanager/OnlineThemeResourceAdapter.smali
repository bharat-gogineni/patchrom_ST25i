.class public Lcom/android/thememanager/OnlineThemeResourceAdapter;
.super Lmiui/app/resourcebrowser/OnlineResourceAdapter;
.source "OnlineThemeResourceAdapter.java"


# instance fields
.field protected mResourceType:J

.field private mService:Lmiui/app/resourcebrowser/service/online/OnlineService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 14
    invoke-static {}, Lmiui/app/resourcebrowser/service/online/OnlineService;->getInstance()Lmiui/app/resourcebrowser/service/online/OnlineService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mService:Lmiui/app/resourcebrowser/service/online/OnlineService;

    .line 18
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    .line 19
    return-void
.end method

.method public constructor <init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V
    .locals 4
    .parameter "fragment"
    .parameter "metaData"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;-><init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V

    .line 14
    invoke-static {}, Lmiui/app/resourcebrowser/service/online/OnlineService;->getInstance()Lmiui/app/resourcebrowser/service/online/OnlineService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mService:Lmiui/app/resourcebrowser/service/online/OnlineService;

    .line 23
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    .line 24
    return-void
.end method


# virtual methods
.method public setUrl(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 28
    iget-object v2, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v3, "miui.app.resourcebrowser.IS_RECOMMENDATION_LIST"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 29
    .local v1, isRecommendationList:Z
    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v4, 0x20000

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v3, "miui.app.resourcebrowser.USING_PICKER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v3, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, categoryCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mService:Lmiui/app/resourcebrowser/service/online/OnlineService;

    iget-object v3, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v0}, Lmiui/app/resourcebrowser/service/online/OnlineService;->getCommonListUrl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    .end local v0           #categoryCode:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->setUrl(Ljava/lang/String;)V

    .line 36
    return-void
.end method
