.class Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;
.super Ljava/lang/Object;
.source "BaseTrackBrowserMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;->donwload(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

.field final synthetic val$selected:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    .local p0, this:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;,"Lcom/miui/player/ui/menu/BaseTrackBrowserMenu.2;"
    iput-object p1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->this$0:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;

    iput-object p2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    iput-object p3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$selected:Ljava/util/Set;

    iput-object p4, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .local p0, this:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;,"Lcom/miui/player/ui/menu/BaseTrackBrowserMenu.2;"
    const/4 v5, 0x0

    .line 690
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->this$0:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    iget-object v4, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$selected:Ljava/util/Set;

    invoke-virtual {v2, v3, v4}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;->getSelectedSongList(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v0

    .line 696
    .local v0, list:Lcom/miui/player/plugin/onlinemusic2/AudioList;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 697
    new-instance v1, Lcom/miui/player/network/MP3DownloadTask;

    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    iget-object v3, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/player/network/MP3DownloadTask;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/player/plugin/onlinemusic2/AudioList;)V

    .line 698
    .local v1, task:Lcom/miui/player/network/MP3DownloadTask;
    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/player/network/MP3DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 699
    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->val$context:Landroid/content/Context;

    const v3, 0x7f090077

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 702
    .end local v1           #task:Lcom/miui/player/network/MP3DownloadTask;
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$2;->this$0:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;

    iget-object v2, v2, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;->mTemplateListActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/base/TemplateListActivity;->leaveBatchSelectionMode()Z

    goto :goto_0
.end method
