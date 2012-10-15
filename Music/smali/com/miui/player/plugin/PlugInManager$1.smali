.class Lcom/miui/player/plugin/PlugInManager$1;
.super Ljava/lang/Thread;
.source "PlugInManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/plugin/PlugInManager;->tryToUpdatePlugIn(Landroid/content/Context;Lcom/miui/player/plugin/PlugInItem;Ljava/lang/String;I)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/plugin/PlugInManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/miui/player/plugin/PlugInItem;

.field final synthetic val$localName:Ljava/lang/String;

.field final synthetic val$localVersion:I


# direct methods
.method constructor <init>(Lcom/miui/player/plugin/PlugInManager;Lcom/miui/player/plugin/PlugInItem;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    iput-object p2, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$item:Lcom/miui/player/plugin/PlugInItem;

    iput-object p3, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$localName:Ljava/lang/String;

    iput p4, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$localVersion:I

    iput-object p5, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 222
    :try_start_0
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$item:Lcom/miui/player/plugin/PlugInItem;

    invoke-static {v6}, Lcom/miui/player/plugin/PlugInManager;->requestConfig(Lcom/miui/player/plugin/PlugInItem;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 223
    .local v1, remoteConfig:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 249
    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    monitor-enter v7

    .line 250
    :try_start_1
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/miui/player/plugin/PlugInManager;->mUpdateThreadId:J

    .line 251
    monitor-exit v7

    .line 253
    .end local v1           #remoteConfig:Ljava/lang/String;
    :goto_0
    return-void

    .line 251
    .restart local v1       #remoteConfig:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 227
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$localName:Ljava/lang/String;

    iget v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$localVersion:I

    invoke-static {v6, v7, v1}, Lcom/miui/player/plugin/PlugInManager;->checkUpdate(Ljava/lang/String;ILjava/lang/String;)Lcom/miui/player/plugin/PlugInManager$CheckedStatus;

    move-result-object v0

    .line 228
    .local v0, cs:Lcom/miui/player/plugin/PlugInManager$CheckedStatus;
    iget v5, v0, Lcom/miui/player/plugin/PlugInManager$CheckedStatus;->mStatus:I

    .line 229
    .local v5, status:I
    iget-object v4, v0, Lcom/miui/player/plugin/PlugInManager$CheckedStatus;->mPlugInSpecific:Ljava/lang/String;

    .line 230
    .local v4, specific:Ljava/lang/String;
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-nez v4, :cond_2

    .line 232
    :cond_1
    sget-object v6, Lcom/miui/player/plugin/PlugInManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there are some problems with staus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x36ee80

    add-long v2, v6, v8

    .line 234
    .local v2, requestTime:J
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$item:Lcom/miui/player/plugin/PlugInItem;

    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v3}, Lcom/miui/player/plugin/PlugInItem;->updateRequestTimePref(Landroid/content/Context;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 249
    .end local v2           #requestTime:J
    :goto_1
    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    monitor-enter v7

    .line 250
    :try_start_3
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/miui/player/plugin/PlugInManager;->mUpdateThreadId:J

    .line 251
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 235
    :cond_2
    if-nez v5, :cond_3

    .line 236
    :try_start_4
    sget-object v6, Lcom/miui/player/plugin/PlugInManager;->TAG:Ljava/lang/String;

    const-string v7, "already newest"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$item:Lcom/miui/player/plugin/PlugInItem;

    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/miui/player/plugin/PlugInItem;->updateRequestTimePref(Landroid/content/Context;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 244
    .end local v0           #cs:Lcom/miui/player/plugin/PlugInManager$CheckedStatus;
    .end local v1           #remoteConfig:Ljava/lang/String;
    .end local v4           #specific:Ljava/lang/String;
    .end local v5           #status:I
    :catch_0
    move-exception v6

    .line 249
    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    monitor-enter v7

    .line 250
    :try_start_5
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/miui/player/plugin/PlugInManager;->mUpdateThreadId:J

    .line 251
    monitor-exit v7

    goto :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 238
    .restart local v0       #cs:Lcom/miui/player/plugin/PlugInManager$CheckedStatus;
    .restart local v1       #remoteConfig:Ljava/lang/String;
    .restart local v4       #specific:Ljava/lang/String;
    .restart local v5       #status:I
    :cond_3
    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 239
    :cond_4
    :try_start_6
    sget-object v6, Lcom/miui/player/plugin/PlugInManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start to download plug-in with status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->val$item:Lcom/miui/player/plugin/PlugInItem;

    iget-object v8, v0, Lcom/miui/player/plugin/PlugInManager$CheckedStatus;->mPlugInSpecific:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/miui/player/plugin/PlugInManager;->downloadPlugIn(Landroid/content/Context;Lcom/miui/player/plugin/PlugInItem;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 245
    .end local v0           #cs:Lcom/miui/player/plugin/PlugInManager$CheckedStatus;
    .end local v1           #remoteConfig:Ljava/lang/String;
    .end local v4           #specific:Ljava/lang/String;
    .end local v5           #status:I
    :catch_1
    move-exception v6

    .line 249
    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    monitor-enter v7

    .line 250
    :try_start_7
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/miui/player/plugin/PlugInManager;->mUpdateThreadId:J

    .line 251
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v6

    .line 242
    .restart local v0       #cs:Lcom/miui/player/plugin/PlugInManager$CheckedStatus;
    .restart local v1       #remoteConfig:Ljava/lang/String;
    .restart local v4       #specific:Ljava/lang/String;
    .restart local v5       #status:I
    :cond_5
    :try_start_8
    sget-object v6, Lcom/miui/player/plugin/PlugInManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad check status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/miui/player/plugin/PlugInManager$CheckedStatus;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 246
    .end local v0           #cs:Lcom/miui/player/plugin/PlugInManager$CheckedStatus;
    .end local v1           #remoteConfig:Ljava/lang/String;
    .end local v4           #specific:Ljava/lang/String;
    .end local v5           #status:I
    :catch_2
    move-exception v6

    .line 249
    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    monitor-enter v7

    .line 250
    :try_start_9
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/miui/player/plugin/PlugInManager;->mUpdateThreadId:J

    .line 251
    monitor-exit v7

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v6

    .line 247
    :catch_3
    move-exception v6

    .line 249
    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    monitor-enter v7

    .line 250
    :try_start_a
    iget-object v6, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/miui/player/plugin/PlugInManager;->mUpdateThreadId:J

    .line 251
    monitor-exit v7

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v6

    .line 249
    :catchall_6
    move-exception v6

    iget-object v7, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    monitor-enter v7

    .line 250
    :try_start_b
    iget-object v8, p0, Lcom/miui/player/plugin/PlugInManager$1;->this$0:Lcom/miui/player/plugin/PlugInManager;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/miui/player/plugin/PlugInManager;->mUpdateThreadId:J

    .line 251
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v6

    :catchall_7
    move-exception v6

    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v6
.end method
