.class public Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplyThemeTask"
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
.field private mApplyFlags:J

.field private mContext:Landroid/content/Context;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mOldLockscrrenContainThemeValue:Z

.field private mProgress:Landroid/app/ProgressDialog;

.field private mRemoveFlags:J

.field private mRestoreDefaultFlags:J

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;JJLjava/lang/Runnable;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "removeFlags"
    .parameter "applyFlags"
    .parameter "finishRunnable"

    .prologue
    const-wide/16 v4, 0x0

    .line 626
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    .line 627
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    .line 628
    iput-object p2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    .line 629
    iget v0, p1, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v0, p5, p6}, Lcom/android/thememanager/ThemeHelper;->getCompatibleFlag(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    .line 630
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    or-long/2addr v0, p3

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    .line 631
    iput-object p7, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    .line 633
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->containLockscreenThemeValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    .line 637
    :cond_0
    return-void
.end method


# virtual methods
.method containLockscreenThemeValue()Z
    .locals 3

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 696
    .local v0, ret:Z
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    const-string v2, "/data/system/theme//lockscreen"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    const-string v2, "theme_values.xml"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 698
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :goto_1
    return v0

    .line 697
    .restart local v1       #zipfile:Ljava/util/zip/ZipFile;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 616
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "object"

    .prologue
    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 653
    .local v6, v:Landroid/view/View;
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 654
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 658
    .end local v6           #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 660
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 656
    .restart local v6       #v:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-wide v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    iget-wide v3, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    #calls: Lcom/android/thememanager/ThemeInfo;->apply(JJLandroid/app/ProgressDialog;)V
    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->access$000(Lcom/android/thememanager/ThemeInfo;JJLandroid/app/ProgressDialog;)V

    .line 657
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 616
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 14
    .parameter "object"

    .prologue
    const-wide/16 v12, 0x2000

    const-wide/16 v10, 0x0

    .line 665
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 666
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-wide v6, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    iget-wide v8, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/thememanager/ThemeInfo;->saveUserPreference(JJ)V

    .line 667
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_0

    .line 668
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 671
    :cond_0
    iget-wide v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    const-wide/32 v7, 0x10000

    and-long/2addr v5, v7

    cmp-long v5, v5, v10

    if-eqz v5, :cond_1

    .line 672
    const-string v4, "clock_changed_time_"

    .line 673
    .local v4, prefix:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 674
    .local v2, currentTime:J
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1x2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 675
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2x2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 676
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2x4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 680
    .end local v2           #currentTime:J
    .end local v4           #prefix:Ljava/lang/String;
    :cond_1
    iget-wide v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    iget-wide v7, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRestoreDefaultFlags:J

    or-long v0, v5, v7

    .line 681
    .local v0, configurationFlag:J
    iget-wide v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    and-long/2addr v5, v12

    cmp-long v5, v5, v10

    if-nez v5, :cond_3

    iget-wide v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveFlags:J

    const-wide/16 v7, 0x1000

    and-long/2addr v5, v7

    cmp-long v5, v5, v10

    if-eqz v5, :cond_3

    .line 683
    iget-boolean v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->containLockscreenThemeValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 684
    :cond_2
    or-long/2addr v0, v12

    .line 688
    :cond_3
    const-string v5, "ThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------------- apply theme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-object v7, v7, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/theme/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/android/thememanager/ThemeHelper;->sendThemeConfigurationChangeMsg(Landroid/content/Context;J)V

    .line 690
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 691
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 641
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    .line 642
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 643
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 646
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 647
    return-void
.end method
