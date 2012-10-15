.class Lcom/android/mms/ui/SearchFragment$SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field private mBodyPos:I

.field private mConversationForMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private mConversations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgCursor:Landroid/database/Cursor;

.field private mQueryString:Ljava/lang/String;

.field private mRowIdPos:I

.field private mThreadIdPos:I

.field final synthetic this$0:Lcom/android/mms/ui/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/SearchFragment$SearchAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    iput p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mRowIdPos:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversations:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversationForMessages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/mms/ui/SearchFragment$SearchAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    iput p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mThreadIdPos:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/mms/ui/SearchFragment$SearchAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 237
    iput p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mBodyPos:I

    return p1
.end method

.method private getContactsForConversation(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v2, names:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 412
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 413
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 417
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public closeCursor()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 362
    :cond_0
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 8
    .parameter "position"

    .prologue
    .line 334
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    if-nez v6, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 355
    :goto_0
    return-object v1

    .line 341
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 342
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 344
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mThreadIdPos:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 345
    .local v4, threadId:J
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mRowIdPos:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 347
    .local v2, rowid:J
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 348
    .local v1, onClickIntent:Landroid/content/Intent;
    const-string v6, "highlight"

    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v6, "select_id"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 352
    .end local v1           #onClickIntent:Landroid/content/Intent;
    .end local v2           #rowid:J
    .end local v4           #threadId:J
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sub-int v0, p1, v6

    .line 353
    .local v0, index:I
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversations:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 354
    .restart local v4       #threadId:J
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 355
    .restart local v1       #onClickIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 374
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 379
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversations:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 380
    :cond_0
    const/4 v6, 0x0

    .line 406
    :goto_0
    return-object v6

    .line 382
    :cond_1
    const/4 v6, 0x0

    .line 383
    .local v6, view:Landroid/view/View;
    instance-of v7, p2, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    .line 384
    move-object v6, p2

    .line 390
    :goto_1
    const v7, 0x7f1000b6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;

    move-object v3, v7

    check-cast v3, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;

    .line 391
    .local v3, name:Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    const v7, 0x7f1000c0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;

    move-object v5, v7

    check-cast v5, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;

    .line 393
    .local v5, snippet:Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge p1, v7, :cond_3

    .line 394
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 395
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversationForMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 396
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->getContactsForConversation(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, names:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mBodyPos:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    .end local v3           #name:Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    .end local v4           #names:Ljava/lang/String;
    .end local v5           #snippet:Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 387
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040045

    const/4 v8, 0x0

    invoke-virtual {v2, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 400
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #name:Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    .restart local v5       #snippet:Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    sub-int v1, p1, v7

    .line 401
    .local v1, index:I
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversations:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 402
    .restart local v0       #c:Lcom/android/mms/data/Conversation;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->getContactsForConversation(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .restart local v4       #names:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasRunningTask()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;-><init>(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 327
    return-void
.end method

.method public query(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->query()V

    .line 251
    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
