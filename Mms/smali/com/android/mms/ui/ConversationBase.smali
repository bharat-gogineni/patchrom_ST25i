.class public abstract Lcom/android/mms/ui/ConversationBase;
.super Lcom/android/mms/ui/MessageEditableActivityBase;
.source "ConversationBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationBase$ModeCallback;,
        Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;,
        Lcom/android/mms/ui/ConversationBase$PduBodyCache;,
        Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    }
.end annotation


# static fields
.field private static final SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

.field private static mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mBackPressed:Z

.field protected mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

.field private mBatchDeleteTaskCount:I

.field private mBtnPaddingView:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mHoldMsgListNum:I

.field private mInAnimation:Z

.field private mInitTargetMessageId:J

.field private mIsShowAllMsgList:Z

.field private mIsStopped:Z

.field private mListItemStyle:Ljava/lang/String;

.field protected mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field protected mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mNewMessageCount:I

.field private mOldTimeToSend:J

.field private mPaddingView:Landroid/view/View;

.field private mPendingChangeCursor:Landroid/database/Cursor;

.field private mPossiblePendingNotification:Z

.field private mSentMessage:Z

.field private wasSoftKeyboardEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;-><init>()V

    .line 141
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mIsStopped:Z

    .line 1118
    new-instance v0, Lcom/android/mms/ui/ConversationBase$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$8;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListItemHandler:Landroid/os/Handler;

    .line 1223
    new-instance v0, Lcom/android/mms/ui/ConversationBase$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$9;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 1325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1433
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    .line 1698
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mIsStopped:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->requestChangeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationBase;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToDrmProvider(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ConversationBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/mms/ui/ConversationBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/mms/ui/ConversationBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationBase;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeMenuStringRsrc(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->copyToClipboard(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationBase;Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->copyMedia(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->copyToDrmProvider(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationBase;JZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeSavedStringRsrc(JZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    return-void
.end method

.method static synthetic access$300()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->batchLockMessages(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$302(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-object p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mIsShowAllMsgList:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationBase;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ConversationBase;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationBase;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method private static appendWithSeparator(Ljava/lang/StringBuilder;Ljava/lang/String;C)V
    .locals 2
    .parameter "sb"
    .parameter "appendee"
    .parameter "separator"

    .prologue
    .line 846
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 850
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 854
    .local v0, lastChar:C
    if-ne v0, p2, :cond_2

    .line 855
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private batchLockMessages(Ljava/util/List;Z)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 784
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 785
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 786
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_0

    .line 787
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 788
    const-string v7, "_id"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 793
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_0

    .line 794
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 795
    const-string v7, "_id"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 801
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 802
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 805
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :cond_6
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 809
    const-string v5, "locked"

    if-eqz p2, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$7;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/mms/ui/ConversationBase$7;-><init>(Lcom/android/mms/ui/ConversationBase;Ljava/lang/StringBuilder;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    const-string v2, "lockMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 823
    return-void

    .line 809
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1341
    const/4 v5, -0x1

    .line 1342
    .local v5, newSelectionPos:I
    const/4 v0, 0x0

    .line 1343
    .local v0, IsShowAllMsgListBtnPressed:Z
    const/4 v2, 0x0

    .line 1345
    .local v2, firstMsgListItemBodyTop:I
    iget-wide v9, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    cmp-long v9, v9, v12

    if-eqz v9, :cond_2

    .line 1346
    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1347
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1348
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1349
    .local v3, msgId:J
    iget-wide v9, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    cmp-long v9, v3, v9

    if-nez v9, :cond_0

    .line 1350
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 1354
    .end local v3           #msgId:J
    :cond_1
    iput-wide v12, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 1358
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_a

    move v6, v7

    .line 1359
    .local v6, wasEmpty:Z
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    iget-object v10, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v10

    sub-int v1, v9, v10

    .line 1362
    .local v1, addedItem:I
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->isClickable()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1363
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    iget v10, p0, Lcom/android/mms/ui/ConversationBase;->mHoldMsgListNum:I

    if-le v9, v10, :cond_3

    .line 1364
    const/4 v0, 0x1

    .line 1365
    iget v9, p0, Lcom/android/mms/ui/ConversationBase;->mHoldMsgListNum:I

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1366
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->getFirstMsgListItemBodyTop(Landroid/database/Cursor;)I

    move-result v2

    .line 1371
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MessageListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1372
    iget-boolean v9, p0, Lcom/android/mms/ui/ConversationBase;->mIsShowAllMsgList:Z

    if-nez v9, :cond_4

    .line 1373
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MessageListView;->addHeaderView(Landroid/view/View;)V

    .line 1378
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isReadOnly()Z

    move-result v9

    if-nez v9, :cond_f

    .line 1379
    if-eq v5, v11, :cond_b

    .line 1380
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9, p1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1381
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 1398
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 1399
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget v10, p0, Lcom/android/mms/ui/ConversationBase;->mHoldMsgListNum:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10, v2}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    .line 1400
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 1409
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    if-nez v7, :cond_7

    .line 1410
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1411
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 1414
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_8

    .line 1415
    iput-boolean v8, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    .line 1420
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 1422
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7, v8}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 1424
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/PesudoListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_9

    .line 1425
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->showMessageAnimation()V

    .line 1427
    :cond_9
    return-void

    .end local v1           #addedItem:I
    .end local v6           #wasEmpty:Z
    :cond_a
    move v6, v8

    .line 1358
    goto/16 :goto_0

    .line 1382
    .restart local v1       #addedItem:I
    .restart local v6       #wasEmpty:Z
    :cond_b
    if-gtz v1, :cond_c

    if-nez v6, :cond_c

    iget v9, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    if-lez v9, :cond_e

    .line 1383
    :cond_c
    iget-boolean v9, p0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v9}, Lcom/android/mms/ui/PesudoListView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_d

    if-nez v0, :cond_d

    .line 1384
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->snapshotMsgList()V

    .line 1386
    :cond_d
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9, p1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1387
    if-nez v0, :cond_5

    .line 1388
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListView;->moveToEnd()V

    goto :goto_1

    .line 1391
    :cond_e
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9, p1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1394
    :cond_f
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9, p1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsReadAsync()V

    .line 1219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    .line 1221
    :cond_0
    return-void
.end method

.method private confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    .locals 10
    .parameter "listener"
    .parameter "affacted"
    .parameter "hasLockedMessages"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 702
    const v4, 0x7f04000a

    invoke-static {p0, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 703
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f100026

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 704
    .local v3, msg:Landroid/widget/TextView;
    const v4, 0x7f0a0184

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    const v4, 0x7f100027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 706
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 717
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a009d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00a5

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0078

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 724
    return-void

    .line 709
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->setDeleteLockedMessage(Z)V

    .line 710
    new-instance v4, Lcom/android/mms/ui/ConversationBase$5;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/mms/ui/ConversationBase$5;-><init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 6
    .parameter "listener"
    .parameter "locked"
    .parameter "isGroup"

    .prologue
    const v4, 0x7f0a009d

    .line 680
    if-eqz p2, :cond_0

    const v3, 0x7f0a009e

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, title:Ljava/lang/String;
    const-string v1, ""

    .line 683
    .local v1, message:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 684
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 685
    const v3, 0x7f0a00a1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 691
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 692
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00a5

    invoke-virtual {v3, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0078

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 698
    return-void

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 680
    goto :goto_0

    .line 687
    .restart local v1       #message:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    const v3, 0x7f0a00a3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const v3, 0x7f0a00a2

    goto :goto_2
.end method

.method private copyMedia(J)Z
    .locals 7
    .parameter "msgId"

    .prologue
    .line 918
    const/4 v4, 0x1

    .line 919
    .local v4, result:Z
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 921
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 922
    const/4 v6, 0x0

    .line 935
    :goto_0
    return v6

    .line 925
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 926
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 927
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 928
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 930
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/ogg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 932
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/ConversationBase;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 926
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    move v6, v4

    .line 935
    goto :goto_0
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v3, 0x0

    .line 950
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 953
    const/4 v7, 0x0

    .line 955
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v2

    .line 956
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_e

    .line 957
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 959
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    .line 960
    if-nez v5, :cond_0

    .line 961
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 963
    :cond_0
    if-nez v5, :cond_1

    .line 964
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    .line 968
    :cond_1
    if-nez v5, :cond_4

    move-object v5, p2

    .line 975
    :goto_0
    invoke-direct {p0, v5, p2}, Lcom/android/mms/ui/ConversationBase;->getFileNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 982
    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 983
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([B)V

    .line 984
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 990
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/mms/ui/ConversationBase;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 993
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 994
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_6

    .line 995
    const-string v1, "ConversationBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1017
    if-eqz v2, :cond_2

    .line 1019
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1026
    :cond_2
    if-eqz v4, :cond_3

    .line 1028
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move v1, v3

    .line 1036
    :goto_2
    return v1

    .line 972
    :cond_4
    :try_start_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 973
    const-string v5, "[?|*]"

    const-string v8, "_"

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 986
    :cond_5
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 987
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v6

    goto :goto_1

    .line 1020
    :catch_0
    move-exception v1

    .line 1022
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1023
    goto :goto_2

    .line 1029
    :catch_1
    move-exception v1

    .line 1031
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1032
    goto :goto_2

    .line 999
    :cond_6
    :try_start_5
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 1001
    const/16 v4, 0x1f40

    :try_start_6
    new-array v4, v4, [B

    .line 1003
    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_9

    .line 1004
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1012
    :catch_2
    move-exception v1

    move-object v4, v2

    move-object v2, v5

    .line 1014
    :goto_4
    :try_start_7
    const-string v5, "ConversationBase"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1017
    if-eqz v4, :cond_7

    .line 1019
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1026
    :cond_7
    if-eqz v2, :cond_8

    .line 1028
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_8
    move v1, v3

    .line 1032
    goto :goto_2

    .line 1009
    :cond_9
    :try_start_a
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationBase;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1017
    :goto_5
    if-eqz v2, :cond_a

    .line 1019
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 1026
    :cond_a
    if-eqz v5, :cond_b

    .line 1028
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1036
    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    .line 1020
    :catch_3
    move-exception v1

    .line 1022
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1023
    goto/16 :goto_2

    .line 1029
    :catch_4
    move-exception v1

    .line 1031
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1032
    goto/16 :goto_2

    .line 1020
    :catch_5
    move-exception v1

    .line 1022
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1023
    goto/16 :goto_2

    .line 1029
    :catch_6
    move-exception v1

    .line 1031
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1032
    goto/16 :goto_2

    .line 1017
    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_c

    .line 1019
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1026
    :cond_c
    if-eqz v4, :cond_d

    .line 1028
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1032
    :cond_d
    throw v1

    .line 1020
    :catch_7
    move-exception v1

    .line 1022
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1023
    goto/16 :goto_2

    .line 1029
    :catch_8
    move-exception v1

    .line 1031
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1032
    goto/16 :goto_2

    .line 1017
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v5

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v12, v2

    move-object v2, v4

    move-object v4, v12

    goto :goto_6

    .line 1012
    :catch_9
    move-exception v1

    move-object v2, v4

    goto/16 :goto_4

    :catch_a
    move-exception v1

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto/16 :goto_4

    :cond_e
    move-object v5, v4

    goto :goto_5
.end method

.method private copyPartToDrmProvider(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 863
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 865
    const/4 v2, 0x0

    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 868
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_3

    .line 869
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 872
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 873
    if-nez v4, :cond_0

    .line 874
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    .line 876
    :cond_0
    if-nez v4, :cond_7

    .line 877
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    move-object v5, v4

    .line 882
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 884
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 885
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 889
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v1, v4}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 890
    if-nez v1, :cond_3

    .line 891
    const-string v1, "ConversationBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to add file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to DrmProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 900
    if-eqz v2, :cond_2

    .line 902
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move v1, v3

    .line 910
    :goto_1
    return v1

    .line 903
    :catch_0
    move-exception v1

    .line 905
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 906
    goto :goto_1

    .line 900
    :cond_3
    if-eqz v2, :cond_4

    .line 902
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 910
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 903
    :catch_1
    move-exception v1

    .line 905
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 906
    goto :goto_1

    .line 895
    :catch_2
    move-exception v1

    .line 897
    :try_start_3
    const-string v4, "ConversationBase"

    const-string v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 900
    if-eqz v2, :cond_5

    .line 902
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    move v1, v3

    .line 906
    goto :goto_1

    .line 903
    :catch_3
    move-exception v1

    .line 905
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 906
    goto :goto_1

    .line 900
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_6

    .line 902
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 906
    :cond_6
    throw v1

    .line 903
    :catch_4
    move-exception v1

    .line 905
    const-string v2, "ConversationBase"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 906
    goto :goto_1

    :cond_7
    move-object v5, v4

    goto/16 :goto_0
.end method

.method private copyToClipboard(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 828
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/android/mms/ui/ConversationBase;->appendWithSeparator(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    goto :goto_0

    .line 831
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/android/mms/ui/ConversationBase;->appendWithSeparator(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 833
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v3

    .line 834
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 835
    invoke-virtual {v3, v0}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v4

    .line 836
    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduPage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Lcom/android/mms/ui/ConversationBase;->appendWithSeparator(Ljava/lang/StringBuilder;Ljava/lang/String;C)V

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 840
    :cond_2
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 842
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 843
    return-void
.end method

.method private copyToDrmProvider(J)Z
    .locals 7
    .parameter "msgId"

    .prologue
    .line 739
    const/4 v4, 0x1

    .line 740
    .local v4, result:Z
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 742
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 743
    const/4 v6, 0x0

    .line 757
    :goto_0
    return v6

    .line 746
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 747
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 748
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 749
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 751
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 754
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationBase;->copyPartToDrmProvider(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 747
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_2
    move v6, v4

    .line 757
    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 1049
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1054
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->updateSendButtonState()V

    .line 1058
    return-void

    .line 1052
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 1083
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1086
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1089
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->drawTopPanel()V

    .line 1095
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->showSubjectEditor(Z)V

    .line 1100
    :cond_0
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1068
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v2

    .line 1069
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1072
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1075
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1078
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    return-void

    .line 1072
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 2
    .parameter "msgId"

    .prologue
    .line 514
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    const v1, 0x7f0a00f5

    .line 518
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrmMimeSavedStringRsrc(JZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    if-eqz p3, :cond_0

    const v0, 0x7f0a00f6

    .line 731
    :goto_0
    return v0

    .line 729
    :cond_0
    const v0, 0x7f0a00f7

    goto :goto_0

    .line 731
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmMimeType(J)Ljava/lang/String;
    .locals 7
    .parameter "msgId"

    .prologue
    const/4 v5, 0x0

    .line 562
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 564
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-object v5

    .line 568
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 569
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 570
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 571
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 573
    .local v4, type:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 574
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationBase;->mimeTypeOfDrmPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 569
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getFileNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fullpath"
    .parameter "fallback"

    .prologue
    .line 939
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 940
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 941
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 942
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 946
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, p1

    goto :goto_0
.end method

.method private getFirstMsgListItemBodyTop(Landroid/database/Cursor;)I
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1604
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/PesudoListView;->getWidth()I

    move-result v4

    .line 1606
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 1648
    :cond_0
    :goto_0
    return v2

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1611
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1612
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    move v2, v1

    move v1, v0

    .line 1614
    :goto_1
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1615
    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    .line 1616
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-interface {v5, v1, v0, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1618
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, v3}, Landroid/view/View;->measure(II)V

    .line 1622
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1623
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    .line 1614
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1627
    :cond_2
    instance-of v6, v0, Lcom/android/mms/ui/MessageListItem;

    if-eqz v6, :cond_4

    .line 1628
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 1630
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, p1, v3}, Lcom/android/mms/ui/MessageListAdapter;->needShowMxType(Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1631
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getListItemTypeView()Landroid/view/View;

    move-result-object v1

    .line 1632
    if-eqz v1, :cond_3

    .line 1633
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    .line 1636
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, p1, v3}, Lcom/android/mms/ui/MessageListAdapter;->needShowTimeStamp(Landroid/database/Cursor;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1637
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getListItemDateView()Landroid/view/View;

    move-result-object v0

    .line 1638
    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 1644
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 289
    if-eqz p1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "date_full"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 292
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 294
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 298
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-wide v0

    .line 298
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 298
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 2
    .parameter "type"
    .parameter "msgId"
    .parameter "createFromCursorIfNotInCache"

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1040
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1042
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1043
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    :cond_0
    return-object v1
.end method

.method private haveSomethingToCopyToDrmProvider(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 586
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private haveSomethingToCopyToSDCard(J)Z
    .locals 9
    .parameter "msgId"

    .prologue
    .line 595
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 597
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_1

    .line 598
    const/4 v4, 0x0

    .line 617
    :cond_0
    :goto_0
    return v4

    .line 601
    :cond_1
    const/4 v4, 0x0

    .line 602
    .local v4, result:Z
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 603
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 604
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 605
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 607
    .local v5, type:Ljava/lang/String;
    const-string v6, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 608
    const-string v6, "ConversationBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMA] haveSomethingToCopyToSDCard: part["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] contentType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "application/ogg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 613
    :cond_3
    const/4 v4, 0x1

    .line 614
    goto :goto_0

    .line 603
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initLayoutStyle()V
    .locals 6

    .prologue
    const v5, 0x7f100083

    .line 465
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 466
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    .line 467
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getConversationGroupByTime(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 468
    .local v1, groupByTime:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getDeliverReportMode(Landroid/content/SharedPreferences;Z)I

    move-result v0

    .line 469
    .local v0, deliverReportMode:I
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/mms/ui/MessageListAdapter;->initLayoutStyle(Ljava/lang/String;ZI)V

    .line 470
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v4, 0x7f0200d5

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView;->setSelector(I)V

    .line 474
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private isAudioMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 510
    if-eqz p1, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 762
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 767
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 769
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 770
    const-string v4, "locked"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$6;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/ui/ConversationBase$6;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v2, "lockMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 778
    return-void

    .line 765
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 770
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private mimeTypeOfDrmPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 10
    .parameter "part"

    .prologue
    .line 522
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 523
    .local v6, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 525
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 526
    instance-of v7, v4, Ljava/io/FileInputStream;

    if-eqz v7, :cond_1

    .line 527
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 529
    .local v3, fin:Ljava/io/FileInputStream;
    new-instance v1, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v1, v3, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 531
    .local v1, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    .line 540
    .local v5, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 542
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    .end local v1           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 543
    .restart local v1       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v5       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 545
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 540
    .end local v1           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 542
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 549
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 543
    :catch_1
    move-exception v2

    .line 545
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 534
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 536
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while opening or reading stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 540
    if-eqz v4, :cond_2

    .line 542
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 543
    :catch_3
    move-exception v2

    .line 545
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 537
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 538
    .local v2, e:Landroid/drm/mobile1/DrmException;
    :try_start_5
    const-string v7, "ConversationBase"

    const-string v8, "DrmException caught "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 540
    if-eqz v4, :cond_2

    .line 542
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 543
    :catch_5
    move-exception v2

    .line 545
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 540
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 542
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 546
    :cond_3
    :goto_2
    throw v7

    .line 543
    :catch_6
    move-exception v2

    .line 545
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "ConversationBase"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private requestChangeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1333
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    if-eqz v0, :cond_1

    .line 1334
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1338
    :goto_0
    return-void

    .line 1336
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private setTimeToSend(J)V
    .locals 7
    .parameter "timeToSend"

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    move-object v0, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->setMessageSendTime(Landroid/content/Context;JJJ)V

    .line 2104
    invoke-static {p0}, Lcom/android/mms/transaction/TimedMessageReceiver;->scheduleNextTimedMsg(Landroid/content/Context;)V

    .line 2105
    return-void
.end method

.method private showMessageAnimation()V
    .locals 21

    .prologue
    .line 1438
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    if-eqz v3, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1441
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/PesudoListView;->getWidth()I

    move-result v11

    .line 1444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/PesudoListView;->getHeight()I

    move-result v3

    .line 1446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/high16 v5, 0x4000

    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/android/mms/ui/MessageListView;->measure(II)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/PesudoListView;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/PesudoListView;->getTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/PesudoListView;->getRight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/PesudoListView;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/mms/ui/MessageListView;->layout(IIII)V

    .line 1452
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 1453
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/PesudoListView;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 1454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/PesudoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1455
    instance-of v5, v3, Lcom/android/mms/ui/MessageListItem;

    if-eqz v5, :cond_1

    .line 1456
    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    .line 1457
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 1458
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    neg-long v5, v5

    .line 1459
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 1458
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    goto :goto_2

    .line 1463
    :cond_3
    const/4 v5, 0x0

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v3

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1466
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    .line 1467
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 1468
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 1469
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1470
    const/4 v6, 0x1

    move v7, v3

    move v8, v4

    .line 1471
    :goto_3
    invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v7, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/PesudoListView;->getHeight()I

    move-result v3

    if-ge v8, v3, :cond_8

    .line 1472
    invoke-interface {v13, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    .line 1473
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-interface {v13, v7, v3, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v3

    if-ge v7, v3, :cond_4

    .line 1475
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1471
    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v8, v3

    goto :goto_3

    .line 1478
    :cond_4
    const/high16 v3, 0x4000

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9}, Landroid/view/View;->measure(II)V

    .line 1482
    instance-of v3, v4, Lcom/android/mms/ui/MessageListItem;

    if-eqz v3, :cond_16

    move-object v3, v4

    .line 1483
    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    .line 1484
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 1485
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    neg-long v9, v9

    .line 1486
    :goto_5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1487
    if-nez v3, :cond_7

    .line 1488
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1491
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v9, v8, v10, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v9, v4, v3}, Lcom/android/mms/ui/PesudoListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    if-eqz v6, :cond_6

    .line 1494
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move v3, v6

    .line 1514
    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    move v6, v3

    move v3, v4

    goto :goto_4

    .line 1485
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    goto :goto_5

    .line 1496
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1500
    :cond_7
    const/4 v6, 0x0

    .line 1501
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/PesudoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1504
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1505
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    .line 1506
    move/from16 v0, v18

    if-eq v8, v0, :cond_15

    .line 1507
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sub-int v18, v8, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v3, v5, v0, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1508
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1509
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1511
    :goto_8
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    move v3, v6

    goto :goto_7

    .line 1517
    :cond_8
    if-eqz v6, :cond_9

    .line 1518
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    if-lez v3, :cond_a

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1519
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1520
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1529
    :cond_9
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    .line 1531
    const/4 v3, 0x0

    move v4, v3

    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_d

    .line 1532
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1533
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x3c6a

    const/4 v9, 0x0

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1534
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v6, :cond_b

    const-wide/16 v6, 0x12c

    :goto_b
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1535
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v8, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1536
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v6, :cond_c

    const-wide/16 v6, 0x12c

    :goto_c
    invoke-virtual {v8, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1537
    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1538
    invoke-virtual {v5, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1539
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1531
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_a

    .line 1523
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1524
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1525
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 1534
    :cond_b
    const-wide/16 v6, 0x0

    goto :goto_b

    .line 1536
    :cond_c
    const-wide/16 v6, 0x0

    goto :goto_c

    .line 1543
    :cond_d
    const/4 v3, 0x0

    move v4, v3

    :goto_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_10

    .line 1544
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1545
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x4396

    const/4 v9, 0x0

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1546
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v6, :cond_e

    const-wide/16 v6, 0x12c

    :goto_e
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1547
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v8, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1548
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v6, :cond_f

    const-wide/16 v6, 0x12c

    :goto_f
    invoke-virtual {v8, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1549
    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1550
    invoke-virtual {v5, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1551
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1543
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_d

    .line 1546
    :cond_e
    const-wide/16 v6, 0x0

    goto :goto_e

    .line 1548
    :cond_f
    const-wide/16 v6, 0x0

    goto :goto_f

    .line 1555
    :cond_10
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v3, v6

    if-ge v4, v3, :cond_12

    .line 1556
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v5, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1557
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-eqz v3, :cond_11

    const-wide/16 v6, 0x12c

    :goto_11
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1558
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1555
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_10

    .line 1557
    :cond_11
    const-wide/16 v6, 0x0

    goto :goto_11

    .line 1561
    :cond_12
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v5, v3}, Lcom/android/mms/ui/PesudoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1563
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1564
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1565
    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_12

    .line 1568
    :cond_13
    if-eqz v5, :cond_14

    .line 1569
    new-instance v3, Lcom/android/mms/ui/ConversationBase$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ConversationBase$10;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 1588
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/PesudoListView;->setVisibility(I)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 1590
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    goto/16 :goto_0

    :cond_15
    move-object v3, v5

    goto/16 :goto_8

    :cond_16
    move v3, v6

    goto/16 :goto_7
.end method

.method private snapshotMsgList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1652
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/PesudoListView;->getWidth()I

    move-result v2

    .line 1653
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/PesudoListView;->removeAllViews()V

    .line 1654
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/PesudoListView;->clearDisappearingChildren()V

    .line 1656
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1661
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v8}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1662
    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1664
    :goto_1
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/PesudoListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_2

    .line 1665
    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    .line 1666
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-interface {v3, v0, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1667
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1668
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 1664
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1672
    :cond_1
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1675
    invoke-virtual {v5, v8, v1, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1677
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v6, v4, v5}, Lcom/android/mms/ui/PesudoListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1678
    const/high16 v5, 0x4000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v8}, Landroid/view/View;->measure(II)V

    .line 1681
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    .line 1683
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/PesudoListView;->setVisibility(I)V

    .line 1684
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 496
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 507
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ConversationBase$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ConversationBase$4;-><init>(Lcom/android/mms/ui/ConversationBase;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected buildMsgListQueryLimit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1284
    const-string v0, ""

    .line 1285
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mIsShowAllMsgList:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/ConversationBase;->mHoldMsgListNum:I

    if-lez v1, :cond_0

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/mms/ui/ConversationBase;->mHoldMsgListNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    :cond_0
    return-object v0
.end method

.method protected enableNotShowAllMsgList()V
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 1278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mIsShowAllMsgList:Z

    .line 1279
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    add-int/lit16 v0, v0, -0xc8

    iput v0, p0, Lcom/android/mms/ui/ConversationBase;->mHoldMsgListNum:I

    .line 1281
    :cond_0
    return-void
.end method

.method protected getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method protected initMessageList()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 434
    .local v10, highlightString:Ljava/lang/String;
    if-nez v10, :cond_1

    move-object v5, v2

    .line 439
    .local v5, highlight:Ljava/util/regex/Pattern;
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isReadOnly()Z

    move-result v7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;ZZJ)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->addHeaderView(Landroid/view/View;)V

    .line 446
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    const v1, 0x7f0a01d3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mBtnPaddingView:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$3;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationBase;->mIsShowAllMsgList:Z

    .line 458
    iput v11, p0, Lcom/android/mms/ui/ConversationBase;->mHoldMsgListNum:I

    .line 459
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0

    .line 434
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto/16 :goto_1
.end method

.method protected initResourceRefs()V
    .locals 3

    .prologue
    .line 331
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 332
    const v0, 0x7f100081

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 333
    const v0, 0x7f100082

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/PesudoListView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListAnimator:Lcom/android/mms/ui/PesudoListView;

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationBase$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$1;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setEditModeListener(Lcom/android/mms/util/EditableListView$EditModeListener;)V

    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$2;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 359
    return-void
.end method

.method protected initialize(J)V
    .locals 8
    .parameter "threadId"

    .prologue
    const/4 v7, 0x0

    .line 230
    invoke-static {p0, p1, p2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    .line 232
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/android/mms/ui/ConversationBase;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationBase;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/ConversationBase;->undeliveredMessageDialog(J)V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 240
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "select_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 241
    const-string v4, "intent_extra_data_key"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "intent_extra_data_key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 245
    :cond_1
    const-string v4, "new_message_count"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    .line 246
    const-string v4, "was_soft_keyboard_on"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    .line 248
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->initMessageList()V

    .line 249
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->initialize()V

    .line 250
    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 251
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->onContactsUpdated(Lcom/android/mms/data/ContactList;)V

    .line 252
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    .line 253
    .local v2, recipient:Lcom/android/mms/data/Contact;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationBase;->onContactAdded(Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 255
    .end local v2           #recipient:Lcom/android/mms/data/Contact;
    :cond_2
    return-void
.end method

.method protected isGroup()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public isPreparedForSending()Z
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReadOnly()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public loadMessageContent()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationBase$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$1;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 325
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->updateSendFailedNotification()V

    .line 326
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    .line 327
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v4, -0x1

    .line 2110
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 2111
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationBase;->mWaitingForSubActivity:Z

    .line 2112
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 2113
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 2114
    sget-object v2, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2115
    .local v0, time:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 2116
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->setTimeToSend(J)V

    .line 2122
    .end local v0           #time:J
    :cond_0
    :goto_0
    return-void

    .line 2120
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 212
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onBackPressed()V

    .line 213
    return-void
.end method

.method protected onContactsUpdated(Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter "contactList"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onContactsUpdated(Lcom/android/mms/data/ContactList;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationBase;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 177
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 154
    new-instance v2, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "thread_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 156
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->initialize(J)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    iput-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 206
    :cond_1
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onDestroy()V

    .line 207
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 1248
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onMessageSent()V

    .line 1251
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    .line 1254
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 221
    const/high16 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationBase;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000e0

    if-ne v0, v1, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->enterEditMode()V

    .line 1268
    const/4 v0, 0x1

    .line 1270
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1258
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1259
    const v0, 0x7f1000e0

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1260
    const v0, 0x7f1000e1

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 1261
    return v1
.end method

.method protected onResetMessageAnimationEnd()V
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-nez v0, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    .line 1692
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V

    .line 1694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method protected onResetMessageAnimationStart()V
    .locals 1

    .prologue
    .line 1595
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mAllowAnimation:Z

    if-nez v0, :cond_0

    .line 1600
    :goto_0
    return-void

    .line 1598
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInAnimation:Z

    .line 1599
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->snapshotMsgList()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStart()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mIsStopped:Z

    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->initLayoutStyle()V

    .line 169
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->loadMessageContent()V

    .line 170
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 171
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStop()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mIsStopped:Z

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    iput-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->exitEditMode()V

    .line 193
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1205
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->checkPendingNotification()V

    .line 1206
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 1210
    if-eqz p1, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->checkPendingNotification()V

    .line 1213
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onWindowFocusChanged(Z)V

    .line 1214
    return-void
.end method

.method public sendMessage()V
    .locals 1

    .prologue
    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->checkAndSendMessage(Z)V

    .line 1239
    return-void
.end method

.method protected setSendTimeForSpecifiedMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter

    .prologue
    .line 2125
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2138
    :goto_0
    return-void

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2130
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    .line 2132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2133
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2134
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2135
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    const v2, 0x7f0a01a4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2137
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected abstract startMsgListQuery()V
.end method

.method undeliveredMessageDialog(J)V
    .locals 8
    .parameter "date"

    .prologue
    const/4 v7, 0x1

    .line 269
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040040

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 272
    .local v1, dialog:Landroid/widget/LinearLayout;
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    .line 273
    const v3, 0x7f0a0022

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, body:Ljava/lang/String;
    :goto_0
    const v3, 0x7f1000bd

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 283
    .local v2, undeliveredDialog:Landroid/widget/Toast;
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 285
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 286
    return-void

    .line 277
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #undeliveredDialog:Landroid/widget/Toast;
    :cond_0
    const v3, 0x7f0a0023

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #body:Ljava/lang/String;
    goto :goto_0
.end method

.method protected abstract updateMessageCount(I)V
.end method

.method protected abstract updateTitle(Lcom/android/mms/data/ContactList;)V
.end method

.method protected willDiscardDraft()Z
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x0

    return v0
.end method
