.class Lcom/android/thememanager/WallpaperDetailActivity$9;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/WallpaperDetailActivity;->getWallpaperSwitchListener()Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/WallpaperDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$9;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public switchNext()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$9;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->navigateToNextResource()V
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1800(Lcom/android/thememanager/WallpaperDetailActivity;)V

    .line 524
    return-void
.end method

.method public switchNone()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public switchPrevious()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$9;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->navigateToPreviousResource()V
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1700(Lcom/android/thememanager/WallpaperDetailActivity;)V

    .line 519
    return-void
.end method
