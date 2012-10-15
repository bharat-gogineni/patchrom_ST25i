.class Lcom/miui/home/launcher/FolderCling$2;
.super Ljava/lang/Object;
.source "FolderCling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 93
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    #getter for: Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 94
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    #getter for: Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;
    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$200(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 95
    .local v0, fInfo:Lcom/miui/home/launcher/FolderInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    #getter for: Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;
    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$200(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Folder;->getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 96
    .local v1, sInfo:Lcom/miui/home/launcher/ShortcutInfo;
    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    #getter for: Lcom/miui/home/launcher/FolderCling;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$300(Lcom/miui/home/launcher/FolderCling;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 98
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$2;->this$0:Lcom/miui/home/launcher/FolderCling;

    #getter for: Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;
    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$200(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Folder;->removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 99
    iget-object v2, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V

    .line 100
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 102
    :cond_0
    return-void
.end method
