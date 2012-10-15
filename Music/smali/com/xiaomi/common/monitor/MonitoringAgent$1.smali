.class Lcom/xiaomi/common/monitor/MonitoringAgent$1;
.super Landroid/os/AsyncTask;
.source "MonitoringAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/common/monitor/MonitoringAgent;->tryUploadStatData(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/common/monitor/MonitoringAgent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/common/monitor/MonitoringAgent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->this$0:Lcom/xiaomi/common/monitor/MonitoringAgent;

    iput-object p2, p0, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 10
    .parameter "params"

    .prologue
    .line 146
    const-string v6, "stat-upload-process-lock"

    monitor-enter v6

    .line 148
    const/4 v5, 0x0

    :try_start_0
    aget-object v4, p1, v5

    check-cast v4, Ljava/util/List;

    .line 149
    .local v4, tosend1:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;>;"
    const/4 v5, 0x1

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, releaseChannel1:Ljava/lang/String;
    sget-object v5, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    iget-object v7, p0, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->val$context:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/xiaomi/common/monitor/Misc;->getMyVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/xiaomi/common/monitor/MonitoringAgent;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v4}, Lcom/xiaomi/common/monitor/MonitoringAgent;->prepareHttpPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v5, p0, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/common/monitor/MonitoringAgent;->getStatUploadUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Lcom/xiaomi/common/util/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, responseXml:Ljava/lang/String;
    sget-object v5, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    invoke-virtual {v5, v3}, Lcom/xiaomi/common/monitor/MonitoringAgent;->isStatPostSuccessful(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    sget-object v7, Lcom/xiaomi/common/monitor/MonitoringAgent;->agent:Lcom/xiaomi/common/monitor/MonitoringAgent;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;

    invoke-virtual {v5}, Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;->getRowId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/xiaomi/common/monitor/MonitoringAgent;->afterSend(J)V

    .line 158
    iget-object v5, p0, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->val$context:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/xiaomi/common/monitor/UserInfo;->markPhoneInfoSent(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1           #postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #releaseChannel1:Ljava/lang/String;
    .end local v3           #responseXml:Ljava/lang/String;
    .end local v4           #tosend1:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/monitor/MonitoringData$MonitoringRecord;>;"
    :cond_0
    :goto_0
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    const-string v5, "com.xiaomi.common.Monitoring"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send stat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaomi/common/monitor/MonitoringAgent$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
