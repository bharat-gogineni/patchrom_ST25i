.class public Lcom/android/mms/ui/MultipleRecipientsConversationActivity;
.super Lcom/android/mms/ui/ConversationBase;
.source "MultipleRecipientsConversationActivity.java"


# instance fields
.field private mHeader:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

.field private mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f040031

    return v0
.end method

.method protected initMessageList()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/mms/ui/ConversationBase;->initMessageList()V

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/MultipleRecipientsConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MultipleRecipientsConversationActivity$1;-><init>(Lcom/android/mms/ui/MultipleRecipientsConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method

.method protected initResourceRefs()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/mms/ui/ConversationBase;->initResourceRefs()V

    .line 45
    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->mHeader:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    .line 46
    return-void
.end method

.method protected initialize(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->initialize(J)V

    .line 30
    iput-wide p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->mThreadId:J

    .line 31
    return-void
.end method

.method protected isGroup()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method protected startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v4, 0x2537

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 84
    .local v3, conversationUri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 105
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 91
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "MultipleRecipientsCA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery MultiRecipientCA for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->cancelOperation(I)V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->GROUP_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v8

    .line 103
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method protected updateMessageCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 40
    return-void
.end method

.method protected updateTitle(Lcom/android/mms/data/ContactList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationActivity;->mHeader:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 36
    return-void
.end method
