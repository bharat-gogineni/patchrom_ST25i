.class Lcom/android/mms/ui/ConversationBase$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Lcom/android/mms/util/EditableListView$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

.field private mRootMenu:Landroid/view/Menu;

.field private mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1698
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationBase$ModeCallback;)Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    return-object v0
.end method

.method private createMenu(Landroid/view/ActionMode;)V
    .locals 7
    .parameter "mode"

    .prologue
    .line 1779
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x603001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1781
    .local v0, customView:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1783
    new-instance v3, Landroid/widget/EditableListView$DropDownMenu;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v2, 0x60b0002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v5, 0x7f0f0005

    new-instance v6, Lcom/android/mms/ui/ConversationBase$ModeCallback$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback$2;-><init>(Lcom/android/mms/ui/ConversationBase$ModeCallback;)V

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/widget/EditableListView$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    .line 1795
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v3, 0x7f0a018c

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1797
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    invoke-virtual {v2, v1}, Landroid/widget/EditableListView$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 1799
    :cond_0
    return-void
.end method

.method private getCheckedMessageItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1976
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v1}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v0

    .line 1977
    .local v0, checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedItems(Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private handleMenuItemClick(Landroid/view/MenuItem;)V
    .locals 25
    .parameter "item"

    .prologue
    .line 1981
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->getCheckedMessageItems()Ljava/util/List;

    move-result-object v10

    .line 1982
    .local v10, checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageItem;>;"
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    .line 1983
    .local v18, menuId:I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 1984
    .local v9, checkedCount:I
    if-eqz v9, :cond_0

    const/4 v2, 0x1

    if-eq v9, v2, :cond_1

    const v2, 0x7f1000e4

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    const v2, 0x7f1000e5

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    const v2, 0x7f1000e7

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    const v2, 0x7f1000e6

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    .line 1989
    :cond_0
    const-string v2, "ConversationBase"

    const-string v3, "onMenuItemClick: invalid params, checkedItems.size=%d, menuId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :goto_0
    return-void

    .line 1995
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/ui/MessageItem;

    .line 1996
    .local v21, msgItem:Lcom/android/mms/ui/MessageItem;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2005
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->forwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 1998
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, v21

    #calls: Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationBase;->access$900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    goto :goto_0

    .line 2002
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->copyToClipboard(Ljava/util/List;)V
    invoke-static {v2, v10}, Lcom/android/mms/ui/ConversationBase;->access$2200(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;)V

    goto :goto_0

    .line 2008
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v2}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v11

    .line 2009
    .local v11, checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2012
    .local v22, position:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    .local v12, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, v21

    invoke-static {v2, v12, v0}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v19

    .line 2019
    .local v19, messageDetails:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2013
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v19           #messageDetails:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 2014
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "ConversationBase"

    const-string v3, "onMenuItemClick: get cursor failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2028
    .end local v11           #checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v13           #e:Ljava/lang/Exception;
    .end local v22           #position:I
    :pswitch_4
    const/4 v2, 0x1

    if-ne v2, v9, :cond_2

    .line 2029
    new-instance v1, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/net/Uri;ZJZ)V

    .line 2032
    .local v1, l:Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v4

    #calls: Lcom/android/mms/ui/ConversationBase;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/mms/ui/ConversationBase;->access$2300(Lcom/android/mms/ui/ConversationBase;Landroid/content/DialogInterface$OnClickListener;ZZ)V

    goto/16 :goto_0

    .line 2034
    .end local v1           #l:Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;
    :cond_2
    new-instance v17, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v10}, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;-><init>(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;)V

    .line 2035
    .local v17, listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    const/4 v14, 0x0

    .line 2036
    .local v14, hasLockedMessages:Z
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/ui/MessageItem;

    .line 2037
    .local v20, mi:Lcom/android/mms/ui/MessageItem;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2038
    const/4 v14, 0x1

    .line 2042
    .end local v20           #mi:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, v17

    #calls: Lcom/android/mms/ui/ConversationBase;->confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    invoke-static {v2, v0, v9, v14}, Lcom/android/mms/ui/ConversationBase;->access$2400(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V

    goto/16 :goto_0

    .line 2048
    .end local v14           #hasLockedMessages:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    #calls: Lcom/android/mms/ui/ConversationBase;->copyMedia(J)Z
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ConversationBase;->access$2500(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v24

    .line 2050
    .local v24, success:Z
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2051
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00f2

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2052
    const v2, 0x1010355

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2053
    if-eqz v24, :cond_5

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v3, 0x7f0a00f3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$2600()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2058
    :goto_1
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2059
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2056
    :cond_5
    const v2, 0x7f0a00f4

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 2064
    .end local v8           #builder:Landroid/app/AlertDialog$Builder;
    .end local v24           #success:Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    #calls: Lcom/android/mms/ui/ConversationBase;->copyToDrmProvider(J)Z
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationBase;->access$2700(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v5

    #calls: Lcom/android/mms/ui/ConversationBase;->getDrmMimeSavedStringRsrc(JZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/ConversationBase;->access$2800(Lcom/android/mms/ui/ConversationBase;JZ)I

    move-result v23

    .line 2065
    .local v23, resId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x0

    move/from16 v0, v23

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2070
    .end local v23           #resId:I
    :pswitch_7
    const/4 v2, 0x1

    if-ne v2, v9, :cond_6

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    #calls: Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/ConversationBase;->access$2900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 2073
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x1

    #calls: Lcom/android/mms/ui/ConversationBase;->batchLockMessages(Ljava/util/List;Z)V
    invoke-static {v2, v10, v3}, Lcom/android/mms/ui/ConversationBase;->access$3000(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 2079
    :pswitch_8
    const/4 v2, 0x1

    if-ne v2, v9, :cond_7

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    #calls: Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/ConversationBase;->access$2900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 2082
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x0

    #calls: Lcom/android/mms/ui/ConversationBase;->batchLockMessages(Ljava/util/List;Z)V
    invoke-static {v2, v10, v3}, Lcom/android/mms/ui/ConversationBase;->access$3000(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 2088
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v16

    .line 2090
    .local v16, intent:Landroid/content/Intent;
    const-string v2, "select_id"

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 1996
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000e3
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private prepareMultipleSelectionMenu()V
    .locals 14

    .prologue
    .line 1835
    iget-object v12, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v12, v12, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    const/4 v9, 0x1

    .line 1836
    .local v9, multipleRecipients:Z
    :goto_0
    const/4 v0, 0x1

    .line 1837
    .local v0, allLocked:Z
    const/4 v2, 0x0

    .line 1838
    .local v2, hasText:Z
    iget-object v12, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v12, v12, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    .line 1839
    .local v10, threadId:J
    if-nez v9, :cond_3

    .line 1840
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->getCheckedMessageItems()Ljava/util/List;

    move-result-object v1

    .line 1841
    .local v1, checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageItem;

    .line 1842
    .local v5, item:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-nez v12, :cond_0

    .line 1843
    const/4 v0, 0x0

    .line 1847
    .end local v5           #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageItem;

    .line 1848
    .restart local v5       #item:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->hasText()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1849
    const/4 v2, 0x1

    .line 1855
    .end local v1           #checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageItem;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/mms/ui/MessageItem;
    :cond_3
    iget-object v12, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v12}, Landroid/view/Menu;->size()I

    move-result v8

    .line 1856
    .local v8, menuSize:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    if-ge v4, v8, :cond_9

    .line 1857
    iget-object v12, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v12, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1858
    .local v7, menuItem:Landroid/view/MenuItem;
    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 1859
    .local v6, menuId:I
    packed-switch v6, :pswitch_data_0

    .line 1885
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1856
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1835
    .end local v0           #allLocked:Z
    .end local v2           #hasText:Z
    .end local v4           #index:I
    .end local v6           #menuId:I
    .end local v7           #menuItem:Landroid/view/MenuItem;
    .end local v8           #menuSize:I
    .end local v9           #multipleRecipients:Z
    .end local v10           #threadId:J
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 1861
    .restart local v0       #allLocked:Z
    .restart local v2       #hasText:Z
    .restart local v4       #index:I
    .restart local v6       #menuId:I
    .restart local v7       #menuItem:Landroid/view/MenuItem;
    .restart local v8       #menuSize:I
    .restart local v9       #multipleRecipients:Z
    .restart local v10       #threadId:J
    :pswitch_0
    if-eqz v9, :cond_5

    .line 1862
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1863
    :cond_5
    if-eqz v0, :cond_6

    .line 1864
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1866
    :cond_6
    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1870
    :pswitch_1
    if-eqz v9, :cond_7

    .line 1871
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1872
    :cond_7
    if-eqz v0, :cond_8

    .line 1873
    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1875
    :cond_8
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1879
    :pswitch_2
    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1882
    :pswitch_3
    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1889
    .end local v6           #menuId:I
    .end local v7           #menuItem:Landroid/view/MenuItem;
    :cond_9
    return-void

    .line 1859
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000e4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private prepareNoneSelectionMenu()V
    .locals 4

    .prologue
    .line 1827
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v2

    .line 1828
    .local v2, menuSize:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1829
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v3, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1830
    .local v1, menuItem:Landroid/view/MenuItem;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1832
    .end local v1           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private prepareSingleSelectionMenu()V
    .locals 13

    .prologue
    const v12, 0x7f1000eb

    const v11, 0x7f1000ea

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1892
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->getCheckedMessageItems()Ljava/util/List;

    move-result-object v0

    .line 1893
    .local v0, checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v9, :cond_0

    .line 1894
    const-string v5, "ConversationBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareSingleSelectionMenu: expect size=1 but size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :goto_0
    return-void

    .line 1898
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/MessageItem;

    .line 1900
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v3

    .line 1901
    .local v3, menuSize:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1902
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v5, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1901
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1906
    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1907
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000e3

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1910
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v5, v5, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 1913
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1914
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000e5

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1920
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v5, v5, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 1921
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000e9

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1924
    :cond_4
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1925
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1937
    :cond_5
    :goto_3
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1947
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationBase;->access$1900(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1948
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v5, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1950
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToDrmProvider(J)Z
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationBase;->access$2000(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1951
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000ec

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1952
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1953
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    #calls: Lcom/android/mms/ui/ConversationBase;->getDrmMimeMenuStringRsrc(J)I
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationBase;->access$2100(Lcom/android/mms/ui/ConversationBase;J)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1961
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_7
    :goto_4
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1963
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v9, :cond_9

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMessageType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMessageType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    .line 1966
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v5, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1970
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000e6

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->hasText()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1971
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000e8

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1972
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000e7

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1916
    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    const v6, 0x7f1000e4

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1932
    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 1933
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v5, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1942
    :pswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    #calls: Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationBase;->access$1900(Lcom/android/mms/ui/ConversationBase;J)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1943
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    invoke-interface {v5, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1925
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1937
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateMenu(I)V
    .locals 8
    .parameter "checkCount"

    .prologue
    const/4 v7, 0x1

    .line 1803
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v3, 0x7f0a018e

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v6}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->count()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1805
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1806
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    invoke-virtual {v2, v1}, Landroid/widget/EditableListView$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 1808
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    const v3, 0x7f1000f1

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1809
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 1810
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v2}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1811
    const v2, 0x7f0a0183

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1817
    :cond_1
    :goto_0
    if-le p1, v7, :cond_3

    .line 1818
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->prepareMultipleSelectionMenu()V

    .line 1824
    :goto_1
    return-void

    .line 1813
    :cond_2
    const v2, 0x7f0a0182

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1819
    :cond_3
    if-ne p1, v7, :cond_4

    .line 1820
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->prepareSingleSelectionMenu()V

    goto :goto_1

    .line 1822
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->prepareNoneSelectionMenu()V

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1730
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->handleMenuItemClick(Landroid/view/MenuItem;)V

    .line 1732
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1733
    .local v0, menuId:I
    const v1, 0x7f1000e3

    if-eq v1, v0, :cond_0

    const v1, 0x7f1000e6

    if-eq v1, v0, :cond_0

    const v1, 0x7f1000e8

    if-ne v1, v0, :cond_1

    .line 1737
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 1739
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V
    .locals 3
    .parameter "checkable"

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    .line 1762
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v2}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->setCheckedItem(Ljava/util/HashSet;)V

    .line 1763
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v1}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->count()I

    move-result v0

    .line 1764
    .local v0, checkCount:I
    if-nez v0, :cond_0

    .line 1765
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->exitEditMode()V

    .line 1769
    :goto_0
    return-void

    .line 1767
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->updateMenu(I)V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/16 v3, 0x8

    .line 1704
    iput-object p2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mRootMenu:Landroid/view/Menu;

    .line 1705
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1706
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1707
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->prepareNoneSelectionMenu()V

    .line 1709
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setAllowTranscriptOnResize(Z)V

    .line 1710
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->enterCheckMode()V

    .line 1711
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getEditableListViewCheckable()Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    .line 1713
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->createMenu(Landroid/view/ActionMode;)V

    .line 1715
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationBase;->disableAttachmentPanel()V

    .line 1716
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationBase;->hideSoftKeyboard()V

    .line 1717
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1718
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mContactPanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1719
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$1700(Lcom/android/mms/ui/ConversationBase;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1720
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1722
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1743
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mContactPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1746
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;-><init>(Lcom/android/mms/ui/ConversationBase$ModeCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->post(Ljava/lang/Runnable;)Z

    .line 1752
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$1600(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->exitCheckMode()V

    .line 1753
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$1700(Lcom/android/mms/ui/ConversationBase;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1757
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1726
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibleViewCheckStateChanged(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 1773
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    .line 1774
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/mms/ui/MessageListItem;->onCheckStateChanged(Z)V

    .line 1776
    :cond_0
    return-void
.end method
