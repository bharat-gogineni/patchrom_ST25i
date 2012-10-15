.class Lcom/miui/home/launcher/DeleteZone$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DeleteZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation


# instance fields
.field private mInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/DeleteZone;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 198
    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DeleteZone$DeleteObserver;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$000(Lcom/miui/home/launcher/DeleteZone;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherSettings;->deletePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;-><init>(Lcom/miui/home/launcher/DeleteZone$DeleteObserver;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
