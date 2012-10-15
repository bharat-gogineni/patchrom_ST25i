.class public Lcom/android/mms/util/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/EditableListView$EditModeWrapper;,
        Lcom/android/mms/util/EditableListView$EditableListData;,
        Lcom/android/mms/util/EditableListView$EditableListIdMapper;,
        Lcom/android/mms/util/EditableListView$EditableListViewCheckable;,
        Lcom/android/mms/util/EditableListView$EditModeListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

.field private mInitPosition:Ljava/lang/Integer;

.field private mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

.field private mPreClickable:Z

.field private mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPreLongClickable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditModeWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/EditableListView;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mInitPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/util/EditableListView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/mms/util/EditableListView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditableListData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/util/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView;->mPreClickable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/util/EditableListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/mms/util/EditableListView;->mPreClickable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/util/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/mms/util/EditableListView;->mPreLongClickable:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/util/EditableListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/mms/util/EditableListView;->mPreLongClickable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/util/EditableListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/util/EditableListView;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/mms/util/EditableListView;->mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p1
.end method


# virtual methods
.method public enterEditMode()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->isEditMode()Z
    invoke-static {v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$200(Lcom/android/mms/util/EditableListView$EditableListData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/EditableListView;->mInitPosition:Ljava/lang/Integer;

    .line 132
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    invoke-virtual {p0, v0}, Lcom/android/mms/util/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/EditableListView;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public enterEditMode(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->isEditMode()Z
    invoke-static {v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$200(Lcom/android/mms/util/EditableListView$EditableListData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/EditableListView;->mInitPosition:Ljava/lang/Integer;

    .line 144
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    invoke-virtual {p0, v0}, Lcom/android/mms/util/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/EditableListView;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->isEditMode()Z
    invoke-static {v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$200(Lcom/android/mms/util/EditableListView$EditableListData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/EditableListView;->mInitPosition:Ljava/lang/Integer;

    .line 156
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method public getEditableListViewCheckable()Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->isEditMode()Z
    invoke-static {v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$200(Lcom/android/mms/util/EditableListView$EditableListData;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/util/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->setAdapter(Landroid/widget/ListAdapter;)V
    invoke-static {v0, p1}, Lcom/android/mms/util/EditableListView$EditableListData;->access$000(Lcom/android/mms/util/EditableListView$EditableListData;Landroid/widget/ListAdapter;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setEditModeListener(Lcom/android/mms/util/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/util/EditableListView;->setEditModeListener(Lcom/android/mms/util/EditableListView$EditModeListener;Z)V

    .line 74
    return-void
.end method

.method public setEditModeListener(Lcom/android/mms/util/EditableListView$EditModeListener;Z)V
    .locals 2
    .parameter "editModeListener"
    .parameter "needLongClick"

    .prologue
    .line 84
    if-eqz p1, :cond_5

    .line 85
    iget-object v1, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/android/mms/util/EditableListView$EditModeWrapper;

    invoke-direct {v1, p0}, Lcom/android/mms/util/EditableListView$EditModeWrapper;-><init>(Lcom/android/mms/util/EditableListView;)V

    iput-object v1, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    invoke-virtual {v1, p1}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->setWrapped(Lcom/android/mms/util/EditableListView$EditModeListener;)V

    .line 91
    iget-object v1, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    if-nez v1, :cond_4

    .line 92
    new-instance v1, Lcom/android/mms/util/EditableListView$EditableListData;

    invoke-direct {v1, p0}, Lcom/android/mms/util/EditableListView$EditableListData;-><init>(Lcom/android/mms/util/EditableListView;)V

    iput-object v1, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    .line 97
    :goto_0
    if-eqz p2, :cond_1

    .line 98
    new-instance v1, Lcom/android/mms/util/EditableListView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/util/EditableListView$1;-><init>(Lcom/android/mms/util/EditableListView;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/util/EditableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->hasAdapter()Z
    invoke-static {v1}, Lcom/android/mms/util/EditableListView$EditableListData;->access$100(Lcom/android/mms/util/EditableListView$EditableListData;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/util/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/android/mms/util/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 113
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_2

    .line 114
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 116
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->setAdapter(Landroid/widget/ListAdapter;)V
    invoke-static {v1, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$000(Lcom/android/mms/util/EditableListView$EditableListData;Landroid/widget/ListAdapter;)V

    .line 121
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :cond_3
    :goto_1
    return-void

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;

    invoke-virtual {v1}, Lcom/android/mms/util/EditableListView$EditableListData;->clear()V

    goto :goto_0

    .line 119
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/util/EditableListView;->mModeCallback:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    goto :goto_1
.end method
