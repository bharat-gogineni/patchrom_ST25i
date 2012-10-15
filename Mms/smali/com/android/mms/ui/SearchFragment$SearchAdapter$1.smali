.class Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;
.super Landroid/os/AsyncTask;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchFragment$SearchAdapter;->query()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field private mQueryInTask:Ljava/lang/String;

.field private mResultConversationForMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private mResultConversations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private mResultCursor:Landroid/database/Cursor;

.field final synthetic this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$300(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mQueryInTask:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mQueryInTask:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v3

    .line 273
    :cond_1
    sget-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    iget-object v4, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mQueryInTask:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 277
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$400(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    const-string v1, "thread_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 288
    .local v10, threadIdPos:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultConversationForMessages:Ljava/util/ArrayList;

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 292
    .local v8, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v8, v9, v1}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 293
    .local v7, conv:Lcom/android/mms/data/Conversation;
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultConversationForMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v8           #threadId:J
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mQueryInTask:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->searchNameInCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultConversations:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$400(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mLatestTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$402(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultCursor:Landroid/database/Cursor;

    #setter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$502(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 310
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultConversations:Ljava/util/ArrayList;

    #setter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversations:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$602(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->mResultConversationForMessages:Ljava/util/ArrayList;

    #setter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mConversationForMessages:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$702(Lcom/android/mms/ui/SearchFragment$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$500(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$500(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mThreadIdPos:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$802(Lcom/android/mms/ui/SearchFragment$SearchAdapter;I)I

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$500(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mBodyPos:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$902(Lcom/android/mms/ui/SearchFragment$SearchAdapter;I)I

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mMsgCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$500(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mRowIdPos:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$1002(Lcom/android/mms/ui/SearchFragment$SearchAdapter;I)I

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$1100(Lcom/android/mms/ui/SearchFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    iget-object v3, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    #getter for: Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->access$300(Lcom/android/mms/ui/SearchFragment$SearchAdapter;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter$1;->this$1:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
