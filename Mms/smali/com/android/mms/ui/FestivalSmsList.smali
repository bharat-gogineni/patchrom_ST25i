.class public Lcom/android/mms/ui/FestivalSmsList;
.super Landroid/app/ListActivity;
.source "FestivalSmsList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCategoryName:Ljava/lang/String;

.field private mDownloadingView:Landroid/view/View;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsAtLastItem:Z

.field private mIsGettingMessages:Z

.field private mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMessageBody:Ljava/lang/String;

.field private mPickerMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FestivalSmsList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FestivalSmsList;)Lcom/android/mms/ui/FestivalSmsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/FestivalSmsList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FestivalSmsList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    return-object v0
.end method

.method private startGettingMoreMessages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    new-instance v0, Lcom/android/mms/ui/FestivalSmsList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FestivalSmsList$1;-><init>(Lcom/android/mms/ui/FestivalSmsList;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FestivalSmsList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 112
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 113
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItemMessage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mMessageBody:Ljava/lang/String;

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 116
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsList;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "forwarded_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FestivalSmsList;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 120
    goto :goto_0

    .line 122
    :sswitch_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FestivalSmsList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 123
    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0025 -> :sswitch_0
        0x7f0a0142 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f040013

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "category_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    .line 51
    const v2, 0x7f100040

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    .line 54
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/mms/ui/FestivalSmsList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 56
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setListViewTouchPadding(Landroid/widget/AbsListView;)V

    .line 58
    new-instance v2, Lcom/android/mms/ui/FestivalSmsListAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/ui/FestivalSmsListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    .line 59
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mPickerMode:Z

    .line 64
    iget-boolean v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mPickerMode:Z

    if-nez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalSmsList;->registerForContextMenu(Landroid/view/View;)V

    .line 68
    :cond_0
    iput-boolean v4, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsAtLastItem:Z

    .line 69
    iput-boolean v4, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsGettingMessages:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mActionBar:Landroid/app/ActionBar;

    .line 72
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/mms/ui/FestivalSmsList;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void

    :cond_1
    move v2, v4

    .line 62
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v2, 0x7f0a0142

    const v1, 0x7f0a0025

    const/4 v0, 0x0

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 79
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 80
    invoke-interface {p1, v0, v2, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 205
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 159
    if-gez p3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mPickerMode:Z

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItemMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, body:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/FestivalSmsList;->setResult(ILandroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->finish()V

    goto :goto_0

    .line 169
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 98
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsList;->finish()V

    goto :goto_0

    .line 101
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/FestivalSmsListAdapter;->shuffle()V

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000de -> :sswitch_1
    .end sparse-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 178
    add-int v0, p2, p3

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsAtLastItem:Z

    .line 179
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 183
    if-nez p2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mDownloadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mIsAtLastItem:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsList;->startGettingMoreMessages()V

    .line 188
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->requery()V

    .line 194
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsList;->mListAdapter:Lcom/android/mms/ui/FestivalSmsListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->close()V

    .line 200
    return-void
.end method
