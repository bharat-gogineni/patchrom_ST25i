.class public Lcom/android/thememanager/LocalThemeResourceAdapter;
.super Lmiui/app/resourcebrowser/LocalResourceAdapter;
.source "LocalThemeResourceAdapter.java"


# instance fields
.field mResourceType:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/LocalResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 20
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    .line 21
    return-void
.end method

.method public constructor <init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V
    .locals 4
    .parameter "fragment"
    .parameter "metaData"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/LocalResourceAdapter;-><init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    .line 26
    return-void
.end method


# virtual methods
.method public clearVisitors()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mVisitors:Ljava/util/List;

    .line 30
    return-void
.end method

.method protected generateVisitors([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "folders"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->generateVisitors([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor<Lmiui/app/resourcebrowser/resource/Resource;>;>;"
    iget v5, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceSetCategory:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 46
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 47
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/app/resourcebrowser/service/local/ResourceFolder;

    .line 48
    .local v4, visitor:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    invoke-virtual {v4}, Lmiui/app/resourcebrowser/service/local/ResourceFolder;->getFolderPath()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, folderPath:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, titleId:I
    const-string v5, "/system/media/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    const v3, 0x7f0a003e

    move-object v5, v4

    .line 53
    check-cast v5, Lmiui/app/resourcebrowser/service/local/AudioResourceFolder;

    iget-object v6, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v7, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lmiui/app/resourcebrowser/service/local/AudioResourceFolder;->enableMuteOption(Z)V

    move-object v5, v4

    .line 55
    check-cast v5, Lmiui/app/resourcebrowser/service/local/AudioResourceFolder;

    iget-object v6, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v7, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lmiui/app/resourcebrowser/service/local/AudioResourceFolder;->enableDefaultOption(Z)V

    .line 60
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 61
    iget-object v5, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/app/resourcebrowser/service/local/ResourceFolder;->setFolderDescription(Ljava/lang/String;)V

    .line 46
    .end local v3           #titleId:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .restart local v3       #titleId:I
    :cond_2
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->MIUI_PATH:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 66
    .end local v0           #folderPath:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #titleId:I
    .end local v4           #visitor:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    :cond_3
    return-object v2
.end method

.method protected getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;
    .locals 4
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceSetCategory:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Lcom/android/thememanager/ThemeResourceFolder;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/thememanager/ThemeResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    move-result-object v0

    goto :goto_0
.end method
