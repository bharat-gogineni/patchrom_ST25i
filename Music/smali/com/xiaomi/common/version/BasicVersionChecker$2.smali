.class Lcom/xiaomi/common/version/BasicVersionChecker$2;
.super Ljava/lang/Object;
.source "BasicVersionChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/xiaomi/common/version/BasicVersionChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$2;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$2;->this$0:Lcom/xiaomi/common/version/BasicVersionChecker;

    invoke-virtual {v0}, Lcom/xiaomi/common/version/BasicVersionChecker;->onUpdateCanceled()V

    .line 207
    return-void
.end method
