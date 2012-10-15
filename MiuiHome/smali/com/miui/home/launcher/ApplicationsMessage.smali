.class public Lcom/miui/home/launcher/ApplicationsMessage;
.super Ljava/lang/Object;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;,
        Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final mLoadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;",
            ">;"
        }
    .end annotation
.end field

.field mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ApplicationsMessage;->updateMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, updateMessageFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method private updateMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .parameter "componentName"
    .parameter "text"
    .parameter "textBg"
    .parameter "tile"

    .prologue
    .line 121
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;

    .line 123
    .local v0, im:Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;
    invoke-interface {v0, p2, p3, p4}, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 124
    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .end local v0           #im:Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 125
    .local v2, si:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 126
    .local v1, lc:Lcom/miui/home/launcher/Launcher;
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    .line 128
    .end local v1           #lc:Lcom/miui/home/launcher/Launcher;
    .end local v2           #si:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public addApplication(Lcom/miui/home/launcher/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 73
    if-eqz p2, :cond_1

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;

    .line 76
    .local v0, im:Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;
    invoke-interface {v0}, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;->getMessageTextBackground()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;->getMessageIconTile()[B

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 79
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v0           #im:Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 137
    return-void
.end method

.method public onLaunchApplication(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 131
    return-void
.end method

.method public removeApplication(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, cl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 88
    .local v0, c:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v0           #c:Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 93
    .restart local v0       #c:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v0           #c:Landroid/content/ComponentName;
    :cond_2
    return-void
.end method

.method public requareUpdateMessages()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->initialize()V

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, updateCount:I
    iget-object v5, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    .line 102
    .local v0, fi:Lcom/miui/home/launcher/FolderIcon;
    if-nez v0, :cond_1

    .line 118
    .end local v0           #fi:Lcom/miui/home/launcher/FolderIcon;
    .end local v4           #updateCount:I
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v0       #fi:Lcom/miui/home/launcher/FolderIcon;
    .restart local v4       #updateCount:I
    :cond_1
    const/4 v3, 0x0

    .line 106
    .local v3, si:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v5, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;

    .local v2, imc:Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;
    move-object v5, v2

    .line 107
    check-cast v5, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #si:Lcom/miui/home/launcher/ShortcutInfo;
    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 108
    .restart local v3       #si:Lcom/miui/home/launcher/ShortcutInfo;
    iget-wide v5, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget-wide v7, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    invoke-interface {v2}, Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;->isEmptyMessage()Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    .end local v2           #imc:Lcom/miui/home/launcher/ApplicationsMessage$IconMessage;
    :cond_3
    if-nez v4, :cond_4

    .line 113
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/FolderIcon;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/FolderIcon;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
