.class public Lcom/miui/gallery/cloud/DownloadFromServer;
.super Ljava/lang/Object;
.source "DownloadFromServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static downloadFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;IZ)I
    .locals 30
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .parameter "downloadType"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    const-string v3, "DownloadFromServer"

    const-string v4, "download files start."

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 44
    .local v28, startTime:J
    const/16 v21, 0x0

    .line 45
    .local v21, cursor:Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 49
    .local v23, result:I
    :try_start_0
    const-string v24, ""

    .line 50
    .local v24, searchStr:Ljava/lang/String;
    const/4 v10, 0x0

    .line 51
    .local v10, checkType:I
    packed-switch p5, :pswitch_data_0

    .line 65
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 69
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 71
    .local v26, start:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sget-object v5, Lcom/miui/gallery/cloud/CloudUtils;->PROJECTION_ALL:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localFlag = 0 AND serverStatus = \'custom\' AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = \'\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "dateModified DESC "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 83
    if-eqz v21, :cond_9

    .line 85
    const/4 v8, 0x0

    .line 86
    .local v8, downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    const/16 v16, 0x0

    .line 87
    .local v16, cloudDownloadArrayItems:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    if-eqz p6, :cond_1

    .line 88
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v8       #downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    new-instance v20, Lcom/miui/gallery/data/DBCloud;

    invoke-direct/range {v20 .. v21}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    .line 95
    .local v20, cloud:Lcom/miui/gallery/data/DBCloud;
    if-eqz p6, :cond_2

    .line 96
    new-instance v22, Lcom/miui/gallery/cloud/RequestItem;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/RequestItem;-><init>(Lcom/miui/gallery/data/DBCloud;)V

    .line 97
    .local v22, requestItem:Lcom/miui/gallery/cloud/RequestItem;
    move/from16 v0, p5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    .line 98
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 143
    .end local v8           #downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    .end local v10           #checkType:I
    .end local v16           #cloudDownloadArrayItems:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    .end local v20           #cloud:Lcom/miui/gallery/data/DBCloud;
    .end local v22           #requestItem:Lcom/miui/gallery/cloud/RequestItem;
    .end local v24           #searchStr:Ljava/lang/String;
    .end local v26           #start:J
    :catchall_0
    move-exception v3

    if-eqz v21, :cond_0

    .line 144
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 53
    .restart local v10       #checkType:I
    .restart local v24       #searchStr:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    const-string v24, "thumbnailFile"

    .line 54
    const/16 v10, 0x8

    .line 55
    goto :goto_0

    .line 57
    :pswitch_1
    const-string v24, "microthumbfile"

    .line 58
    const/4 v10, 0x4

    .line 59
    goto :goto_0

    .line 61
    :pswitch_2
    const-string v24, "downloadFile"

    .line 62
    const/4 v10, 0x6

    .line 63
    goto/16 :goto_0

    .line 90
    .restart local v8       #downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    .restart local v16       #cloudDownloadArrayItems:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    .restart local v26       #start:J
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v16

    goto :goto_1

    .line 100
    .restart local v20       #cloud:Lcom/miui/gallery/data/DBCloud;
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->add(Lcom/miui/gallery/data/DBCloud;)Z

    goto :goto_1

    .line 104
    .end local v20           #cloud:Lcom/miui/gallery/data/DBCloud;
    :cond_3
    const/16 v25, 0x0

    .line 105
    .local v25, size:I
    if-eqz p6, :cond_7

    .line 106
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 119
    :goto_2
    new-instance v9, Lcom/miui/gallery/cloud/DownloadCloud;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v9, v0, v1, v2}, Lcom/miui/gallery/cloud/DownloadCloud;-><init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V

    .line 122
    .local v9, download:Lcom/miui/gallery/cloud/SyncCloudBase;
    if-eqz p6, :cond_8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v11, p6

    .line 123
    invoke-static/range {v3 .. v11}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItems(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v23

    .line 135
    const/4 v3, 0x2

    move/from16 v0, v23

    if-eq v0, v3, :cond_4

    if-eqz p6, :cond_a

    const/4 v3, 0x3

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    .line 143
    :cond_4
    if-eqz v21, :cond_5

    .line 144
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_5
    move/from16 v3, v23

    .line 148
    .end local v8           #downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    .end local v9           #download:Lcom/miui/gallery/cloud/SyncCloudBase;
    .end local v16           #cloudDownloadArrayItems:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    .end local v25           #size:I
    :cond_6
    :goto_3
    return v3

    .line 108
    .restart local v8       #downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    .restart local v16       #cloudDownloadArrayItems:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    .restart local v25       #size:I
    :cond_7
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->size()I

    move-result v25

    goto :goto_2

    .restart local v9       #download:Lcom/miui/gallery/cloud/SyncCloudBase;
    :cond_8
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, p6

    .line 128
    invoke-static/range {v11 .. v19}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItems(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Lcom/miui/gallery/cloud/CloudDownloadArrayList;Lcom/miui/gallery/cloud/SyncCloudBase;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    const/4 v3, 0x2

    .line 143
    if-eqz v21, :cond_6

    .line 144
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 140
    .end local v8           #downloadArrayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    .end local v9           #download:Lcom/miui/gallery/cloud/SyncCloudBase;
    .end local v16           #cloudDownloadArrayItems:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    .end local v25           #size:I
    :cond_9
    :try_start_3
    const-string v3, "DownloadFromServer"

    const-string v4, "there is no cloud to be download."

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :cond_a
    if-eqz v21, :cond_b

    .line 144
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_b
    const-string v3, "DownloadFromServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download files finish, time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v28

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v3, 0x0

    goto :goto_3

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static downloadMicroThumbnailFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Z)I
    .locals 7
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/DownloadFromServer;->downloadFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;IZ)I

    move-result v0

    return v0
.end method

.method public static downloadThumbnailFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Z)I
    .locals 7
    .parameter "context"
    .parameter "client"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/DownloadFromServer;->downloadFiles(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;IZ)I

    move-result v0

    return v0
.end method
