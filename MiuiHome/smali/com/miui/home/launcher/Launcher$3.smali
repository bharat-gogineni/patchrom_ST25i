.class Lcom/miui/home/launcher/Launcher$3;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->installPresetApp(Lcom/miui/home/launcher/ShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$info:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$3;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$3;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1500
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$3;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->deletePresetArchive()Z

    .line 1506
    :goto_0
    return-void

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$3;->this$0:Lcom/miui/home/launcher/Launcher;

    #getter for: Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$600(Lcom/miui/home/launcher/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1504
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$3;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$602(Lcom/miui/home/launcher/Launcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
