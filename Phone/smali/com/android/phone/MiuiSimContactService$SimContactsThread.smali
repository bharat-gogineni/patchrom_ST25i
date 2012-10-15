.class Lcom/android/phone/MiuiSimContactService$SimContactsThread;
.super Ljava/lang/Thread;
.source "MiuiSimContactService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimContactsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSimContactService;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiSimContactService;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    .line 138
    const-string v0, "SimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 143
    new-instance v0, Lmiui/provider/BatchOperation;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    invoke-virtual {v4}, Lcom/android/phone/MiuiSimContactService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.contacts"

    invoke-direct {v0, v4, v5}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 145
    .local v0, batchOperation:Lmiui/provider/BatchOperation;
    const/4 v2, 0x0

    .line 146
    .local v2, progress:I
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$000(Lcom/android/phone/MiuiSimContactService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 147
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mCanceled:Z
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$100(Lcom/android/phone/MiuiSimContactService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 148
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/phone/MiuiSimContactService$ProgressListener;->onCancel()V

    .line 173
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 174
    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 175
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 176
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mTotalCount:I
    invoke-static {v5}, Lcom/android/phone/MiuiSimContactService;->access$500(Lcom/android/phone/MiuiSimContactService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/MiuiSimContactService;->access$000(Lcom/android/phone/MiuiSimContactService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/phone/MiuiSimContactService;->access$000(Lcom/android/phone/MiuiSimContactService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v8}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/phone/MiuiSimContactService$ProgressListener;->onProgress(IIILcom/android/phone/MiuiSimContacts$SimContactOP;)V

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mCanceled:Z
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$100(Lcom/android/phone/MiuiSimContactService;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 182
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v5}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/phone/MiuiSimContactService$ProgressListener;->onFinished(Lcom/android/phone/MiuiSimContacts$SimContactOP;)V

    .line 184
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #setter for: Lcom/android/phone/MiuiSimContactService;->mIsTaskRunning:Z
    invoke-static {v4, v10}, Lcom/android/phone/MiuiSimContactService;->access$702(Lcom/android/phone/MiuiSimContactService;Z)Z

    .line 185
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mIsBackground:Z
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$800(Lcom/android/phone/MiuiSimContactService;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v4, v5, :cond_4

    .line 186
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$1000(Lcom/android/phone/MiuiSimContactService;)Landroid/app/NotificationManager;

    move-result-object v4

    const/16 v5, 0x271a

    iget-object v6, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    const v7, 0x7f0c0328

    const v8, 0x7f02004d

    const/4 v9, 0x1

    #calls: Lcom/android/phone/MiuiSimContactService;->constructNotification(IIZZ)Landroid/app/Notification;
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/phone/MiuiSimContactService;->access$900(Lcom/android/phone/MiuiSimContactService;IIZZ)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 190
    :cond_4
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    invoke-virtual {v4}, Lcom/android/phone/MiuiSimContactService;->stopSelf()V

    .line 191
    return-void

    .line 154
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 155
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v4, v5, :cond_6

    .line 156
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    const-string v5, "import sim contacts"

    invoke-static {v4, v5}, Lmiui/util/Jlog;->usage(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #calls: Lcom/android/phone/MiuiSimContactService;->buildInsertOperations(Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V
    invoke-static {v4, v0, v3}, Lcom/android/phone/MiuiSimContactService;->access$400(Lcom/android/phone/MiuiSimContactService;Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V

    .line 158
    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_0

    .line 159
    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 160
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mTotalCount:I
    invoke-static {v5}, Lcom/android/phone/MiuiSimContactService;->access$500(Lcom/android/phone/MiuiSimContactService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/MiuiSimContactService;->access$000(Lcom/android/phone/MiuiSimContactService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v7}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v7

    invoke-interface {v4, v5, v6, v2, v7}, Lcom/android/phone/MiuiSimContactService$ProgressListener;->onProgress(IIILcom/android/phone/MiuiSimContacts$SimContactOP;)V

    goto/16 :goto_0

    .line 165
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v4, v5, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #calls: Lcom/android/phone/MiuiSimContactService;->deleteOneSimContact(Landroid/content/ContentValues;)I
    invoke-static {v4, v3}, Lcom/android/phone/MiuiSimContactService;->access$600(Lcom/android/phone/MiuiSimContactService;Landroid/content/ContentValues;)I

    .line 167
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;
    invoke-static {v4}, Lcom/android/phone/MiuiSimContactService;->access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mTotalCount:I
    invoke-static {v5}, Lcom/android/phone/MiuiSimContactService;->access$500(Lcom/android/phone/MiuiSimContactService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/MiuiSimContactService;->access$000(Lcom/android/phone/MiuiSimContactService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->this$0:Lcom/android/phone/MiuiSimContactService;

    #getter for: Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;
    invoke-static {v7}, Lcom/android/phone/MiuiSimContactService;->access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;

    move-result-object v7

    invoke-interface {v4, v5, v6, v2, v7}, Lcom/android/phone/MiuiSimContactService$ProgressListener;->onProgress(IIILcom/android/phone/MiuiSimContacts$SimContactOP;)V

    goto/16 :goto_0
.end method
