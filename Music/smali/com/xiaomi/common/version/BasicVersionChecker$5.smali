.class Lcom/xiaomi/common/version/BasicVersionChecker$5;
.super Ljava/lang/Object;
.source "BasicVersionChecker.java"

# interfaces
.implements Lcom/xiaomi/common/util/Network$PostDownloadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/common/version/BasicVersionChecker;->startDownload(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$failedText:Ljava/lang/CharSequence;

.field final synthetic val$localFileName:Ljava/lang/String;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/common/version/BasicVersionChecker;Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iput-object p2, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$localFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$failedText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPostDownload(Z)V
    .locals 5
    .parameter "sucess"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 367
    if-eqz p1, :cond_2

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$localFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$context:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$failedText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 375
    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iget-boolean v1, v1, Lcom/xiaomi/common/version/BasicVersionChecker;->mMustUpgrade:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iget-wide v1, v1, Lcom/xiaomi/common/version/BasicVersionChecker;->mMustUpgradeDeadline:J

    invoke-static {}, Lcom/xiaomi/common/util/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$5;->val$context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 378
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
