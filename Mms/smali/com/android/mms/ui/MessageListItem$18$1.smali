.class Lcom/android/mms/ui/MessageListItem$18$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$18;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$18;)V
    .locals 0
    .parameter

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1271
    if-nez p2, :cond_1

    .line 1272
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1273
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$18;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1274
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1280
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1276
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1277
    .restart local v0       #msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$18$1;->this$1:Lcom/android/mms/ui/MessageListItem$18;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$18;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1278
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
