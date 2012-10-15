.class public Lcom/miui/gallery/cloud/DownloadCloud;
.super Lcom/miui/gallery/cloud/SyncCloudBase;
.source "DownloadCloud.java"


# instance fields
.field private mDownloadItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestItem:Lcom/miui/gallery/cloud/RequestItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V
    .locals 1
    .parameter "context"
    .parameter "client"
    .parameter "syncStateManager"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncCloudBase;-><init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method private KSSDownload(Lorg/json/JSONObject;Ljava/io/File;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .locals 12
    .parameter "dataJson"
    .parameter "downloadTempFile"

    .prologue
    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 604
    .local v6, startTime:J
    const/4 v8, 0x0

    .line 605
    .local v8, transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    const/4 v0, 0x0

    .line 606
    .local v0, download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    sget-object v2, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 611
    .local v2, downloadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_start_0
    new-instance v5, Lcn/kuaipan/kss/appmaster/RequestDownloadParse;

    invoke-direct {v5}, Lcn/kuaipan/kss/appmaster/RequestDownloadParse;-><init>()V

    .line 612
    .local v5, requestDownload:Lcn/kuaipan/kss/appmaster/RequestDownloadParse;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcn/kuaipan/kss/appmaster/RequestDownloadParse;->parseRequestDownloadInfo(Ljava/lang/String;)Z

    .line 615
    new-instance v1, Lcn/kuaipan/kss/implement/HttpClientDownload;

    iget-object v10, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mClient:Lorg/apache/http/client/HttpClient;

    sget-object v11, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sProxyHelper:Lcn/kuaipan/kss/implement/HttpClientProxyHelper;

    invoke-direct {v1, v10, v11}, Lcn/kuaipan/kss/implement/HttpClientDownload;-><init>(Lorg/apache/http/client/HttpClient;Lcn/kuaipan/kss/implement/HttpClientProxyHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    .end local v0           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .local v1, download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    :try_start_1
    iget-object v10, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/miui/gallery/cloud/CloudUtils;->getNetState(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object v4

    .line 617
    .local v4, netState:Lcn/kuaipan/kss/KssDef$NetState;
    invoke-virtual {v1, v5, p0, v4}, Lcn/kuaipan/kss/implement/HttpClientDownload;->init(Lcn/kuaipan/kss/KssDownload$RequestDownloadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lcn/kuaipan/kss/KssDef$NetState;)Z

    .line 621
    new-instance v9, Lcn/kuaipan/kss/implement/KPDownloadTransControl;

    invoke-direct {v9}, Lcn/kuaipan/kss/implement/KPDownloadTransControl;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 622
    .end local v8           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .local v9, transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    const/4 v10, 0x1

    :try_start_2
    invoke-virtual {v9, p2, v10}, Lcn/kuaipan/kss/implement/KPDownloadTransControl;->init(Ljava/io/File;Z)V

    .line 625
    invoke-virtual {v1, v9}, Lcn/kuaipan/kss/implement/HttpClientDownload;->download(Lcn/kuaipan/kss/KssDownload$DownloadTransControl;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 633
    if-eqz v9, :cond_0

    .line 634
    invoke-virtual {v9}, Lcn/kuaipan/kss/implement/KPDownloadTransControl;->close()V

    .line 636
    :cond_0
    if-eqz v1, :cond_1

    .line 637
    invoke-virtual {v1}, Lcn/kuaipan/kss/implement/HttpClientDownload;->terminal()V

    :cond_1
    move-object v0, v1

    .end local v1           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v0       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    move-object v8, v9

    .end local v9           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .restart local v8       #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    move-object v10, v2

    .line 643
    .end local v4           #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .end local v5           #requestDownload:Lcn/kuaipan/kss/appmaster/RequestDownloadParse;
    :cond_2
    :goto_0
    return-object v10

    .line 627
    :catch_0
    move-exception v3

    .line 628
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v10, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 633
    if-eqz v8, :cond_3

    .line 634
    invoke-virtual {v8}, Lcn/kuaipan/kss/implement/KPDownloadTransControl;->close()V

    .line 636
    :cond_3
    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {v0}, Lcn/kuaipan/kss/implement/HttpClientDownload;->terminal()V

    goto :goto_0

    .line 629
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 630
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v10, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 633
    if-eqz v8, :cond_4

    .line 634
    invoke-virtual {v8}, Lcn/kuaipan/kss/implement/KPDownloadTransControl;->close()V

    .line 636
    :cond_4
    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {v0}, Lcn/kuaipan/kss/implement/HttpClientDownload;->terminal()V

    goto :goto_0

    .line 633
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v8, :cond_5

    .line 634
    invoke-virtual {v8}, Lcn/kuaipan/kss/implement/KPDownloadTransControl;->close()V

    .line 636
    :cond_5
    if-eqz v0, :cond_6

    .line 637
    invoke-virtual {v0}, Lcn/kuaipan/kss/implement/HttpClientDownload;->terminal()V

    :cond_6
    throw v10

    .line 633
    .end local v0           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v1       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v5       #requestDownload:Lcn/kuaipan/kss/appmaster/RequestDownloadParse;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v0       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    goto :goto_3

    .end local v0           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .end local v8           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .restart local v1       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v4       #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .restart local v9       #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v0       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    move-object v8, v9

    .end local v9           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .restart local v8       #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    goto :goto_3

    .line 629
    .end local v0           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .end local v4           #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .restart local v1       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v0       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    goto :goto_2

    .end local v0           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .end local v8           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .restart local v1       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v4       #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .restart local v9       #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v0       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    move-object v8, v9

    .end local v9           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .restart local v8       #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    goto :goto_2

    .line 627
    .end local v0           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .end local v4           #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .restart local v1       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v0       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    goto :goto_1

    .end local v0           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .end local v8           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .restart local v1       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v4       #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .restart local v9       #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1           #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    .restart local v0       #download:Lcn/kuaipan/kss/implement/HttpClientDownload;
    move-object v8, v9

    .end local v9           #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    .restart local v8       #transControl:Lcn/kuaipan/kss/implement/KPDownloadTransControl;
    goto :goto_1
.end method

.method private download(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 13
    .parameter "account"
    .parameter "extToken"
    .parameter "ckey"
    .parameter "requestJson"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 440
    sget-object v10, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 441
    .local v10, downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v1, v1, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    packed-switch v1, :pswitch_data_0

    .line 481
    :cond_0
    :goto_0
    return-object v10

    .line 444
    :pswitch_0
    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/cloud/DownloadCloud;->downloadThumbnail(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lorg/json/JSONObject;IZ)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v10

    .line 446
    goto :goto_0

    .line 450
    :pswitch_1
    const/16 v6, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/gallery/cloud/DownloadCloud;->downloadThumbnail(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lorg/json/JSONObject;IZ)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v10

    .line 452
    goto :goto_0

    .line 456
    :pswitch_2
    const-string v1, "data"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "kss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 459
    .local v8, dataJson:Lorg/json/JSONObject;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/cloud/DownloadItem;

    .line 462
    .local v9, downloadItem:Lcom/miui/gallery/cloud/DownloadItem;
    iget-object v1, v9, Lcom/miui/gallery/cloud/DownloadItem;->downloadTempFile:Ljava/io/File;

    invoke-direct {p0, v8, v1}, Lcom/miui/gallery/cloud/DownloadCloud;->KSSDownload(Lorg/json/JSONObject;Ljava/io/File;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v11

    .line 465
    .local v11, downloadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    invoke-static {v11}, Lcom/miui/gallery/cloud/CheckResult;->checkKSSResult(Lcn/kuaipan/kss/KssDef$KssAPIResult;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v1

    iput-object v1, v9, Lcom/miui/gallery/cloud/DownloadItem;->downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 468
    iget-object v1, v9, Lcom/miui/gallery/cloud/DownloadItem;->downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v1, v2, :cond_1

    .line 469
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v2, v1, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    .line 470
    sget-object v10, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 459
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 472
    :cond_1
    iget-object v1, v9, Lcom/miui/gallery/cloud/DownloadItem;->downloadTempFile:Ljava/io/File;

    iget-object v2, v9, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 474
    move-object/from16 v0, p3

    invoke-direct {p0, p1, p2, v0, v9}, Lcom/miui/gallery/cloud/DownloadCloud;->updateDatebase(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/DownloadItem;)V

    goto :goto_2

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static downloadData(Ljava/lang/String;Ljava/io/File;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 7
    .parameter "data"
    .parameter "downloadTempFile"

    .prologue
    .line 485
    const/4 v2, 0x0

    .line 487
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 488
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 489
    .local v1, m_dataBuffer:[B
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 501
    if-eqz v3, :cond_0

    .line 502
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 503
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 510
    :cond_0
    :goto_0
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object v2, v3

    .end local v1           #m_dataBuffer:[B
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    return-object v4

    .line 505
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #m_dataBuffer:[B
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DownloadCloud"

    const-string v5, "download data error."

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 490
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #m_dataBuffer:[B
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 491
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_3
    const-string v4, "DownloadCloud"

    const-string v5, "download data error."

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    if-eqz v2, :cond_1

    .line 502
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 503
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 505
    :catch_2
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DownloadCloud"

    const-string v6, "download data error."

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 493
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 494
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v4, "DownloadCloud"

    const-string v5, "download data error."

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 501
    if-eqz v2, :cond_1

    .line 502
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 503
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 505
    :catch_4
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DownloadCloud"

    const-string v6, "download data error."

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 496
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 497
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v4, "DownloadCloud"

    const-string v5, "download data error."

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 501
    if-eqz v2, :cond_1

    .line 502
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 503
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 505
    :catch_6
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DownloadCloud"

    const-string v6, "download data error."

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 500
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 501
    :goto_5
    if-eqz v2, :cond_2

    .line 502
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 503
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 507
    :cond_2
    :goto_6
    throw v4

    .line 505
    :catch_7
    move-exception v0

    .line 506
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "DownloadCloud"

    const-string v6, "download data error."

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 500
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 496
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 493
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_3

    .line 490
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private downloadThumbnail(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lorg/json/JSONObject;IZ)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 14
    .parameter "account"
    .parameter "extToken"
    .parameter "ckey"
    .parameter "requestJson"
    .parameter "checkType"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 375
    .local v4, downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    const-string v11, "data"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "content"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 378
    .local v10, thumbnails:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v11, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 380
    iget-object v11, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mSyncStateManager:Lcom/miui/gallery/cloud/SyncStateManager;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v11, v0, v1}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I

    move-result v7

    .line 381
    .local v7, result:I
    const/4 v11, 0x2

    if-eq v7, v11, :cond_0

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z

    move-result v11

    if-nez v11, :cond_2

    .line 383
    :cond_0
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Cancel:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 434
    .end local v4           #downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v7           #result:I
    :cond_1
    :goto_1
    return-object v4

    .line 386
    .restart local v4       #downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .restart local v7       #result:I
    :cond_2
    const/4 v11, 0x3

    if-ne v7, v11, :cond_3

    .line 387
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_1

    .line 390
    :cond_3
    iget-object v11, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/DownloadItem;

    .line 392
    .local v3, downloadItem:Lcom/miui/gallery/cloud/DownloadItem;
    iget v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadState:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_5

    .line 378
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 396
    :cond_5
    iget-object v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v11, v11, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v11}, Lcom/miui/gallery/data/DBCloud;->getServerId()Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, serverId:Ljava/lang/String;
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 398
    const-string v11, "DownloadCloud"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was not found in content json:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v11, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    iput-object v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 401
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 402
    goto :goto_2

    .line 405
    :cond_6
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 406
    .local v9, thumbnailJson:Lorg/json/JSONObject;
    const-string v11, "isUrl"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 407
    .local v6, isUrl:Z
    const-string v11, "data"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, data:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 413
    iget-object v11, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mContext:Landroid/content/Context;

    iget-object v12, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadTempFile:Ljava/io/File;

    invoke-virtual {p0, v11, v12, v2}, Lcom/miui/gallery/cloud/DownloadCloud;->downloadFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v11

    iput-object v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 421
    :goto_3
    iget-object v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    sget-object v12, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v11, v12, :cond_8

    .line 422
    iget-object v11, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v12, v11, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    .line 423
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_2

    .line 417
    :cond_7
    iget-object v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadTempFile:Ljava/io/File;

    invoke-static {v2, v11}, Lcom/miui/gallery/cloud/DownloadCloud;->downloadData(Ljava/lang/String;Ljava/io/File;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v11

    iput-object v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_3

    .line 425
    :cond_8
    iget-object v11, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadTempFile:Ljava/io/File;

    iget-object v12, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 427
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/miui/gallery/cloud/DownloadCloud;->updateDatebase(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/DownloadItem;)V

    .line 428
    const/16 v11, 0x8

    move/from16 v0, p5

    if-ne v0, v11, :cond_4

    .line 429
    const-string v11, "TEST"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "the download file is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private getFolderPath(Lcom/miui/gallery/cloud/RequestItem;)Ljava/lang/String;
    .locals 3
    .parameter "requestItem"

    .prologue
    .line 264
    iget-object v1, p1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getGroupId()J

    move-result-wide v1

    long-to-int v0, v1

    .line 265
    .local v0, groupId:I
    iget v1, p1, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    packed-switch v1, :pswitch_data_0

    .line 276
    const-string v1, ""

    :goto_0
    return-object v1

    .line 267
    :pswitch_0
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    :pswitch_1
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getDownloadFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleError(Lorg/apache/http/client/methods/HttpGet;Ljava/io/File;Ljava/lang/Exception;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 3
    .parameter "httpGet"
    .parameter "downloadTempFile"
    .parameter "e"
    .parameter "message"

    .prologue
    .line 592
    const-string v0, "DownloadCloud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 594
    invoke-static {p2}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/io/File;)V

    .line 595
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    return-object v0
.end method

.method private needDownload(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 8
    .parameter "account"
    .parameter "extToken"
    .parameter "ckey"
    .parameter "requestItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/MiCloudServerException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 199
    new-instance v0, Lcom/miui/gallery/cloud/DownloadItem;

    invoke-direct {v0, p4}, Lcom/miui/gallery/cloud/DownloadItem;-><init>(Lcom/miui/gallery/cloud/RequestItem;)V

    .line 200
    .local v0, downloadItem:Lcom/miui/gallery/cloud/DownloadItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, v0, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    invoke-direct {p0, v3}, Lcom/miui/gallery/cloud/DownloadCloud;->tryToUseLocalFile(Lcom/miui/gallery/cloud/RequestItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    iput v4, v0, Lcom/miui/gallery/cloud/DownloadItem;->downloadState:I

    .line 205
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 234
    :goto_0
    return-object v3

    .line 209
    :cond_0
    iget-object v3, v0, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    invoke-direct {p0, v3}, Lcom/miui/gallery/cloud/DownloadCloud;->getFolderPath(Lcom/miui/gallery/cloud/RequestItem;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, folderPath:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 213
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v4, v4, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, downloadPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    .line 215
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/miui/gallery/cloud/DownloadItem;->downloadTempFile:Ljava/io/File;

    .line 218
    iget-object v3, v0, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    iget-object v4, v0, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v4, v4, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v4

    iget-object v6, v0, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v6, v6, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/miui/gallery/cloud/CloudUtils;->isFileCorrect(Ljava/io/File;JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    const/4 v3, 0x2

    iput v3, v0, Lcom/miui/gallery/cloud/DownloadItem;->downloadState:I

    .line 226
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/cloud/DownloadCloud;->updateDatebase(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/DownloadItem;)V

    .line 227
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 233
    :cond_2
    const/4 v3, 0x3

    iput v3, v0, Lcom/miui/gallery/cloud/DownloadItem;->downloadState:I

    .line 234
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0
.end method

.method private requestDownload(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;
    .locals 6
    .parameter "account"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://galleryapi.micloud.xiaomi.net/mic/v1/gallery/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/full/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v2, v2, Lcom/miui/gallery/cloud/RequestItem;->serverIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, downloadUrl:Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v4, v2, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    iget-object v2, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-boolean v5, v2, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/ArrayList;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method private requestItem(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;
    .locals 1
    .parameter "account"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v0, v0, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    packed-switch v0, :pswitch_data_0

    .line 327
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 321
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/DownloadCloud;->requestThumbnail(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 324
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/DownloadCloud;->requestDownload(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requestThumbnail(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;
    .locals 8
    .parameter "account"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xfa

    const/4 v5, 0x2

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://galleryapi.micloud.xiaomi.net/mic/v1/gallery/user/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/thumbnails"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, downloadUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v3, v3, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    if-ne v3, v5, :cond_0

    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenWidthPixel()I

    move-result v7

    .line 352
    .local v7, width:I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v3, v3, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenHeightPixel()I

    move-result v6

    .line 355
    .local v6, height:I
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "width"

    iget-object v4, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "height"

    iget-object v4, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ids"

    iget-object v4, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v5, v5, Lcom/miui/gallery/cloud/RequestItem;->serverIds:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v2, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v4, v2, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    iget-object v2, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-boolean v5, v2, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/ArrayList;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2

    .end local v1           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #height:I
    .end local v7           #width:I
    :cond_0
    move v7, v2

    .line 349
    goto :goto_0

    .restart local v7       #width:I
    :cond_1
    move v6, v2

    .line 352
    goto :goto_1
.end method

.method private shouldEdit(Ljava/io/File;Lcom/miui/gallery/cloud/RequestItem;Landroid/content/ContentValues;)Z
    .locals 11
    .parameter "downloadedFile"
    .parameter "requestItem"
    .parameter "values"

    .prologue
    const-wide/16 v9, 0x3e8

    .line 238
    iget v5, p2, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 239
    const/4 v4, 0x0

    .line 260
    :cond_0
    :goto_0
    return v4

    .line 241
    :cond_1
    const/4 v4, 0x0

    .line 243
    .local v4, shouldEdit:Z
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 244
    .local v2, fileSize:J
    iget-object v5, p2, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-eqz v5, :cond_2

    .line 245
    const-string v5, "DownloadCloud"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size should edit from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v5, p2, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5, v2, v3}, Lcom/miui/gallery/data/DBCloud;->setSize(J)V

    .line 247
    const-string v5, "size"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const/4 v4, 0x1

    .line 252
    :cond_2
    iget-object v5, p2, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v0

    .line 253
    .local v0, dateModifiedDB:J
    const-wide v5, 0xf2a4b300L

    cmp-long v5, v0, v5

    if-gtz v5, :cond_0

    .line 254
    const-string v5, "DownloadCloud"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dateModified should edit from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-long v7, v0, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v5, p2, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    mul-long v6, v0, v9

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/data/DBCloud;->setDateModified(J)V

    .line 257
    const-string v5, "dateModified"

    iget-object v6, p2, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v6}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private tryToUseLocalFile(Lcom/miui/gallery/cloud/RequestItem;)Z
    .locals 6
    .parameter "requestItem"

    .prologue
    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getGroupId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getExternalStoragePathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, sourcePath:Ljava/lang/String;
    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v2

    iget-object v4, p1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->isFileCorrect(Ljava/lang/String;JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 652
    const/4 v2, 0x0

    .line 660
    :goto_0
    return v2

    .line 654
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/miui/gallery/cloud/DownloadCloud;->updateDownloadToLocalDB(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 660
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateDatebase(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/DownloadItem;)V
    .locals 10
    .parameter "account"
    .parameter "extToken"
    .parameter "ckey"
    .parameter "downloadItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/MiCloudServerException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v9, values:Landroid/content/ContentValues;
    iget-object v0, p4, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    iget-object v1, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    invoke-direct {p0, v0, v1, v9}, Lcom/miui/gallery/cloud/DownloadCloud;->shouldEdit(Ljava/io/File;Lcom/miui/gallery/cloud/RequestItem;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mContext:Landroid/content/Context;

    iget-object v3, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "content"

    iget-object v4, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v4, v4, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/EditCloud;->editOnServer(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/RequestItem;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 176
    .local v7, editJson:Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mContext:Landroid/content/Context;

    iget-object v1, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    invoke-static {v0, v7, v1}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v8

    .line 178
    .local v8, editResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v8, v0, :cond_0

    .line 179
    iget-object v0, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v1, v0, Lcom/miui/gallery/cloud/RequestItem;->editRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/miui/gallery/cloud/RequestItem;->editRetryTimes:I

    .line 185
    .end local v7           #editJson:Lorg/json/JSONObject;
    .end local v8           #editResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_0
    iget-object v0, p4, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    iget-object v1, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v1, v1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 189
    iget-object v0, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v6, v0, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    .line 190
    .local v6, downloadType:I
    iget-object v0, p4, Lcom/miui/gallery/cloud/DownloadItem;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v1, v1, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6, v9}, Lcom/miui/gallery/cloud/DownloadCloud;->updateDownloadToLocalDB(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 193
    return-void
.end method

.method private updateDownloadToLocalDB(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 5
    .parameter "path"
    .parameter "id"
    .parameter "downloadType"
    .parameter "values"

    .prologue
    .line 281
    if-nez p4, :cond_1

    .line 282
    const-string v1, "DownloadCloud"

    const-string v2, "values is null."

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 301
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 305
    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 307
    :cond_2
    invoke-static {p3}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v0

    .line 309
    .local v0, cloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    invoke-static {p1}, Lmiui/os/ExtraFileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->removeItemHashMap(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v0           #cloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    :pswitch_0
    const-string v1, "microthumbfile"

    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :pswitch_1
    const-string v1, "thumbnailFile"

    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :pswitch_2
    const-string v1, "downloadFile"

    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkState(IZ)I
    .locals 1
    .parameter "checkType"
    .parameter "isBackground"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/miui/gallery/cloud/DownloadCloud;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/gallery/cloud/CloudUtils;->canSaveImage(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    const/4 v0, 0x2

    .line 668
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/cloud/SyncCloudBase;->checkState(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public downloadFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 24
    .parameter "context"
    .parameter "downloadTempFile"
    .parameter "url"

    .prologue
    .line 515
    const/4 v8, 0x0

    .line 516
    .local v8, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v15, 0x0

    .line 517
    .local v15, response:Lorg/apache/http/HttpResponse;
    const/4 v10, 0x0

    .line 518
    .local v10, in:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 520
    .local v13, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 526
    .local v16, start:J
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 527
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .local v9, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 530
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 531
    .local v18, statusCode:I
    const/16 v21, 0xc8

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v21, 0x12c

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 532
    :cond_0
    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "statusCode:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/miui/gallery/cloud/DownloadCloud;->handleError(Lorg/apache/http/client/methods/HttpGet;Ljava/io/File;Ljava/lang/Exception;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-result-object v21

    .line 577
    if-eqz v10, :cond_1

    .line 578
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_1
    if-eqz v13, :cond_2

    .line 581
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v8, v9

    .line 588
    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #start:J
    .end local v18           #statusCode:I
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :cond_3
    :goto_1
    return-object v21

    .line 584
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #start:J
    .restart local v18       #statusCode:I
    :catch_0
    move-exception v6

    .line 585
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "DownloadCloud"

    const-string v23, "download file error."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 536
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    const-wide/16 v19, 0x0

    .line 537
    .local v19, totalSize:J
    :try_start_3
    const-string v21, "Content-Length"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 538
    .local v7, header:Lorg/apache/http/Header;
    if-eqz v7, :cond_5

    .line 539
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 543
    :cond_5
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 544
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    .line 547
    .end local v13           #out:Ljava/io/OutputStream;
    .local v14, out:Ljava/io/OutputStream;
    :try_start_4
    sget v21, Lcn/kuaipan/kss/KssDef;->DOWNLOAD_BUFFER:I

    move/from16 v0, v21

    new-array v12, v0, [B

    .line 548
    .local v12, m_dataBuffer:[B
    const/4 v11, 0x0

    .line 549
    .local v11, len:I
    const-wide/16 v4, 0x0

    .line 550
    .local v4, currentSize:J
    :goto_2
    const/16 v21, 0x0

    sget v22, Lcn/kuaipan/kss/KssDef;->DOWNLOAD_BUFFER:I

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v12, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-ltz v11, :cond_6

    .line 551
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v12, v0, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 552
    int-to-long v0, v11

    move-wide/from16 v21, v0

    add-long v4, v4, v21

    goto :goto_2

    .line 556
    :cond_6
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-eqz v21, :cond_9

    cmp-long v21, v4, v19

    if-eqz v21, :cond_9

    .line 557
    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " size error, current:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",total:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/miui/gallery/cloud/DownloadCloud;->handleError(Lorg/apache/http/client/methods/HttpGet;Ljava/io/File;Ljava/lang/Exception;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    move-result-object v21

    .line 577
    if-eqz v10, :cond_7

    .line 578
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_7
    if-eqz v14, :cond_8

    .line 581
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    :goto_3
    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    move-object v8, v9

    .line 586
    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1

    .line 584
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    .line 585
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v22, "DownloadCloud"

    const-string v23, "download file error."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 577
    .end local v6           #e:Ljava/lang/Exception;
    :cond_9
    if-eqz v10, :cond_a

    .line 578
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_a
    if-eqz v14, :cond_b

    .line 581
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 588
    :cond_b
    :goto_4
    sget-object v21, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_1

    .line 584
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    .line 585
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v21, "DownloadCloud"

    const-string v22, "download file error."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 567
    .end local v4           #currentSize:J
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #len:I
    .end local v12           #m_dataBuffer:[B
    .end local v14           #out:Ljava/io/OutputStream;
    .end local v16           #start:J
    .end local v18           #statusCode:I
    .end local v19           #totalSize:J
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v6

    .line 568
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :goto_5
    :try_start_7
    const-string v21, "uri may be invalid"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v6, v2}, Lcom/miui/gallery/cloud/DownloadCloud;->handleError(Lorg/apache/http/client/methods/HttpGet;Ljava/io/File;Ljava/lang/Exception;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v21

    .line 577
    if-eqz v10, :cond_c

    .line 578
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_c
    if-eqz v13, :cond_3

    .line 581
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 584
    :catch_4
    move-exception v6

    .line 585
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "DownloadCloud"

    const-string v23, "download file error."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 569
    .end local v6           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 570
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_6
    const/16 v21, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v6, v2}, Lcom/miui/gallery/cloud/DownloadCloud;->handleError(Lorg/apache/http/client/methods/HttpGet;Ljava/io/File;Ljava/lang/Exception;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v21

    .line 577
    if-eqz v10, :cond_d

    .line 578
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_d
    if-eqz v13, :cond_3

    .line 581
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    .line 584
    :catch_6
    move-exception v6

    .line 585
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "DownloadCloud"

    const-string v23, "download file error."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 571
    .end local v6           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 572
    .local v6, e:Ljava/io/IOException;
    :goto_7
    const/16 v21, 0x0

    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v6, v2}, Lcom/miui/gallery/cloud/DownloadCloud;->handleError(Lorg/apache/http/client/methods/HttpGet;Ljava/io/File;Ljava/lang/Exception;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v21

    .line 577
    if-eqz v10, :cond_e

    .line 578
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_e
    if-eqz v13, :cond_3

    .line 581
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_1

    .line 584
    :catch_8
    move-exception v6

    .line 585
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "DownloadCloud"

    const-string v23, "download file error."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 573
    .end local v6           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v6

    .line 574
    .restart local v6       #e:Ljava/lang/Exception;
    :goto_8
    const/16 v21, 0x0

    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v6, v2}, Lcom/miui/gallery/cloud/DownloadCloud;->handleError(Lorg/apache/http/client/methods/HttpGet;Ljava/io/File;Ljava/lang/Exception;Ljava/lang/String;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v21

    .line 577
    if-eqz v10, :cond_f

    .line 578
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_f
    if-eqz v13, :cond_3

    .line 581
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_1

    .line 584
    :catch_a
    move-exception v6

    .line 585
    const-string v22, "DownloadCloud"

    const-string v23, "download file error."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 576
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 577
    :goto_9
    if-eqz v10, :cond_10

    .line 578
    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 580
    :cond_10
    if-eqz v13, :cond_11

    .line 581
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 582
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 586
    :cond_11
    :goto_a
    throw v21

    .line 584
    :catch_b
    move-exception v6

    .line 585
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v22, "DownloadCloud"

    const-string v23, "download file error."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 576
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #start:J
    :catchall_1
    move-exception v21

    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_9

    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v7       #header:Lorg/apache/http/Header;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v18       #statusCode:I
    .restart local v19       #totalSize:J
    :catchall_2
    move-exception v21

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_9

    .line 573
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #statusCode:I
    .end local v19           #totalSize:J
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :catch_c
    move-exception v6

    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_8

    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v7       #header:Lorg/apache/http/Header;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v18       #statusCode:I
    .restart local v19       #totalSize:J
    :catch_d
    move-exception v6

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_8

    .line 571
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #statusCode:I
    .end local v19           #totalSize:J
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :catch_e
    move-exception v6

    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_7

    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v7       #header:Lorg/apache/http/Header;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v18       #statusCode:I
    .restart local v19       #totalSize:J
    :catch_f
    move-exception v6

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_7

    .line 569
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #statusCode:I
    .end local v19           #totalSize:J
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :catch_10
    move-exception v6

    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_6

    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v7       #header:Lorg/apache/http/Header;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v18       #statusCode:I
    .restart local v19       #totalSize:J
    :catch_11
    move-exception v6

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_6

    .line 567
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #statusCode:I
    .end local v19           #totalSize:J
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :catch_12
    move-exception v6

    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_5

    .end local v8           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v7       #header:Lorg/apache/http/Header;
    .restart local v9       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #out:Ljava/io/OutputStream;
    .restart local v18       #statusCode:I
    .restart local v19       #totalSize:J
    :catch_13
    move-exception v6

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_5
.end method

.method public execute(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;Z)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 21
    .parameter "account"
    .parameter "extToken"
    .parameter "ckey"
    .parameter "requestItem"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 93
    .local v19, startTime:J
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    .line 95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v5, v5, Lcom/miui/gallery/cloud/RequestItem;->multRequestItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v5, v5, Lcom/miui/gallery/cloud/RequestItem;->multRequestItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v5, v5, Lcom/miui/gallery/cloud/RequestItem;->multRequestItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/gallery/cloud/RequestItem;

    .line 98
    .local v18, requestSingleItem:Lcom/miui/gallery/cloud/RequestItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/cloud/DownloadCloud;->needDownload(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v16

    .line 99
    .local v16, needResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v5, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v16

    if-eq v0, v5, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v6, v5, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    .line 152
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #needResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v18           #requestSingleItem:Lcom/miui/gallery/cloud/RequestItem;
    :goto_0
    return-object v16

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/miui/gallery/cloud/DownloadCloud;->needDownload(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v16

    .line 106
    .restart local v16       #needResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v5, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v16

    if-eq v0, v5, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v6, v5, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    goto :goto_0

    .line 113
    .end local v16           #needResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v15, ids:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/gallery/cloud/DownloadItem;

    .line 116
    .local v11, downloadItem:Lcom/miui/gallery/cloud/DownloadItem;
    iget v5, v11, Lcom/miui/gallery/cloud/DownloadItem;->downloadState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 117
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 118
    const-string v5, ","

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_3
    iget-object v5, v11, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v5, v5, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 123
    .end local v11           #downloadItem:Lcom/miui/gallery/cloud/DownloadItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/miui/gallery/cloud/RequestItem;->serverIds:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget-object v5, v5, Lcom/miui/gallery/cloud/RequestItem;->serverIds:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 127
    invoke-direct/range {p0 .. p2}, Lcom/miui/gallery/cloud/DownloadCloud;->requestItem(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;

    move-result-object v9

    .line 130
    .local v9, requestJson:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    invoke-static {v5, v9, v6}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v17

    .line 132
    .local v17, requestResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v5, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v6, v5, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    move-object/from16 v16, v17

    .line 134
    goto/16 :goto_0

    :cond_6
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v10, p5

    .line 140
    invoke-direct/range {v5 .. v10}, Lcom/miui/gallery/cloud/DownloadCloud;->download(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v12

    .line 142
    .local v12, downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v5, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/cloud/DownloadCloud;->mRequestItem:Lcom/miui/gallery/cloud/RequestItem;

    iget v6, v5, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    move-object/from16 v16, v12

    .line 144
    goto/16 :goto_0

    .line 152
    .end local v9           #requestJson:Lorg/json/JSONObject;
    .end local v12           #downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v17           #requestResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_7
    sget-object v16, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0
.end method
