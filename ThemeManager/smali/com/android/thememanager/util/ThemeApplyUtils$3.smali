.class final Lcom/android/thememanager/util/ThemeApplyUtils$3;
.super Ljava/lang/Object;
.source "ThemeApplyUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/util/ThemeApplyUtils;->giveTipForLockscreenPaper(Landroid/app/Activity;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$localPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/thememanager/util/ThemeApplyUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/thememanager/util/ThemeApplyUtils$3;->val$localPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/thememanager/util/ThemeApplyUtils$3;->val$activity:Landroid/app/Activity;

    const-wide/16 v1, 0x4

    iget-object v3, p0, Lcom/android/thememanager/util/ThemeApplyUtils$3;->val$localPath:Ljava/lang/String;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/util/WallpaperUtils;->cropAndApplyWallpaper(Landroid/app/Activity;JLjava/lang/String;ZZ)V

    .line 107
    return-void
.end method
