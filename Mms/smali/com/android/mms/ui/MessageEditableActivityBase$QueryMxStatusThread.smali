.class Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusThread;
.super Ljava/lang/Thread;
.source "MessageEditableActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryMxStatusThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 1
    .parameter

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusThread;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    .line 1767
    const-string v0, "QueryMxStatusThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1768
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1772
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1773
    const/4 v0, 0x0

    .line 1775
    .local v0, address:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusThread;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #getter for: Lcom/android/mms/ui/MessageEditableActivityBase;->mQueryMxStatusQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$1300(Lcom/android/mms/ui/MessageEditableActivityBase;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1781
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusThread;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-static {v3, v0}, Lcom/xiaomi/mms/data/MxIdCache;->getOrQuery(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    move-result-object v1

    .line 1783
    .local v1, cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1785
    const-string v3, "MessageEditableActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get mid from cache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->getMId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditableActivityBase$QueryMxStatusThread;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->removeFromOffline(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$1400(Lcom/android/mms/ui/MessageEditableActivityBase;Ljava/lang/String;)V

    goto :goto_0

    .line 1776
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cacheItem:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    :catch_0
    move-exception v2

    .line 1791
    :cond_1
    return-void
.end method
