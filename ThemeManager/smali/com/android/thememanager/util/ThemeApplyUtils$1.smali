.class final Lcom/android/thememanager/util/ThemeApplyUtils$1;
.super Ljava/lang/Object;
.source "ThemeApplyUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/util/ThemeApplyUtils;->doApplyResource(Landroid/app/Activity;Lcom/android/thememanager/util/ThemeResourceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$applyFlags:J

.field final synthetic val$localPath:Ljava/lang/String;

.field final synthetic val$removeFlags:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$localPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$removeFlags:J

    iput-wide p5, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$applyFlags:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 66
    new-instance v6, Lcom/android/thememanager/util/ThemeApplyUtils$1$1;

    invoke-direct {v6, p0}, Lcom/android/thememanager/util/ThemeApplyUtils$1$1;-><init>(Lcom/android/thememanager/util/ThemeApplyUtils$1;)V

    .line 73
    .local v6, lastRun:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$localPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$removeFlags:J

    iget-wide v4, p0, Lcom/android/thememanager/util/ThemeApplyUtils$1;->val$applyFlags:J

    #calls: Lcom/android/thememanager/util/ThemeApplyUtils;->applyTheme(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/Runnable;)V
    invoke-static/range {v0 .. v6}, Lcom/android/thememanager/util/ThemeApplyUtils;->access$000(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/Runnable;)V

    .line 74
    return-void
.end method
