.class Lcom/android/mms/ui/NewMessagePopupActivity$6;
.super Ljava/lang/Thread;
.source "NewMessagePopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessagePopupActivity;->deleteMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

.field final synthetic this$0:Lcom/android/mms/ui/NewMessagePopupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$6;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$6;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    iget-object v0, v0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity$6;->mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity$6;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity$6;->mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    #calls: Lcom/android/mms/ui/NewMessagePopupActivity;->markAsRead(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$600(Lcom/android/mms/ui/NewMessagePopupActivity;Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 427
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity$6;->mThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v1, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    .line 428
    .local v1, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity$6;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method
