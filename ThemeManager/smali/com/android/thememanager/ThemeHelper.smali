.class public Lcom/android/thememanager/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"

# interfaces
.implements Lmiui/app/resourcebrowser/ResourceConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeHelper$BackupThemeTask;
    }
.end annotation


# static fields
.field public static ALL_RINGTONE_FLAGS:J

.field public static final BACKUP_PATH:Ljava/lang/String;

.field public static final BACKUP_THEME_PATH:Ljava/lang/String;

.field public static final CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

.field public static final DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_THEME_FLAGS:J

.field public static final DOWNLOADED_ALARM_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_THEME_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

.field public static final EXTERNAL_ALARM_PATH:Ljava/lang/String;

.field public static final EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_THEME_PATH:Ljava/lang/String;

.field public static final EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

.field public static final INTERNAL_ALARM_PATH:Ljava/lang/String;

.field public static final INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final INTERNAL_RINGTONE_PATH:Ljava/lang/String;

.field public static final INTERNAL_THEME_PATH:Ljava/lang/String;

.field public static final INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

.field public static final THEME_FLAG_COUNT:I

.field public static final THEME_PATH:Ljava/lang/String;

.field public static final THEME_PATH_PREVIEW:Ljava/lang/String;

.field private static final sAudioEffectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sAudioEffectOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sComponentIdentity:[Ljava/lang/String;

.field public static final sComponentOrder:[J

.field public static final sComponentPreviewPrefix:[Ljava/lang/String;

.field private static final sComponentTitle:[I

.field private static final sDisablePackagesReplaceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sLOG2:D

.field public static final sLockstyleSDCardConfigDirPath:Ljava/lang/String;

.field private static sPlatformSupportReplaceFont:Z

.field public static final sPreviewCacheOrder:[J

.field public static sPreviewShowingOrder:[J

.field private static final sUnCompressedComponent:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_INTERNAL_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RINGTONE_PATH:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_ALARM_PATH:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_EXTERNAL_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_ALARM_PATH:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_ALARM_PATH:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->PREVIEW_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH_PREVIEW:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/backup.mtz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    .line 149
    const-wide/16 v0, 0x700

    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    .line 153
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->sLOG2:D

    .line 155
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sLockstyleSDCardConfigDirPath:Ljava/lang/String;

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1x2"

    aput-object v1, v0, v6

    const-string v1, "2x2"

    aput-object v1, v0, v5

    const-string v1, "2x4"

    aput-object v1, v0, v7

    const-string v1, "4x4"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .line 236
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentTitle:[I

    .line 289
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "framework-res"

    aput-object v1, v0, v6

    const-string v1, "wallpaper/default_wallpaper.jpg"

    aput-object v1, v0, v5

    const-string v1, "wallpaper/default_lock_wallpaper.jpg"

    aput-object v1, v0, v7

    const-string v1, "icons"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "fonts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "boots/bootanimation.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "boots/bootaudio.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ringtones/ringtone.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ringtones/notification.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ringtones/alarm.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.miui.home"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "audioeffect"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "clock_"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "photoframe_"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    .line 340
    sput-boolean v5, Lcom/android/thememanager/ThemeHelper;->sPlatformSupportReplaceFont:Z

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sDisablePackagesReplaceSet:Ljava/util/HashSet;

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    .line 439
    const-wide/16 v0, 0x0

    .line 441
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    const-string v3, "/system/media/theme/default.mtz"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 444
    :goto_0
    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_THEME_FLAGS:J

    .line 553
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "preview_"

    aput-object v1, v0, v6

    aput-object v4, v0, v5

    aput-object v4, v0, v7

    const-string v1, "preview_icons_"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "preview_fonts_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "preview_animation_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v2, "preview_mms_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v2, "preview_contact_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "preview_lockscreen_"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "preview_statusbar_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "preview_launcher_"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v4, v0, v1

    const/16 v1, 0x10

    const-string v2, "preview_clock_"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "preview_photo_frame_"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    .line 575
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    .line 600
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    .line 615
    const/16 v0, 0x12

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentOrder:[J

    .line 637
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wallpaper"

    aput-object v1, v0, v6

    const-string v1, "fonts"

    aput-object v1, v0, v5

    const-string v1, "boots"

    aput-object v1, v0, v7

    const-string v1, "ringtones"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audioeffect"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sUnCompressedComponent:[Ljava/lang/String;

    return-void

    .line 442
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 236
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0xat 0x7ft
        0x12t 0x0t 0xat 0x7ft
        0x13t 0x0t 0xat 0x7ft
        0x14t 0x0t 0xat 0x7ft
        0x17t 0x0t 0xat 0x7ft
        0x15t 0x0t 0xat 0x7ft
        0x16t 0x0t 0xat 0x7ft
        0x11t 0x0t 0xat 0x7ft
        0x18t 0x0t 0xat 0x7ft
        0x19t 0x0t 0xat 0x7ft
        0x1at 0x0t 0xat 0x7ft
        0x1bt 0x0t 0xat 0x7ft
        0x1ct 0x0t 0xat 0x7ft
        0x1dt 0x0t 0xat 0x7ft
        0x1et 0x0t 0xat 0x7ft
        0x1ft 0x0t 0xat 0x7ft
        0x20t 0x0t 0xat 0x7ft
        0x21t 0x0t 0xat 0x7ft
    .end array-data

    .line 575
    :array_1
    .array-data 0x8
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 600
    :array_2
    .array-data 0x8
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 615
    :array_3
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    return-void
.end method

.method public static applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    .line 910
    move-object v1, p1

    .line 911
    .local v1, srcFilePath:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 912
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "silent_bootaudio"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 913
    .local v3, tmpEmptyFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 914
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 916
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 919
    .end local v3           #tmpEmptyFile:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/theme/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "boots/bootaudio.mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 920
    .local v2, targetFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 922
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 927
    .local v0, result:Z
    if-eqz v0, :cond_2

    .line 928
    const-wide/16 v4, 0x40

    invoke-static {p0, v4, v5, p1}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 931
    :cond_2
    return v0

    .line 923
    .end local v0           #result:Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static applyDeskWallpaperOfThemeFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "themePathID"

    .prologue
    .line 840
    :try_start_0
    const-string v2, "/data/system/theme//wallpaper/default_wallpaper.jpg"

    .line 841
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 845
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 849
    .local v1, is:Ljava/io/InputStream;
    :goto_0
    const-wide/16 v4, 0x2

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {p0, v4, v5, v6, v7}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 851
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 852
    .local v3, ws:Landroid/app/WallpaperManager;
    invoke-virtual {v3, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 853
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 856
    .end local v0           #file:Ljava/io/File;
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #ws:Landroid/app/WallpaperManager;
    :goto_1
    return-void

    .line 847
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #path:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x602013e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 854
    .end local v0           #file:Ljava/io/File;
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static applyLockWallpaperOfThemeFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "themePathID"

    .prologue
    .line 860
    :try_start_0
    const-string v3, "/data/system/theme//wallpaper/default_lock_wallpaper.jpg"

    .line 861
    .local v3, path:Ljava/lang/String;
    const-string v4, "/data/system/theme//wallpaper/default_lock_wallpaper_800.jpg"

    .line 862
    .local v4, path800:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 863
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 864
    .local v1, height:I
    const/16 v5, 0x320

    if-ne v1, v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 865
    move-object v3, v4

    .line 868
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/theme//lock_wallpaper"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 869
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 871
    new-instance v5, Lmiui/util/InputStreamLoader;

    invoke-direct {v5, v3}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    const-string v6, "/data/system/theme//lock_wallpaper"

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6, v7, v8}, Lmiui/util/ImageUtils;->saveBitmapToLocal(Lmiui/util/InputStreamLoader;Ljava/lang/String;II)Z

    .line 874
    :cond_1
    const-string v5, ""

    invoke-static {p0, v5}, Lcom/android/thememanager/ThemeHelper;->updateLockWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    .end local v0           #file:Ljava/io/File;
    .end local v1           #height:I
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #path800:Ljava/lang/String;
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "subPath"
    .parameter "basePath"
    .parameter "themeName"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 949
    const-string v3, "%s/%s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, srcPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 952
    .local v1, file:Ljava/io/File;
    move-object v0, v2

    .line 953
    .local v0, desPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 954
    if-ne p1, v6, :cond_1

    .line 955
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 963
    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    .line 964
    return-void

    .line 956
    :cond_1
    if-ne p1, v7, :cond_2

    .line 957
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 958
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 959
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static applyRingtones(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "flags"
    .parameter "name"
    .parameter "basePath"

    .prologue
    const-wide/16 v2, 0x0

    .line 935
    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x1

    const-string v1, "ringtones/ringtone.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 940
    const/4 v0, 0x2

    const-string v1, "ringtones/notification.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 944
    const/4 v0, 0x4

    const-string v1, "ringtones/alarm.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_2
    return-void
.end method

.method public static applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    iget-object v0, p5, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->isNewCompressedFormat(Ljava/lang/String;)Z

    move-result v6

    .line 1201
    if-eqz v6, :cond_0

    move-object v0, p5

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 1202
    invoke-virtual/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->apply_async(JJLjava/lang/Runnable;)V

    .line 1211
    :goto_0
    return v6

    .line 1204
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p5, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p5, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static backupCurrentTheme(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 1032
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0007

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0006

    new-instance v2, Lcom/android/thememanager/ThemeHelper$1;

    invoke-direct {v2, p0}, Lcom/android/thememanager/ThemeHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1044
    return-void
.end method

.method public static chownThemeDir(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, THEME_USER:Ljava/lang/String;
    const-string v1, "/data/system/theme/"

    const-string v2, "root"

    invoke-static {v1, v0, v0, v2}, Lmiui/util/CommandLineUtils;->chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 836
    return-void
.end method

.method public static clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V
    .locals 2
    .parameter "edit"
    .parameter "flag"

    .prologue
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flags-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "designer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "author-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_time-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 794
    return-void
.end method

.method public static convertPathForDataPartitionResource(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "dataResourcePath"
    .parameter "forDownloadSavePath"

    .prologue
    .line 330
    if-eqz p0, :cond_0

    .line 331
    if-eqz p1, :cond_1

    const-string v0, "/data/media/theme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 337
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 333
    .restart local p0
    :cond_1
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CACHE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static deleteUnusedThemeTmpFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "themePath"

    .prologue
    .line 684
    const-string v0, ".mtz.cmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".mtz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 688
    const/4 v0, 0x1

    .line 690
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getAllComponentsCombineFlag()J
    .locals 2

    .prologue
    .line 286
    const-wide/32 v0, 0x3ffff

    return-wide v0
.end method

.method public static getAllThirdAppResourcePath()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/theme/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 1217
    const-string v0, "preview"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "description.xml"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lock_wallpaper"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1223
    :cond_1
    const/4 v2, 0x1

    move v0, v1

    .line 1224
    :goto_2
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_4

    .line 1225
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v1

    .line 1230
    :goto_3
    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1224
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1235
    :cond_3
    return-object v4

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public static getClockPhotoCategory(Landroid/content/Context;J)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/resource/ResourceCategory;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v9, 0x10000

    .line 209
    cmp-long v7, p1, v9

    if-eqz v7, :cond_1

    const-wide/32 v7, 0x20000

    cmp-long v7, p1, v7

    if-eqz v7, :cond_1

    .line 210
    const/4 v3, 0x0

    .line 226
    :cond_0
    return-object v3

    .line 213
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v3, ret:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/ResourceCategory;>;"
    invoke-static {p1, p2}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, title:Ljava/lang/String;
    cmp-long v7, p1, v9

    if-nez v7, :cond_2

    const/4 v5, 0x0

    .line 217
    .local v5, start:I
    :goto_0
    cmp-long v7, p1, v9

    if-nez v7, :cond_3

    const/4 v1, 0x3

    .line 218
    .local v1, end:I
    :goto_1
    move v2, v5

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 219
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    aget-object v4, v7, v2

    .line 220
    .local v4, size:Ljava/lang/String;
    new-instance v0, Lmiui/app/resourcebrowser/resource/ResourceCategory;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/resource/ResourceCategory;-><init>()V

    .line 221
    .local v0, cate:Lmiui/app/resourcebrowser/resource/ResourceCategory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmiui/app/resourcebrowser/resource/ResourceCategory;->setName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v4}, Lmiui/app/resourcebrowser/resource/ResourceCategory;->setCode(Ljava/lang/String;)V

    .line 223
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 216
    .end local v0           #cate:Lmiui/app/resourcebrowser/resource/ResourceCategory;
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v4           #size:Ljava/lang/String;
    .end local v5           #start:I
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 217
    .restart local v5       #start:I
    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public static getCompatibleFlag(IJ)J
    .locals 4
    .parameter "platformVersion"
    .parameter "flag"

    .prologue
    .line 505
    const-wide/16 v0, 0x1

    .local v0, i:J
    :goto_0
    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 506
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v2

    sget v3, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    invoke-static {p0, v2, v3}, Lmiui/app/resourcebrowser/util/ResourceHelper;->isCompatiblePlatformVersion(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 508
    const-wide/16 v2, -0x1

    xor-long/2addr v2, v0

    and-long/2addr p1, v2

    .line 505
    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    goto :goto_0

    .line 511
    :cond_1
    return-wide p1
.end method

.method public static getComponentFilterPath(J)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x1

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    .line 1239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    const-wide/16 v3, -0x1

    cmp-long v0, p0, v3

    if-eqz v0, :cond_6

    move v0, v1

    .line 1241
    :goto_0
    sget v3, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v0, v3, :cond_4

    .line 1242
    shl-long v3, v9, v0

    .line 1243
    and-long v5, p0, v3

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1241
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1247
    :cond_1
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    const-wide/16 v5, 0x4

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    .line 1249
    const-string v5, "wallpaper/default_lock_wallpaper_800.jpg"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_2
    const-wide/16 v5, 0x4000

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 1253
    const-string v3, "com.android.launcher"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_3
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1257
    const-string v3, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "preview"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    aget-object v6, v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1260
    :cond_4
    and-long v0, p0, v9

    cmp-long v0, v0, v7

    if-eqz v0, :cond_5

    .line 1261
    const-string v0, "description.xml"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_5
    :goto_2
    return-object v2

    .line 1264
    :cond_6
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getComponentIndex(J)I
    .locals 4
    .parameter "flag"

    .prologue
    .line 230
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    :cond_0
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->sLOG2:D

    div-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static final getComponentNumber(J)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, cnt:I
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 275
    sget v1, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    add-int/lit8 v1, v1, 0x1

    .line 282
    :goto_0
    return v1

    .line 277
    :cond_0
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_1

    .line 278
    const-wide/16 v1, 0x1

    sub-long v1, p0, v1

    and-long/2addr p0, v1

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 282
    goto :goto_0
.end method

.method public static getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ringtonePath"

    .prologue
    const/16 v2, 0x2e

    .line 410
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #name:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 414
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 415
    const/4 v1, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_1
    return-object v0
.end method

.method public static getLockstyleAppliedConfigFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    sget-object v0, Lmiui/content/res/ThemeResources;->sAppliedLockstyleConfigPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLockstyleSDCardConfigPathFromThemePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "themePath"

    .prologue
    .line 811
    if-nez p0, :cond_0

    .line 812
    const/4 v3, 0x0

    .line 817
    :goto_0
    return-object v3

    .line 814
    :cond_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 815
    .local v1, start:I
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 816
    .local v0, end:I
    if-gt v0, v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, themeName:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sLockstyleSDCardConfigDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 816
    .end local v2           #themeName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static final getPreviewPrefixByFlag(J)Ljava/lang/String;
    .locals 2
    .parameter "flag"

    .prologue
    .line 591
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getResourceTypeFromFlags(J)J
    .locals 8
    .parameter "componentFlags"

    .prologue
    .line 536
    const-wide/16 v2, 0x0

    .line 537
    .local v2, resourceType:J
    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p0, p1}, Lcom/android/thememanager/ThemeHelper;->matchThemeResource(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    const-wide/16 v2, -0x1

    .line 550
    :cond_0
    :goto_0
    return-wide v2

    .line 539
    :cond_1
    const-wide/16 v4, 0x1004

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    .line 540
    const-wide/16 v2, 0x1000

    goto :goto_0

    .line 542
    :cond_2
    const-wide/32 v4, 0x3f8b8

    and-long/2addr p0, v4

    .line 543
    const-wide/16 v0, 0x1

    .local v0, i:J
    :goto_1
    const-wide/32 v4, 0x20000

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 544
    and-long v4, p0, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 545
    move-wide v2, v0

    .line 546
    goto :goto_0

    .line 543
    :cond_3
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    goto :goto_1
.end method

.method public static getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2
    .parameter "context"

    .prologue
    .line 889
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 890
    .local v0, ret:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-nez v1, :cond_1

    .line 891
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .end local v0           #ret:Landroid/util/DisplayMetrics;
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 893
    .restart local v0       #ret:Landroid/util/DisplayMetrics;
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :cond_1
    :goto_0
    return-object v0

    .line 894
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final getTitleIDByFlag(J)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 258
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 259
    const v0, 0x7f0a0023

    .line 265
    :goto_0
    return v0

    .line 260
    :cond_0
    const-wide/32 v0, 0x10000000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 261
    const v0, 0x7f0a0022

    goto :goto_0

    .line 262
    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, v0, p0

    if-gtz v0, :cond_2

    const-wide/32 v0, 0x20000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 263
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentTitle:[I

    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;
    .locals 8
    .parameter "zipfile"
    .parameter "cloclOrPhotoFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v7

    aget-object v3, v6, v7

    .line 496
    .local v3, namePrefix:Ljava/lang/String;
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 497
    .local v5, size:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 498
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    .end local v5           #size:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static identifyComponents(Ljava/util/zip/ZipFile;)J
    .locals 2
    .parameter "zipfile"

    .prologue
    .line 448
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static identifyComponents(Ljava/util/zip/ZipFile;I)J
    .locals 13
    .parameter "zipfile"
    .parameter "platformVersion"

    .prologue
    const/4 v12, 0x1

    .line 452
    const-wide/16 v3, 0x0

    .line 453
    .local v3, flags:J
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    sget v8, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v5, v8, :cond_1

    .line 454
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {p0, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 455
    shl-int v8, v12, v5

    int-to-long v8, v8

    or-long/2addr v3, v8

    .line 453
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 462
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v2, 0x0

    .line 463
    .local v2, entry:Ljava/util/zip/ZipEntry;
    const/4 v7, 0x0

    .line 464
    .local v7, path:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 465
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 466
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 467
    const/4 v5, 0x0

    :goto_1
    sget v8, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v5, v8, :cond_2

    .line 468
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 469
    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_lock_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_lock_wallpaper_800.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 467
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 475
    :cond_4
    shl-int v8, v12, v5

    int-to-long v8, v8

    or-long/2addr v3, v8

    goto :goto_2

    .line 476
    :cond_5
    const-string v8, "com.android.launcher"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 477
    const-wide/16 v8, 0x4000

    or-long/2addr v3, v8

    goto :goto_2

    .line 482
    :cond_6
    if-gez p1, :cond_7

    .line 483
    const-string v8, "description.xml"

    invoke-static {p0, v8}, Lmiui/app/resourcebrowser/util/ZipFileHelper;->getZipResourceDescribeInfo(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 485
    .local v6, nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_8

    :try_start_0
    const-string v8, "uiVersion"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 490
    .end local v6           #nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :goto_3
    invoke-static {p1, v3, v4}, Lcom/android/thememanager/ThemeHelper;->getCompatibleFlag(IJ)J

    move-result-wide v8

    return-wide v8

    .line 485
    .restart local v6       #nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const/4 p1, 0x0

    goto :goto_3

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 p1, 0x0

    goto :goto_3
.end method

.method protected static initAudioEffectMap(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "res"

    .prologue
    .line 398
    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 399
    .local v1, key:[Ljava/lang/CharSequence;
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 400
    .local v2, value:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_0

    .line 401
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 402
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 403
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected static initPlatformSupport(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 346
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/thememanager/ThemeHelper;->sPlatformSupportReplaceFont:Z

    .line 348
    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 349
    .local v1, packageName:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 350
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sDisablePackagesReplaceSet:Ljava/util/HashSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method static initResource(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->initAudioEffectMap(Landroid/content/res/Resources;)V

    .line 312
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->initPlatformSupport(Landroid/content/Context;)V

    .line 313
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->moveLatestResourceIntoDataPartition()V

    .line 314
    return-void
.end method

.method public static isDisablePkgName(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 359
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sDisablePackagesReplaceSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isNewCompressedFormat(Ljava/lang/String;)Z
    .locals 9
    .parameter "themeZipFilePath"

    .prologue
    .line 657
    const/4 v3, 0x1

    .line 659
    .local v3, newFormat:Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 661
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 662
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v2, 0x0

    .line 663
    .local v2, entry:Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 664
    .local v4, path:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 665
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 666
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 667
    invoke-static {v4}, Lcom/android/thememanager/ThemeHelper;->shouldCompressedComponent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 668
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_0

    .line 669
    :cond_1
    const/4 v3, 0x0

    .line 674
    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    const-string v6, "ResourceBrowser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to call isNewCompressedFormat() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadUserPreferencePath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 802
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 803
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static matchThemeResource(JJ)Z
    .locals 7
    .parameter "resourceType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    and-long v3, p2, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v0, v1

    .line 522
    .local v0, result:Z
    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v3, 0x1

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 527
    const-wide/32 v3, 0x3f8b8

    and-long/2addr v3, p2

    invoke-static {v3, v4}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    move v0, v1

    .line 529
    :cond_0
    :goto_1
    return v0

    .end local v0           #result:Z
    :cond_1
    move v0, v2

    .line 521
    goto :goto_0

    .restart local v0       #result:Z
    :cond_2
    move v0, v2

    .line 527
    goto :goto_1
.end method

.method public static mkThemeDir(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 825
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    const-string v0, "/data/system/theme/"

    const-string v1, "root"

    invoke-static {v0, v1}, Lmiui/util/CommandLineUtils;->mkdir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 827
    const-string v0, "/data/system/theme/"

    const-string v1, "775"

    const-string v2, "root"

    invoke-static {v0, v1, v2}, Lmiui/util/CommandLineUtils;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 828
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->chownThemeDir(Landroid/content/Context;)V

    .line 830
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 831
    return-void
.end method

.method public static moveLatestResourceIntoDataPartition()V
    .locals 8

    .prologue
    .line 317
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/media/theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, cacheDataDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 320
    .local v4, name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    invoke-static {v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->moveUpdatedResourceInCacheDir(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 327
    return-void
.end method

.method public static moveThemeFileIntoLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v10, -0x1

    .line 1164
    if-nez p1, :cond_1

    move-object p1, v4

    .line 1195
    :cond_0
    :goto_0
    return-object p1

    .line 1167
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1174
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1179
    :goto_1
    new-instance v3, Ljava/io/File;

    const-string v7, "%s/%d_%s"

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    aput-object v2, v8, v1

    const/4 v9, 0x1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v6, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    .line 1182
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x1ff

    invoke-static {v1, v2, v10, v10}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 1185
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 1189
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1191
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1192
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1193
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1195
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static realFontChange(JLjava/lang/String;J)Z
    .locals 11
    .parameter "applyFlags"
    .parameter "themePath"
    .parameter "themeFlags"

    .prologue
    const-wide/16 v9, 0x10

    const-wide/16 v7, 0x0

    .line 367
    and-long v5, p0, v9

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 368
    .local v3, ret:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 369
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fonts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v2, fontDir:Ljava/io/File;
    and-long v5, p3, v9

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const-string v5, "/system/media/theme/default.mtz"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 391
    .end local v2           #fontDir:Ljava/io/File;
    :cond_1
    :goto_1
    return v3

    .line 367
    .end local v3           #ret:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 373
    .restart local v2       #fontDir:Ljava/io/File;
    .restart local v3       #ret:Z
    :cond_3
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 376
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 377
    .local v4, zipfile:Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 378
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 379
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 380
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fonts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 381
    const/4 v3, 0x1

    .line 385
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :cond_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v4           #zipfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V
    .locals 3
    .parameter "edit"
    .parameter "info"
    .parameter "flag"
    .parameter "savePath"

    .prologue
    .line 777
    if-eqz p4, :cond_0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 780
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flags-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "designer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mDesigner:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "author-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_time-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 785
    return-void
.end method

.method public static saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V
    .locals 10
    .parameter "info"
    .parameter "saveFlags"
    .parameter "clearFlags"
    .parameter "savePath"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    .line 755
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 756
    .local v3, pref:Landroid/content/SharedPreferences;
    monitor-enter v3

    .line 757
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 760
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v1, 0x1

    .local v1, flag:J
    :goto_0
    const-wide/32 v4, 0x20000

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2

    .line 761
    and-long v4, v1, p1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 762
    invoke-static {v0, p0, v1, v2, p5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V

    .line 760
    :cond_0
    :goto_1
    shl-long/2addr v1, v6

    goto :goto_0

    .line 763
    :cond_1
    and-long v4, v1, p3

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 764
    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V

    goto :goto_1

    .line 773
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #flag:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 768
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #flag:J
    :cond_2
    or-long v4, p1, p3

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 769
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-static {v0, p0, v4, v5, v6}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V

    .line 772
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 773
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    return-void
.end method

.method public static saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "flag"
    .parameter "path"

    .prologue
    .line 720
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 721
    return-void
.end method

.method public static saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "flag"
    .parameter "path"
    .parameter "updateTitle"

    .prologue
    .line 723
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 724
    .local v1, pref:Landroid/content/SharedPreferences;
    monitor-enter v1

    .line 725
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 726
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 727
    .local v2, title:Ljava/lang/String;
    if-nez p4, :cond_0

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 730
    :cond_0
    if-nez v2, :cond_1

    .line 731
    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 733
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/thememanager/ThemeHelper;->clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_time-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 738
    monitor-exit v1

    .line 739
    return-void

    .line 738
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #title:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static sendThemeConfigurationChangeMsg(Landroid/content/Context;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 1012
    const-wide/32 v0, 0x30000

    and-long/2addr v0, p1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 1013
    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    .line 1015
    :cond_0
    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 1016
    const-string v0, "root"

    const-string v1, "setprop debug.skia.free_cache %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1020
    :cond_1
    const-wide/32 v0, 0x10007899

    and-long/2addr v0, p1

    .line 1021
    cmp-long v2, v0, v8

    if-eqz v2, :cond_2

    .line 1023
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1024
    iget-object v3, v2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v3, v0, v1}, Lmiui/content/res/ExtraConfiguration;->updateTheme(J)V

    .line 1025
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :cond_2
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setMusicVolumeType(Landroid/app/Activity;J)V
    .locals 3
    .parameter "activity"
    .parameter "flag"

    .prologue
    .line 993
    const/4 v0, -0x1

    .line 994
    .local v0, playType:I
    const-wide/16 v1, 0x100

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 995
    const/4 v0, 0x2

    .line 1006
    :goto_0
    if-ltz v0, :cond_0

    .line 1007
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1009
    :cond_0
    return-void

    .line 996
    :cond_1
    const-wide/16 v1, 0x200

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 997
    const/4 v0, 0x5

    goto :goto_0

    .line 998
    :cond_2
    const-wide/16 v1, 0x400

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 999
    const/4 v0, 0x4

    goto :goto_0

    .line 1000
    :cond_3
    const-wide/32 v1, 0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 1001
    const/4 v0, 0x1

    goto :goto_0

    .line 1003
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "path"

    .prologue
    .line 967
    const/4 v2, 0x0

    .line 968
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 969
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 970
    invoke-static {p2, p1}, Landroid/media/ExtraRingtoneManager;->copyRingtone(Ljava/lang/String;I)V

    .line 972
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 974
    const-wide/16 v0, 0x100

    .line 975
    .local v0, flag:J
    packed-switch p1, :pswitch_data_0

    .line 988
    :goto_0
    :pswitch_0
    invoke-static {p0, v0, v1, p2}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 989
    const/4 v3, 0x1

    return v3

    .line 977
    :pswitch_1
    const-wide/16 v0, 0x100

    .line 978
    goto :goto_0

    .line 981
    :pswitch_2
    const-wide/16 v0, 0x200

    .line 982
    goto :goto_0

    .line 985
    :pswitch_3
    const-wide/16 v0, 0x400

    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static shouldCompressedComponent(Ljava/lang/String;)Z
    .locals 5
    .parameter "zipEntryPath"

    .prologue
    .line 648
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sUnCompressedComponent:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 649
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    const/4 v4, 0x0

    .line 653
    .end local v3           #tmp:Ljava/lang/String;
    :goto_1
    return v4

    .line 648
    .restart local v3       #tmp:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v3           #tmp:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static showThemeChangedToast(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 901
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;ZLjava/lang/String;)V

    .line 902
    return-void
.end method

.method public static showThemeChangedToast(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "result"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 904
    if-eqz p1, :cond_0

    const v1, 0x7f0a0003

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, text:Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 907
    return-void

    .line 904
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a0004

    goto :goto_0
.end method

.method public static supportReplaceAudioEffect()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public static supportReplaceFont()Z
    .locals 1

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/thememanager/ThemeHelper;->sPlatformSupportReplaceFont:Z

    return v0
.end method

.method public static updateLockWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "srcImagePath"

    .prologue
    const/4 v2, -0x1

    .line 880
    const-string v0, "/data/system/theme//lock_wallpaper"

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 881
    const-wide/16 v0, 0x4

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 886
    return-void
.end method

.method public static updateUserPreferenceModifyTime(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "saveFlags"
    .parameter "modifyTime"

    .prologue
    .line 742
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 743
    .local v3, pref:Landroid/content/SharedPreferences;
    monitor-enter v3

    .line 744
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v1, 0x1

    .local v1, flag:J
    :goto_0
    const-wide/32 v4, 0x20000

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1

    .line 746
    and-long v4, v1, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_time-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 745
    :cond_0
    const/4 v4, 0x1

    shl-long/2addr v1, v4

    goto :goto_0

    .line 750
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    monitor-exit v3

    .line 752
    return-void

    .line 751
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #flag:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static wallpaperPrefOlderThanSystem(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "wallpaperFlag"

    .prologue
    .line 694
    const/4 v3, 0x0

    .line 695
    .local v3, wallpaper:Ljava/io/File;
    const-wide/16 v4, 0x2

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 696
    new-instance v3, Ljava/io/File;

    .end local v3           #wallpaper:Ljava/io/File;
    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .restart local v3       #wallpaper:Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 702
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 703
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_time-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 704
    .local v1, updateTime:J
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    .line 705
    const/4 v4, 0x1

    .line 709
    .end local v0           #pref:Landroid/content/SharedPreferences;
    .end local v1           #updateTime:J
    :goto_1
    return v4

    .line 697
    :cond_1
    const-wide/16 v4, 0x4

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 698
    new-instance v3, Ljava/io/File;

    .end local v3           #wallpaper:Ljava/io/File;
    const-string v4, "/data/system/theme//lock_wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3       #wallpaper:Ljava/io/File;
    goto :goto_0

    .line 709
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
