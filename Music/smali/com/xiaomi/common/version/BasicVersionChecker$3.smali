.class Lcom/xiaomi/common/version/BasicVersionChecker$3;
.super Ljava/lang/Object;
.source "BasicVersionChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/common/version/BasicVersionChecker;->startUpgrade(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/xiaomi/common/version/BasicVersionChecker;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iput-object p2, p0, Lcom/xiaomi/common/version/BasicVersionChecker$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/common/version/BasicVersionChecker;->mRemoteAppVersion:I

    .line 193
    iget-object v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iget-boolean v0, v0, Lcom/xiaomi/common/version/BasicVersionChecker;->mMustUpgrade:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iget-wide v0, v0, Lcom/xiaomi/common/version/BasicVersionChecker;->mMustUpgradeDeadline:J

    invoke-static {}, Lcom/xiaomi/common/util/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$3;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 198
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$3;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    invoke-virtual {v0}, Lcom/xiaomi/common/version/BasicVersionChecker;->onUpdateCanceled()V

    .line 201
    return-void
.end method
