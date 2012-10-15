.class public Lcom/miui/gallery/cloud/RetryRequest;
.super Ljava/lang/Object;
.source "RetryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/RetryRequest$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method public static doUpDownDeleteItems(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I
    .locals 15
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .parameter
    .parameter "upDownloadCloud"
    .parameter "checkType"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/apache/http/client/HttpClient;",
            "Landroid/accounts/Account;",
            "Lmiui/net/ExtendedAuthToken;",
            "Lcom/miui/gallery/cloud/SyncStateManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItem;",
            ">;",
            "Lcom/miui/gallery/cloud/SyncCloudBase;",
            "IZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    .local p5, requestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v8, requestItemsAGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 95
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_0

    .line 93
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const-string v1, "RetryRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " a group items:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v14, 0x0

    .line 105
    .local v14, result:I
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/RequestItem;

    iget v1, v1, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 108
    new-instance v13, Lcom/miui/gallery/cloud/RequestItem;

    invoke-direct {v13, v8}, Lcom/miui/gallery/cloud/RequestItem;-><init>(Ljava/util/ArrayList;)V

    .line 109
    .local v13, multRequestItem:Lcom/miui/gallery/cloud/RequestItem;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v4, multRequestGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 111
    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/cloud/RetryRequest;->tryAGroupItems(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I

    move-result v14

    .line 119
    .end local v4           #multRequestGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    .end local v13           #multRequestItem:Lcom/miui/gallery/cloud/RequestItem;
    :goto_2
    if-eqz v14, :cond_2

    .line 127
    .end local v14           #result:I
    :goto_3
    return v14

    .restart local v14       #result:I
    :cond_1
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 115
    invoke-static/range {v5 .. v11}, Lcom/miui/gallery/cloud/RetryRequest;->tryAGroupItems(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I

    move-result v14

    goto :goto_2

    .line 123
    :cond_2
    const-string v1, "RetryRequest"

    const-string v2, "finish one loop for upload"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 127
    .end local v14           #result:I
    :cond_3
    const/4 v14, 0x0

    goto :goto_3
.end method

.method public static doUpDownDeleteItems(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Lcom/miui/gallery/cloud/CloudDownloadArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)V
    .locals 19
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .parameter "requestItems"
    .parameter "upDownloadCloud"
    .parameter "checkType"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v9, requestItemsAGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    const/4 v13, 0x0

    .line 30
    .local v13, curItem:Lcom/miui/gallery/cloud/RequestItem;
    const/16 v17, 0x0

    .line 31
    .local v17, noMoreItem:Z
    invoke-virtual/range {p5 .. p5}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getType()I

    move-result v14

    .line 32
    .local v14, downloadType:I
    const/16 v15, 0xa

    .line 33
    .local v15, limitGroupSize:I
    if-nez p8, :cond_0

    const/4 v2, 0x2

    if-ne v14, v2, :cond_0

    .line 34
    const/4 v15, 0x1

    .line 38
    :cond_0
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getItem(Landroid/content/Context;Z)Lcom/miui/gallery/cloud/RequestItem;

    move-result-object v13

    .line 39
    if-nez v13, :cond_3

    .line 40
    if-eqz v17, :cond_2

    .line 41
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getItem(Landroid/content/Context;Z)Lcom/miui/gallery/cloud/RequestItem;

    move-result-object v13

    .line 42
    const/16 v17, 0x0

    .line 50
    :goto_1
    if-nez v17, :cond_4

    .line 51
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v2, 0x0

    move/from16 v0, p7

    invoke-static {v0, v2}, Lcom/miui/gallery/cloud/SyncStateManager;->setUINewPush(IZ)V

    .line 53
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v15, :cond_1

    if-nez v13, :cond_0

    .line 61
    :cond_1
    const/16 v18, 0x0

    .line 63
    .local v18, result:I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    .line 66
    new-instance v16, Lcom/miui/gallery/cloud/RequestItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Lcom/miui/gallery/cloud/RequestItem;-><init>(Ljava/util/ArrayList;)V

    .line 67
    .local v16, multRequestItem:Lcom/miui/gallery/cloud/RequestItem;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v5, multRequestGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 69
    invoke-static/range {v2 .. v8}, Lcom/miui/gallery/cloud/RetryRequest;->tryAGroupItems(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I

    move-result v18

    .line 78
    .end local v5           #multRequestGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    .end local v16           #multRequestItem:Lcom/miui/gallery/cloud/RequestItem;
    :goto_2
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 79
    return-void

    .line 44
    .end local v18           #result:I
    :cond_2
    const/16 v17, 0x1

    goto :goto_1

    .line 47
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .restart local v18       #result:I
    :cond_5
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    .line 73
    invoke-static/range {v6 .. v12}, Lcom/miui/gallery/cloud/RetryRequest;->tryAGroupItems(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I

    move-result v18

    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public static tryAGroupItems(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I
    .locals 15
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .parameter
    .parameter "upDownloadCloud"
    .parameter "checkType"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lmiui/net/ExtendedAuthToken;",
            "Lcom/miui/gallery/cloud/SyncStateManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItem;",
            ">;",
            "Lcom/miui/gallery/cloud/SyncCloudBase;",
            "IZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    .local p3, requestItemsAGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    const/4 v14, 0x0

    .line 135
    .local v14, tryTimes:I
    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 136
    const-wide/16 v12, 0x0

    .line 137
    .local v12, retryAfter:J
    add-int/lit8 v14, v14, 0x1

    .line 138
    const-string v1, "RetryRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try a group items, size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", times:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    .line 143
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/cloud/RequestItem;

    .line 146
    .local v5, requestItem:Lcom/miui/gallery/cloud/RequestItem;
    invoke-virtual/range {p4 .. p6}, Lcom/miui/gallery/cloud/SyncCloudBase;->checkState(IZ)I

    move-result v8

    .line 147
    .local v8, checkStateResult:I
    packed-switch v8, :pswitch_data_0

    .line 162
    :pswitch_0
    const/4 v4, 0x0

    move-object/from16 v1, p4

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/cloud/SyncCloudBase;->execute(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;Z)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v11

    .line 165
    .local v11, result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v1, Lcom/miui/gallery/cloud/RetryRequest$1;->$SwitchMap$com$miui$gallery$cloud$CheckResult$GallerySyncResult:[I

    invoke-virtual {v11}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 141
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 154
    .end local v11           #result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloud/RequestItem;

    .line 155
    .local v7, cancelItem:Lcom/miui/gallery/cloud/RequestItem;
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/miui/gallery/cloud/RequestItem;->isDownloading:Z

    goto :goto_3

    .line 167
    .end local v7           #cancelItem:Lcom/miui/gallery/cloud/RequestItem;
    .end local v9           #i$:Ljava/util/Iterator;
    .restart local v11       #result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :pswitch_2
    iget v1, v5, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 169
    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/miui/gallery/cloud/RequestItem;->isDownloading:Z

    .line 170
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 175
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v1, p4

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/cloud/SyncCloudBase;->execute(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;Z)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v11

    .line 177
    goto :goto_2

    .line 182
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/miui/gallery/cloud/RequestItem;->isDownloading:Z

    .line 183
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    add-int/lit8 v10, v10, -0x1

    .line 185
    goto :goto_2

    .line 188
    :pswitch_4
    iget v1, v5, Lcom/miui/gallery/cloud/RequestItem;->createRetryTimes:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget v1, v5, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget v1, v5, Lcom/miui/gallery/cloud/RequestItem;->editRetryTimes:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget v1, v5, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget v1, v5, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    .line 194
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/miui/gallery/cloud/RequestItem;->isDownloading:Z

    .line 195
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 198
    :cond_4
    iget-wide v1, v5, Lcom/miui/gallery/cloud/RequestItem;->retryAfter:J

    cmp-long v1, v12, v1

    if-gez v1, :cond_1

    .line 200
    iget-wide v12, v5, Lcom/miui/gallery/cloud/RequestItem;->retryAfter:J

    goto :goto_2

    .line 206
    :pswitch_5
    const/4 v8, 0x2

    .line 216
    .end local v5           #requestItem:Lcom/miui/gallery/cloud/RequestItem;
    .end local v8           #checkStateResult:I
    .end local v10           #j:I
    .end local v11           #result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v12           #retryAfter:J
    :cond_5
    :goto_4
    return v8

    .line 211
    .restart local v10       #j:I
    .restart local v12       #retryAfter:J
    :cond_6
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-eqz v1, :cond_0

    .line 213
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xa

    sub-long v3, v12, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 216
    .end local v10           #j:I
    .end local v12           #retryAfter:J
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
