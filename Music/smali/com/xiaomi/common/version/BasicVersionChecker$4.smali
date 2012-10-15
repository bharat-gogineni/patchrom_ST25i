.class Lcom/xiaomi/common/version/BasicVersionChecker$4;
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
    .line 184
    iput-object p1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$4;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iput-object p2, p0, Lcom/xiaomi/common/version/BasicVersionChecker$4;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$4;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    iget-object v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$4;->val$context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/common/version/BasicVersionChecker;->startDownload(Landroid/app/Activity;)V

    .line 187
    return-void
.end method
