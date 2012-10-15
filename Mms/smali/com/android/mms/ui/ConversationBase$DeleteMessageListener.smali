.class Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteLocked:Z

.field private final mDeleteUri:Landroid/net/Uri;

.field private final mIsSms:Z

.field private final mTimeStamp:J

.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationBase;Landroid/net/Uri;ZJZ)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"
    .parameter "timeStamp"
    .parameter "isSms"

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p2, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 651
    iput-boolean p3, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mDeleteLocked:Z

    .line 652
    iput-wide p4, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mTimeStamp:J

    .line 653
    iput-boolean p6, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mIsSms:Z

    .line 654
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v1, 0x25e4

    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mIsSms:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v11

    .line 660
    .local v11, threadId:J
    const-string v0, "%s=%s AND %s=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "thread_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-wide v6, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mTimeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 675
    .end local v4           #where:Ljava/lang/String;
    .end local v11           #threadId:J
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 676
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v5, v0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    move v6, v1

    move-object v7, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v5, v0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;->mDeleteLocked:Z

    if-eqz v0, :cond_2

    move-object v9, v2

    :goto_1
    move v6, v1

    move-object v7, v2

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v9, "locked=0"

    goto :goto_1
.end method
