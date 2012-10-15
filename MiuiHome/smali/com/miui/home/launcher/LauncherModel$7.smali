.class Lcom/miui/home/launcher/LauncherModel$7;
.super Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$7;->this$0:Lcom/miui/home/launcher/LauncherModel;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$7;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$7;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$7;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    .line 596
    return-void
.end method
