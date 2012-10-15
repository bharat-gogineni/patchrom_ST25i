.class final Lcom/android/thememanager/ThemeHelper$1;
.super Ljava/lang/Object;
.source "ThemeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeHelper;->backupCurrentTheme(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/thememanager/ThemeHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1040
    new-instance v0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1041
    return-void
.end method
