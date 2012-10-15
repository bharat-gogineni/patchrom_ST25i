.class Lcom/android/thememanager/ThemeHelper$BackupThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1051
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1052
    iput-object p1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    .line 1053
    return-void
.end method

.method private backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V
    .locals 3
    .parameter "out"
    .parameter "type"
    .parameter "targetPath"

    .prologue
    .line 1065
    iget-object v2, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1066
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, srcPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1068
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, p3}, Lcom/android/thememanager/ZipHelper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1070
    :cond_0
    return-void
.end method

.method private writeDescriptionInfo(Ljava/util/zip/ZipOutputStream;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const-string v2, "<MIUI-Theme>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v2, "\t<title>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-object v2, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v2, "</title>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    const-string v2, "\t<designer></designer>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string v2, "\t<author></author>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    const-string v2, "\t<version>1.0</version>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    const-string v2, "\t<uiVersion>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    sget v2, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1100
    const-string v2, "</uiVersion>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v2, "</MIUI-Theme>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v2, "%s/description.xml"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, descriptionPath:Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v1}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1107
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "description.xml"

    invoke-static {p1, v2, v3}, Lcom/android/thememanager/ZipHelper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1108
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1046
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "object"

    .prologue
    const/4 v8, -0x1

    .line 1112
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    const-string v7, "backup.mtz1"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1114
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const/16 v7, 0x1ff

    invoke-static {v6, v7, v8, v8}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 1117
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1118
    .local v2, f:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v4, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1119
    .local v4, out:Ljava/util/zip/ZipOutputStream;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 1121
    invoke-direct {p0, v4}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->writeDescriptionInfo(Ljava/util/zip/ZipOutputStream;)V

    .line 1123
    const-string v0, "/data/system/theme/desk_wallpaper.tmp"

    .line 1124
    .local v0, deskWallpaperTmpPath:Ljava/lang/String;
    const-string v6, "/data/data/com.android.settings/files/wallpaper"

    const-string v7, "root"

    invoke-static {v6, v0, v7}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1125
    const-string v6, "777"

    const-string v7, "root"

    invoke-static {v0, v6, v7}, Lmiui/util/CommandLineUtils;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1126
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "wallpaper/default_wallpaper.jpg"

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/ZipHelper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1127
    const-string v6, "root"

    invoke-static {v0, v6}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1129
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/theme//lock_wallpaper"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "wallpaper/default_lock_wallpaper.jpg"

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/ZipHelper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1131
    const/4 v6, 0x1

    const-string v7, "ringtones/ringtone.mp3"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1132
    const/4 v6, 0x2

    const-string v7, "ringtones/notification.mp3"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1133
    const/4 v6, 0x4

    const-string v7, "ringtones/alarm.mp3"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1135
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/theme/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "audioeffect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1136
    new-instance v6, Ljava/io/File;

    const-string v7, "/system/media/audio/ui"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "audioeffect"

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/ZipHelper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1139
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/theme/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, ""

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/ZipHelper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1140
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1142
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v5, target:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1144
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    const/4 v6, 0x0

    return-object v6

    .line 1145
    .end local v0           #deskWallpaperTmpPath:Ljava/lang/String;
    .end local v2           #f:Ljava/io/FileOutputStream;
    .end local v4           #out:Ljava/util/zip/ZipOutputStream;
    .end local v5           #target:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1146
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1147
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1046
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1160
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1057
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    .line 1058
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1061
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1062
    return-void
.end method
