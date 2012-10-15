.class public Lcom/android/mms/ui/BookmarkFragment;
.super Landroid/app/Fragment;
.source "BookmarkFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;,
        Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;,
        Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;,
        Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

.field private mList:Landroid/widget/ExpandableListView;

.field private mPickerMode:Z

.field private mRootView:Landroid/view/View;

.field private mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    .line 768
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BookmarkFragment;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BookmarkFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    return v0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-boolean v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    if-eqz v3, :cond_1

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, body:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #body:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 208
    .restart local v0       #body:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v3, p4, v0}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->selectPhrase(ILjava/lang/String;)V

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->returnPickerResult()V

    .line 223
    .end local v0           #body:Ljava/lang/String;
    .end local p2
    :goto_1
    return v2

    .line 210
    .restart local v0       #body:Ljava/lang/String;
    .restart local p2
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 211
    .local v1, c:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    iget-object v4, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getBookmarkListAdapter()Lcom/android/mms/ui/BookmarkListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->selectBookmark(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 217
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_1
    if-ne p3, v2, :cond_2

    .line 218
    if-eqz p2, :cond_2

    instance-of v3, p2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v3, :cond_2

    .line 219
    check-cast p2, Lcom/android/mms/ui/MessageListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_1

    .line 223
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    move-result v2

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 176
    .local v0, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v3, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    .line 177
    .local v1, type:I
    if-ne v1, v2, :cond_0

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 198
    :goto_0
    return v2

    .line 180
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->forwardMessage()V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->edit()V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->delete()V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->saveToIcc()V

    goto :goto_0

    .line 192
    :pswitch_4
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->viewOrigin()V

    goto :goto_0

    .line 198
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 118
    iget-boolean v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    if-eqz v7, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p3

    .line 122
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 123
    .local v4, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v7, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    .line 124
    .local v6, type:I
    iget-wide v7, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 125
    .local v3, group:I
    iget-wide v7, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 127
    .local v2, child:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, body:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 130
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/mms/ui/PhraseListAdapter;->isNewPhraseItem(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/PhraseListAdapter;->isFull()Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->selectPhrase(ILjava/lang/String;)V

    .line 133
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->edit()V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7, v3, v2}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #body:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 137
    .restart local v0       #body:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v7, v2, v0}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->selectPhrase(ILjava/lang/String;)V

    .line 139
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 140
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0025

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 142
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00bd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 144
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a015c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 148
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7, v3, v2}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 149
    .local v1, c:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    iget-object v8, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v8}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getBookmarkListAdapter()Lcom/android/mms/ui/BookmarkListAdapter;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->selectBookmark(Lcom/android/mms/ui/MessageItem;)V

    .line 152
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 153
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0155

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0025

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 158
    iget-object v7, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->isMms()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    invoke-virtual {v8}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 162
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 163
    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 167
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0154

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mRootView:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;

    .line 73
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/mms/ui/PickerActivity;

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    .line 76
    :cond_0
    new-instance v1, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    iget-boolean v2, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;-><init>(Lcom/android/mms/ui/BookmarkFragment;Z)V

    iput-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mSelectedMessage:Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f10000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->setListViewTouchPadding(Landroid/widget/AbsListView;)V

    .line 83
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f10001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 88
    :cond_1
    new-instance v1, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->load(Z)V

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 106
    :goto_0
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 112
    return-void
.end method
