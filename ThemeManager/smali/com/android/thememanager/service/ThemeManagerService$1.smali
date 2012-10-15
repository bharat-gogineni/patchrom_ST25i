.class Lcom/android/thememanager/service/ThemeManagerService$1;
.super Lmiui/app/resourcebrowser/service/IThemeManagerService$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/service/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/service/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/thememanager/service/ThemeManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/thememanager/service/ThemeManagerService$1;->this$0:Lcom/android/thememanager/service/ThemeManagerService;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/service/IThemeManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public saveLockWallpaper(Ljava/lang/String;)Z
    .locals 1
    .parameter "srcImagePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/thememanager/service/ThemeManagerService$1;->this$0:Lcom/android/thememanager/service/ThemeManagerService;

    #calls: Lcom/android/thememanager/service/ThemeManagerService;->saveLockWallPaper_Impl(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/thememanager/service/ThemeManagerService;->access$000(Lcom/android/thememanager/service/ThemeManagerService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
