.class Lcom/android/mms/ui/MessageListItem$18;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindResentButton(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$18;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 1253
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1254
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 1255
    .local v5, mxEnabled:Z
    const/4 v3, 0x0

    .line 1256
    .local v3, mid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$300(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 1257
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$300(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 1258
    .local v2, contact:Lcom/android/mms/data/Contact;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getMxPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/mms/data/MxIdCache;->getOrQuery(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    move-result-object v1

    .line 1260
    .local v1, cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->isOnline()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1261
    invoke-virtual {v1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->getMId()Ljava/lang/String;

    move-result-object v3

    .line 1264
    .end local v1           #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    .end local v2           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getMyFullMid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isPushAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1266
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a0139

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080007

    new-instance v8, Lcom/android/mms/ui/MessageListItem$18$1;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessageListItem$18$1;-><init>(Lcom/android/mms/ui/MessageListItem$18;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1288
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #mid:Ljava/lang/String;
    .end local v5           #mxEnabled:Z
    :cond_1
    :goto_0
    return-void

    .line 1283
    .restart local v3       #mid:Ljava/lang/String;
    .restart local v5       #mxEnabled:Z
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v7

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$18;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    :goto_1
    invoke-static {v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 1284
    .local v4, msg:Landroid/os/Message;
    new-instance v6, Ljava/lang/Long;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$18;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1285
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1283
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    const/4 v6, 0x3

    goto :goto_1
.end method
