.class public Lcom/miui/home/launcher/FolderInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "FolderInfo.java"


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field icon:Lcom/miui/home/launcher/FolderIcon;

.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field opened:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    .line 50
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 150
    .local v0, ufi:Lcom/miui/home/launcher/FolderInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 151
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method count()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    return-object v0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/database/Cursor;)V

    .line 59
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 60
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons()V

    .line 87
    :cond_1
    return-void
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 113
    const-string v0, "title"

    iget-object v1, p0, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public remove(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public removeItems(Ljava/util/ArrayList;Lcom/miui/home/launcher/Launcher;)V
    .locals 11
    .parameter
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;",
            "Lcom/miui/home/launcher/Launcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v8, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ShortcutInfo;>;"
    iget-object v9, p0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 119
    .local v1, contentsCount:I
    const/4 v4, 0x0

    .line 121
    .local v4, itemsRemoved:Z
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 122
    iget-object v9, p0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 123
    .local v0, appInfo:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, name:Ljava/lang/String;
    iget-object v3, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 125
    .local v3, intent:Landroid/content/Intent;
    if-eqz v6, :cond_3

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 128
    .local v7, ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    iget-object v9, v7, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 129
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget v9, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eqz v9, :cond_2

    .line 133
    invoke-static {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 135
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 121
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    .end local v0           #appInfo:Lcom/miui/home/launcher/ShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 142
    if-eqz v4, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 145
    :cond_5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4
    .parameter "title"
    .parameter "context"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p2, p0}, Lcom/miui/home/launcher/LauncherModel;->updateFolderTitleInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 108
    :cond_1
    return-void
.end method
