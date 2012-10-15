.class public Lcom/miui/home/launcher/ShortcutsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;


# instance fields
.field private mIconCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPositionMap:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/ShortcutsAdapter;->PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 54
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    .line 55
    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->buildSortingMap()V

    .line 58
    return-void
.end method

.method private buildSortingMap()V
    .locals 6

    .prologue
    .line 106
    new-instance v3, Ljava/util/TreeMap;

    sget-object v5, Lcom/miui/home/launcher/ShortcutsAdapter;->PC:Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;

    invoke-direct {v3, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 107
    .local v3, posMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 108
    .local v0, i:I
    iget-object v5, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v5, v5, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 109
    .local v4, si:Lcom/miui/home/launcher/ShortcutInfo;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 111
    .end local v4           #si:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_0
    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    .line 112
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mPositionMap:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 117
    .local v1, info:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 118
    .local v0, icon:Lcom/miui/home/launcher/ShortcutIcon;
    if-nez v0, :cond_0

    .line 119
    const v2, 0x7f030004

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v3, p3, v1}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 120
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/ShortcutIcon;->updateInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->buildSortingMap()V

    .line 63
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public reorderItemByInsert(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 6
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 72
    if-eq p1, p2, :cond_4

    .line 73
    const/4 v4, -0x1

    .line 74
    .local v4, is:I
    const/4 v2, 0x0

    .line 75
    .local v2, icur:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 76
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 77
    .local v0, cur:Lcom/miui/home/launcher/ShortcutInfo;
    if-ne v0, p1, :cond_0

    .line 78
    move v4, v1

    .line 75
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    if-ne v0, p2, :cond_1

    .line 81
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 82
    add-int/lit8 v3, v2, 0x1

    .end local v2           #icur:I
    .local v3, icur:I
    iput v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    move v2, v3

    .line 89
    .end local v3           #icur:I
    .restart local v2       #icur:I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #icur:I
    .restart local v3       #icur:I
    iput v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    move v2, v3

    .end local v3           #icur:I
    .restart local v2       #icur:I
    goto :goto_1

    .line 84
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #icur:I
    .restart local v3       #icur:I
    iput v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 85
    add-int/lit8 v2, v3, 0x1

    .end local v3           #icur:I
    .restart local v2       #icur:I
    iput v3, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    goto :goto_1

    .line 91
    .end local v0           #cur:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 93
    .end local v1           #i:I
    .end local v2           #icur:I
    .end local v4           #is:I
    :cond_4
    return-void
.end method

.method public saveContentPosition()V
    .locals 9

    .prologue
    .line 96
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 98
    .local v0, si:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v3, -0x1

    iget v5, v0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel;->getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0           #si:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutsAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v2, "com.miui.home.launcher.settings"

    invoke-static {v1, v2, v8}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :cond_1
    return-void
.end method
