.class public Lcom/miui/gallery/cloud/SyncFromLocal;
.super Ljava/lang/Object;
.source "SyncFromLocal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncFromLocal(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;)V
    .locals 28
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 25
    .local v25, startTime:J
    const-string v4, "SyncFromLocal"

    const-string v5, "sync from local start"

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/16 v21, 0x0

    .line 28
    .local v21, cursor:Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 29
    .local v24, result:I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v22, forceUploadItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v27, uploadItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v16, deleteItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sget-object v6, Lcom/miui/gallery/cloud/CloudUtils;->PROJECTION_ALL:[Ljava/lang/String;

    const-string v7, "localFlag != 0"

    const/4 v8, 0x0

    const-string v9, "dateModified DESC "

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 37
    if-eqz v21, :cond_5

    .line 38
    :goto_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    new-instance v20, Lcom/miui/gallery/data/DBCloud;

    invoke-direct/range {v20 .. v21}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    .line 42
    .local v20, cloud:Lcom/miui/gallery/data/DBCloud;
    new-instance v23, Lcom/miui/gallery/cloud/RequestItem;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/RequestItem;-><init>(Lcom/miui/gallery/data/DBCloud;)V

    .line 43
    .local v23, requestItem:Lcom/miui/gallery/cloud/RequestItem;
    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/data/DBCloud;->getLocalFlag()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 58
    :pswitch_0
    const-string v4, "SyncFromLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown local flag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/miui/gallery/data/DBCloud;->getLocalFlag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v20           #cloud:Lcom/miui/gallery/data/DBCloud;
    .end local v23           #requestItem:Lcom/miui/gallery/cloud/RequestItem;
    :catchall_0
    move-exception v4

    if-eqz v21, :cond_0

    .line 103
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v4

    .line 45
    .restart local v20       #cloud:Lcom/miui/gallery/data/DBCloud;
    .restart local v23       #requestItem:Lcom/miui/gallery/cloud/RequestItem;
    :pswitch_1
    :try_start_1
    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :pswitch_2
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :pswitch_3
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v20           #cloud:Lcom/miui/gallery/data/DBCloud;
    .end local v23           #requestItem:Lcom/miui/gallery/cloud/RequestItem;
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 65
    const-string v4, "SyncFromLocal"

    const-string v5, "start upload force items"

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v10, Lcom/miui/gallery/cloud/UploadCloud;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v10, v0, v1, v2}, Lcom/miui/gallery/cloud/UploadCloud;-><init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V

    .line 68
    .local v10, upload:Lcom/miui/gallery/cloud/SyncCloudBase;
    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, v22

    invoke-static/range {v4 .. v12}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItems(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v24

    .line 71
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_3

    .line 102
    if-eqz v21, :cond_2

    .line 103
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 107
    .end local v10           #upload:Lcom/miui/gallery/cloud/SyncCloudBase;
    :cond_2
    :goto_1
    return-void

    .line 76
    :cond_3
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 77
    const-string v4, "SyncFromLocal"

    const-string v5, "start upload items"

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v10, Lcom/miui/gallery/cloud/UploadCloud;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v10, v0, v1, v2}, Lcom/miui/gallery/cloud/UploadCloud;-><init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V

    .line 80
    .restart local v10       #upload:Lcom/miui/gallery/cloud/SyncCloudBase;
    const/4 v11, 0x3

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, v27

    invoke-static/range {v4 .. v12}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItems(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v24

    .line 83
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_4

    .line 102
    if-eqz v21, :cond_2

    .line 103
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 88
    .end local v10           #upload:Lcom/miui/gallery/cloud/SyncCloudBase;
    :cond_4
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 89
    const-string v4, "SyncFromLocal"

    const-string v5, "start delete items"

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v17, Lcom/miui/gallery/cloud/DeleteCloud;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/cloud/DeleteCloud;-><init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V

    .line 91
    .local v17, delete:Lcom/miui/gallery/cloud/SyncCloudBase;
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-static/range {v11 .. v19}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItems(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v24

    .line 94
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_6

    .line 102
    if-eqz v21, :cond_2

    .line 103
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 99
    .end local v17           #delete:Lcom/miui/gallery/cloud/SyncCloudBase;
    :cond_5
    :try_start_4
    const-string v4, "SyncFromLocal"

    const-string v5, "there is no item in local DB to sync."

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    :cond_6
    if-eqz v21, :cond_7

    .line 103
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_7
    const-string v4, "SyncFromLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync from local finish:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v25

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
