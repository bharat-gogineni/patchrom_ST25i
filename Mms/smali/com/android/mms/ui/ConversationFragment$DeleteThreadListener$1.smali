.class Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$900(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$900(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0186

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$802(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 399
    const/16 v0, 0x709

    .line 400
    .local v0, token:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$1100(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V

    .line 402
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 408
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$1100(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$1200(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZLjava/util/Collection;)V

    .line 406
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    goto :goto_0
.end method
