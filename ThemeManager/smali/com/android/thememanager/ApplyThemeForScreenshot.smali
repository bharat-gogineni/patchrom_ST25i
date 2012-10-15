.class public Lcom/android/thememanager/ApplyThemeForScreenshot;
.super Landroid/app/Activity;
.source "ApplyThemeForScreenshot.java"


# instance fields
.field mThemeInfo:Lcom/android/thememanager/ThemeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    return-void
.end method


# virtual methods
.method back()V
    .locals 5

    .prologue
    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v1, resultIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "flag"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-wide v3, v3, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 54
    const-string v2, "path"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "title"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "author"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "version"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "uiVersion"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget v3, v3, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 61
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/thememanager/ApplyThemeForScreenshot;->setResult(ILandroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->finish()V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v12, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v11, "path"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 24
    .local v7, localPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v11, "theme_apply_flags"

    invoke-virtual {v5, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 25
    .local v2, applyFlags:J
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v11, "theme_remove_flags"

    invoke-virtual {v5, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 28
    .local v0, removeFlags:J
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    .local v8, tv:Landroid/widget/TextView;
    const/16 v5, 0x11

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6b63\u5728\u5e94\u7528\u4e3b\u9898\uff0c\u8bf7\u7a0d\u5019!\n\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0, v8}, Lcom/android/thememanager/ApplyThemeForScreenshot;->setContentView(Landroid/view/View;)V

    .line 33
    const/4 v6, 0x1

    .line 34
    .local v6, failed:Z
    const/4 v5, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {p0, v7, v5, v11}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    .line 35
    iget-object v5, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    if-eqz v5, :cond_0

    .line 36
    new-instance v4, Lcom/android/thememanager/ApplyThemeForScreenshot$1;

    invoke-direct {v4, p0}, Lcom/android/thememanager/ApplyThemeForScreenshot$1;-><init>(Lcom/android/thememanager/ApplyThemeForScreenshot;)V

    .line 41
    .local v4, run:Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    move v6, v9

    .line 44
    .end local v4           #run:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 45
    invoke-virtual {p0, v10}, Lcom/android/thememanager/ApplyThemeForScreenshot;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->finish()V

    .line 48
    :cond_1
    return-void

    .restart local v4       #run:Ljava/lang/Runnable;
    :cond_2
    move v6, v10

    .line 41
    goto :goto_0
.end method
