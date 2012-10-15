.class public Lcom/miui/gallery/cloud/DeleteAccount;
.super Ljava/lang/Object;
.source "DeleteAccount.java"


# static fields
.field public static sNeedDeleteAfterSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAccount(Landroid/content/Context;Landroid/accounts/Account;Z)V
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "wipeData"

    .prologue
    .line 74
    if-eqz p2, :cond_0

    .line 75
    const-string v4, "DeleteAccount"

    const-string v5, "cloud gallery data will be deleted. "

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteDownloadFiles(Ljava/lang/String;)V

    .line 83
    :goto_0
    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteDownloadFiles(Ljava/lang/String;)V

    .line 84
    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteDownloadFiles(Ljava/lang/String;)V

    .line 86
    const-string v4, "DeleteAccount"

    const-string v5, "delete DB start."

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 89
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 91
    .local v0, deleteCloudRows:I
    :try_start_0
    sget-object v4, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_1
    const-string v4, "DeleteAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clean cloud table finished, deleted rows = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, deleteCloudSettingRows:I
    :try_start_1
    sget-object v4, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 105
    :goto_2
    const-string v4, "DeleteAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clean cloudSetting table finished, deleted rows = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->removeCloudSettings()V

    .line 108
    const-string v4, "DeleteAccount"

    const-string v5, "removed cloud settings."

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 78
    .end local v0           #deleteCloudRows:I
    .end local v1           #deleteCloudSettingRows:I
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_0
    const-string v4, "DeleteAccount"

    const-string v5, "cloud gallery data will be moved."

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/DeleteAccount;->moveDownloadFiles(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_0

    .line 92
    .restart local v0       #deleteCloudRows:I
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #deleteCloudSettingRows:I
    :catch_1
    move-exception v2

    .line 102
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static deleteDownloadFiles(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, downloadFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteAccount51delete folder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/Jlog;->usage(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Lmiui/os/ExtraFileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const-string v1, "DeleteAccount"

    const-string v2, "delete files failed"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "DeleteAccount"

    const-string v2, "delete files finished"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_1
    const-string v1, "DeleteAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path not exists:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static handleAccountDelete(Landroid/content/Context;Landroid/accounts/Account;Z)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "wipeData"

    .prologue
    .line 63
    const-string v0, "com.miui.gallery.cloud.provider"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    .line 65
    const-string v0, "DeleteAccount"

    const-string v1, "cancel sync..."

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "com.miui.gallery.cloud.provider"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/DeleteAccount;->deleteAccount(Landroid/content/Context;Landroid/accounts/Account;Z)V

    .line 69
    return-void
.end method

.method private static moveDownloadFiles(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 9
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v8, 0x1

    .line 28
    const/16 v0, 0x3e8

    .line 29
    .local v0, MAX_FOLDER_INDEX:I
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, downloadFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v3, ""

    .line 34
    .local v3, newPath:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_3

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/miui/gallery/cloud/CloudUtils;->CLOUD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    const-string v5, ""

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v4, newPathFolder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 39
    const-string v5, "DeleteAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account data was moved to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const v5, 0x7f0d00bf

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 35
    .end local v4           #newPathFolder:Ljava/io/File;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 34
    .restart local v4       #newPathFolder:Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 45
    .end local v4           #newPathFolder:Ljava/io/File;
    :cond_3
    const-string v5, "DeleteAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account data was moved to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
