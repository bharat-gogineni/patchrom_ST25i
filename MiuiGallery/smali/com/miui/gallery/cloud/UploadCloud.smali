.class public Lcom/miui/gallery/cloud/UploadCloud;
.super Lcom/miui/gallery/cloud/SyncCloudBase;
.source "UploadCloud.java"


# instance fields
.field private mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V
    .locals 0
    .parameter "context"
    .parameter "client"
    .parameter "syncStateManager"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncCloudBase;-><init>(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lcom/miui/gallery/cloud/SyncStateManager;)V

    .line 54
    return-void
.end method

.method private KSSUpload(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .locals 13
    .parameter "createdJson"
    .parameter "localFile"
    .parameter "serverId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 331
    .local v5, startTime:J
    const/4 v0, 0x0

    .line 332
    .local v0, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 333
    .local v7, upload:Lcn/kuaipan/kss/KssUpload;
    sget-object v9, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 336
    .local v9, uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Lcn/kuaipan/kss/appmaster/RequestUploadParse;

    invoke-direct {v4}, Lcn/kuaipan/kss/appmaster/RequestUploadParse;-><init>()V

    .line 340
    .local v4, requstParse:Lcn/kuaipan/kss/appmaster/RequestUploadParse;
    const-string v11, "kss"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcn/kuaipan/kss/appmaster/RequestUploadParse;->parseRequestUploadInfo(Ljava/lang/String;)Z

    .line 341
    invoke-virtual {v4}, Lcn/kuaipan/kss/appmaster/RequestUploadParse;->getRequestUploadState()Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    move-result-object v3

    .line 343
    .local v3, requestState:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
    sget-object v11, Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;->FileExisted:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;

    if-ne v3, v11, :cond_2

    .line 344
    const-string v11, "UploadCloud"

    const-string v12, "create should not return kss_file_existed"

    invoke-static {v11, v12}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 361
    :cond_0
    if-eqz v7, :cond_1

    .line 362
    invoke-interface {v7}, Lcn/kuaipan/kss/KssUpload;->terminal()V

    :cond_1
    move-object v10, v9

    .line 368
    .end local v9           #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .local v10, uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :goto_0
    return-object v10

    .line 349
    .end local v10           #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .restart local v9       #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :cond_2
    :try_start_2
    new-instance v8, Lcn/kuaipan/kss/implement/HttpClientUpload;

    iget-object v11, p0, Lcom/miui/gallery/cloud/UploadCloud;->mClient:Lorg/apache/http/client/HttpClient;

    sget-object v12, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sProxyHelper:Lcn/kuaipan/kss/implement/HttpClientProxyHelper;

    invoke-direct {v8, v11, v12}, Lcn/kuaipan/kss/implement/HttpClientUpload;-><init>(Lorg/apache/http/client/HttpClient;Lcn/kuaipan/kss/implement/HttpClientProxyHelper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    .end local v7           #upload:Lcn/kuaipan/kss/KssUpload;
    .local v8, upload:Lcn/kuaipan/kss/KssUpload;
    :try_start_3
    iget-object v11, p0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/miui/gallery/cloud/CloudUtils;->getNetState(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object v2

    .line 351
    .local v2, netState:Lcn/kuaipan/kss/KssDef$NetState;
    invoke-interface {v8, v4, p0, v2}, Lcn/kuaipan/kss/KssUpload;->init(Lcn/kuaipan/kss/KssUpload$RequestUploadInfo;Lcn/kuaipan/kss/KssDef$OnUpDownload;Lcn/kuaipan/kss/KssDef$NetState;)Z

    .line 354
    invoke-interface {v8, v1}, Lcn/kuaipan/kss/KssUpload;->upload(Ljava/io/InputStream;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v9

    .line 355
    invoke-interface {v8}, Lcn/kuaipan/kss/KssUpload;->getCommitInfo()Lcn/kuaipan/kss/KssUpload$UploadResult;

    move-result-object v11

    iput-object v11, p0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 358
    if-eqz v1, :cond_3

    .line 359
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 361
    :cond_3
    if-eqz v8, :cond_4

    .line 362
    invoke-interface {v8}, Lcn/kuaipan/kss/KssUpload;->terminal()V

    :cond_4
    move-object v7, v8

    .end local v8           #upload:Lcn/kuaipan/kss/KssUpload;
    .restart local v7       #upload:Lcn/kuaipan/kss/KssUpload;
    move-object v10, v9

    .line 368
    .end local v9           #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .restart local v10       #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    goto :goto_0

    .line 358
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .end local v3           #requestState:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
    .end local v4           #requstParse:Lcn/kuaipan/kss/appmaster/RequestUploadParse;
    .end local v10           #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .restart local v0       #in:Ljava/io/InputStream;
    .restart local v9       #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :catchall_0
    move-exception v11

    :goto_1
    if-eqz v0, :cond_5

    .line 359
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 361
    :cond_5
    if-eqz v7, :cond_6

    .line 362
    invoke-interface {v7}, Lcn/kuaipan/kss/KssUpload;->terminal()V

    :cond_6
    throw v11

    .line 358
    .end local v0           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/InputStream;
    .end local v7           #upload:Lcn/kuaipan/kss/KssUpload;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #requestState:Lcn/kuaipan/kss/KssUpload$RequestUploadInfo$RequestUploadState;
    .restart local v4       #requstParse:Lcn/kuaipan/kss/appmaster/RequestUploadParse;
    .restart local v8       #upload:Lcn/kuaipan/kss/KssUpload;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #upload:Lcn/kuaipan/kss/KssUpload;
    .restart local v7       #upload:Lcn/kuaipan/kss/KssUpload;
    move-object v0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private checkSchema(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;Lcom/miui/gallery/data/DBCloud;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 14
    .parameter "account"
    .parameter "extToken"
    .parameter "ckey"
    .parameter "requestItem"
    .parameter "dbCloud"
    .parameter "serverId"
    .parameter "contentCreateJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/MiCloudServerException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual/range {p5 .. p5}, Lcom/miui/gallery/data/DBCloud;->getServerTag()J

    move-result-wide v9

    .line 253
    .local v9, localTag:J
    const-string v1, "tag"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 255
    .local v11, serverTag:J
    cmp-long v1, v9, v11

    if-gtz v1, :cond_3

    .line 261
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-static {v1, v0}, Lcom/miui/gallery/cloud/EditCloud;->mergeLocalSchemaToServer(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const-string v1, "UploadCloud"

    const-string v2, "schema changed"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DBCloud;->setServerId(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "content"

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/cloud/EditCloud;->editOnServer(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/RequestItem;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 280
    .local v7, editJson:Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v1, v7, v0}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v8

    .line 282
    .local v8, editResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v1, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v8, v1, :cond_0

    .line 283
    move-object/from16 v0, p4

    iget v1, v0, Lcom/miui/gallery/cloud/RequestItem;->editRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p4

    iput v1, v0, Lcom/miui/gallery/cloud/RequestItem;->editRetryTimes:I

    .line 300
    .end local v7           #editJson:Lorg/json/JSONObject;
    .end local v8           #editResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :goto_0
    return-object v8

    .line 288
    .restart local v7       #editJson:Lorg/json/JSONObject;
    .restart local v8       #editResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_0
    invoke-static/range {p7 .. p7}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForSync(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v13

    .line 289
    .local v13, values:Landroid/content/ContentValues;
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-direct {p0, v13, v1}, Lcom/miui/gallery/cloud/UploadCloud;->updateToLocalDB(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBCloud;)V

    .line 292
    .end local v7           #editJson:Lorg/json/JSONObject;
    .end local v8           #editResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 294
    iget-object v1, p0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    :cond_2
    sget-object v8, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 299
    :cond_3
    const-string v1, "UploadCloud"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= json tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v8, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0
.end method

.method private commit(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lorg/json/JSONObject;
    .locals 9
    .parameter "account"
    .parameter "extToken"
    .parameter "serverId"
    .parameter "requestItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v3, p0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    if-nez v3, :cond_0

    .line 375
    const-string v3, "UploadCloud"

    const-string v4, "UploadResult is null."

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-object v0

    .line 378
    :cond_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 379
    .local v7, commitMetas:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    invoke-interface {v3}, Lcn/kuaipan/kss/KssUpload$UploadResult;->getBlockCount()I

    move-result v3

    if-ge v8, v3, :cond_2

    .line 380
    iget-object v3, p0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    invoke-interface {v3, v8}, Lcn/kuaipan/kss/KssUpload$UploadResult;->getBlockCommitMeta(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    const-string v3, "UploadCloud"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commit meta ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "commit_meta"

    iget-object v5, p0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    invoke-interface {v5, v8}, Lcn/kuaipan/kss/KssUpload$UploadResult;->getBlockCommitMeta(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 379
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    invoke-interface {v3}, Lcn/kuaipan/kss/KssUpload$UploadResult;->getFileMeta()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    const-string v3, "UploadCloud"

    const-string v4, "file meta is null."

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 393
    const-string v3, "UploadCloud"

    const-string v4, "commit metas is empty."

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "file_meta"

    iget-object v4, p0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    invoke-interface {v4}, Lcn/kuaipan/kss/KssUpload$UploadResult;->getFileMeta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "commit_metas"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 398
    .local v2, commitJson:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "kss"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://galleryapi.micloud.xiaomi.net/mic/v1/gallery/user/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/full/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/storage"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, commitUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    iget v5, p4, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I

    iget-boolean v6, p4, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private create(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lorg/json/JSONObject;
    .locals 8
    .parameter "account"
    .parameter "extToken"
    .parameter "ckey"
    .parameter "requestItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p4, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 311
    .local v7, in:Ljava/io/InputStream;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 312
    .local v2, requestJson:Lorg/json/JSONObject;
    iget-object v0, p4, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-static {v7, v0, v2}, Lcom/miui/gallery/cloud/UploadCloud;->getUploadBody(Ljava/io/InputStream;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    .line 315
    :cond_0
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://galleryapi.micloud.xiaomi.net/mic/v1/gallery/user/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/full"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, requestUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    iget v5, p4, Lcom/miui/gallery/cloud/RequestItem;->createRetryTimes:I

    iget-boolean v6, p4, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/cloud/CloudUtils;->postToXiaomi(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUploadBody(Ljava/io/InputStream;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)Z
    .locals 16
    .parameter "in"
    .parameter "cloud"
    .parameter "requestJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 412
    .local v6, jsonBlockArr:Lorg/json/JSONArray;
    const-string v13, "SHA1"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 413
    .local v10, sha1:Ljava/security/MessageDigest;
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 415
    .local v7, md5:Ljava/security/MessageDigest;
    const-string v13, "SHA1"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 417
    .local v12, wholeSha1:Ljava/security/MessageDigest;
    sget v13, Lcn/kuaipan/kss/KssDef;->CHUNKSIZE_MIN:I

    new-array v3, v13, [B

    .line 418
    .local v3, chunkData:[B
    const/4 v8, 0x0

    .line 419
    .local v8, readAll:Z
    :goto_0
    if-nez v8, :cond_2

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, dataLen:I
    :goto_1
    sget v13, Lcn/kuaipan/kss/KssDef;->BLOCKSIZE:I

    if-ge v4, v13, :cond_1

    .line 422
    const/4 v13, 0x0

    array-length v14, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 423
    .local v9, readLen:I
    if-lez v9, :cond_0

    .line 424
    const/4 v13, 0x0

    invoke-virtual {v10, v3, v13, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 425
    const/4 v13, 0x0

    invoke-virtual {v7, v3, v13, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 427
    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 428
    add-int/2addr v4, v9

    goto :goto_1

    .line 430
    :cond_0
    const/4 v8, 0x1

    .line 435
    .end local v9           #readLen:I
    :cond_1
    if-nez v4, :cond_4

    .line 457
    .end local v4           #dataLen:I
    :cond_2
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    invoke-static {v13}, Lcn/kuaipan/kss/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, sha1String:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 459
    :cond_3
    const-string v13, "UploadCloud"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "jsonBlockArr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " or sha1String:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " error."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v13, 0x0

    .line 469
    .end local v11           #sha1String:Ljava/lang/String;
    :goto_2
    return v13

    .line 439
    .restart local v4       #dataLen:I
    :cond_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 441
    .local v5, jsonBlock:Lorg/json/JSONObject;
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    invoke-static {v13}, Lcn/kuaipan/kss/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, blockSHA1String:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    invoke-static {v13}, Lcn/kuaipan/kss/utils/Encode;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, blockMD5String:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 445
    :cond_5
    const-string v13, "UploadCloud"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "blockSHA1String:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " or blockMD5String:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " error"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v13, 0x0

    goto :goto_2

    .line 450
    :cond_6
    const-string v13, "sha1"

    invoke-virtual {v5, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v13, "md5"

    invoke-virtual {v5, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string v13, "size"

    invoke-virtual {v5, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 454
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 464
    .end local v1           #blockMD5String:Ljava/lang/String;
    .end local v2           #blockSHA1String:Ljava/lang/String;
    .end local v4           #dataLen:I
    .end local v5           #jsonBlock:Lorg/json/JSONObject;
    .restart local v11       #sha1String:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/miui/gallery/data/DBCloud;->setSha1(Ljava/lang/String;)V

    .line 465
    const-string v13, "block_infos"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v13, "content"

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/DBCloud;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const/4 v13, 0x1

    goto :goto_2
.end method

.method private updateToLocalDB(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBCloud;)V
    .locals 4
    .parameter "values"
    .parameter "cloud"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void
.end method


# virtual methods
.method public execute(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;Z)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 31
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
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 64
    .local v27, startTime:J
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v22, resultJson:Lorg/json/JSONObject;
    const/16 v26, 0x0

    .line 66
    .local v26, shouldCopy:Z
    const-string v15, ""

    .line 68
    .local v15, createFileName:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getGroupId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    sget-object v13, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 236
    :goto_0
    return-object v13

    .line 77
    :cond_0
    :try_start_0
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->uploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    if-eqz v4, :cond_2

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->serverId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 84
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->uploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    .line 86
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->serverId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/miui/gallery/cloud/UploadCloud;->commit(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lorg/json/JSONObject;

    move-result-object v14

    .line 90
    .local v14, committedJson:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v4, v14, v0}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v13

    .line 92
    .local v13, commitResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v13, v4, :cond_1

    .line 93
    move-object/from16 v0, p4

    iget v4, v0, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    iput v4, v0, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v13           #commitResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v14           #committedJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v18

    .line 210
    .local v18, e:Ljava/io/FileNotFoundException;
    const-string v4, "UploadCloud"

    const-string v5, "file not found exception, delete this item in DB."

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    sget-object v13, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 100
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .restart local v13       #commitResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .restart local v14       #committedJson:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v4, "data"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .line 215
    .end local v13           #commitResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v14           #committedJson:Lorg/json/JSONObject;
    :goto_1
    if-eqz v26, :cond_e

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->canSaveImage(Landroid/content/Context;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 217
    sget-object v13, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 105
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p4}, Lcom/miui/gallery/cloud/UploadCloud;->create(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lorg/json/JSONObject;

    move-result-object v17

    .line 108
    .local v17, createdJson:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-static {v4, v0, v1}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v16

    .line 110
    .local v16, createResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v16

    if-eq v0, v4, :cond_3

    .line 111
    move-object/from16 v0, p4

    iget v4, v0, Lcom/miui/gallery/cloud/RequestItem;->createRetryTimes:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    iput v4, v0, Lcom/miui/gallery/cloud/RequestItem;->createRetryTimes:I

    move-object/from16 v13, v16

    .line 112
    goto/16 :goto_0

    .line 115
    :cond_3
    const-string v4, "data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 121
    const-string v4, "content"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 123
    .local v11, contentCreateJson:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, serverId:Ljava/lang/String;
    const-string v4, "status"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 125
    .local v23, serverStatus:Ljava/lang/String;
    const-string v4, "tag"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 128
    .local v24, serverTag:J
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getServerTag()J

    move-result-wide v4

    cmp-long v4, v4, v24

    if-eqz v4, :cond_4

    .line 129
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v30, values:Landroid/content/ContentValues;
    invoke-static {v11}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForCreated(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v30

    .line 131
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/cloud/UploadCloud;->updateToLocalDB(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBCloud;)V

    .line 134
    .end local v30           #values:Landroid/content/ContentValues;
    :cond_4
    const-string v4, "fileName"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 137
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 138
    const/16 v26, 0x1

    .line 141
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v9

    .line 143
    .local v9, dbCloud:Lcom/miui/gallery/data/DBCloud;
    if-eqz v9, :cond_7

    const-string v4, "custom"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "deleted"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 148
    invoke-direct/range {v4 .. v11}, Lcom/miui/gallery/cloud/UploadCloud;->checkSchema(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;Lcom/miui/gallery/data/DBCloud;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v12

    .line 150
    .local v12, checkSchemaResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v12, v4, :cond_7

    move-object v13, v12

    .line 152
    goto/16 :goto_0

    .line 156
    .end local v12           #checkSchemaResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_7
    const-string v4, "fileExists"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "fileExists"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 166
    :cond_8
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4, v10}, Lcom/miui/gallery/cloud/UploadCloud;->KSSUpload(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move-result-object v29

    .line 170
    .local v29, uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/cloud/CheckResult;->checkKSSResult(Lcn/kuaipan/kss/KssDef$KssAPIResult;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v21

    .line 171
    .local v21, kssResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_9

    .line 172
    move-object/from16 v0, p4

    iget v4, v0, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    iput v4, v0, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    move-object/from16 v13, v21

    .line 173
    goto/16 :goto_0

    .line 178
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mUploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->uploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    .line 179
    move-object/from16 v0, p4

    iput-object v10, v0, Lcom/miui/gallery/cloud/RequestItem;->serverId:Ljava/lang/String;

    .line 185
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    .line 186
    const-string v4, "UploadCloud"

    const-string v5, "file not exists, delete this item in DB."

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->deleteDirty(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    sget-object v13, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 192
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/miui/gallery/cloud/UploadCloud;->commit(Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItem;)Lorg/json/JSONObject;

    move-result-object v14

    .line 195
    .restart local v14       #committedJson:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v4, v14, v0}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v13

    .line 197
    .restart local v13       #commitResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v13, v4, :cond_b

    .line 198
    move-object/from16 v0, p4

    iget v4, v0, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    iput v4, v0, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I

    goto/16 :goto_0

    .line 205
    :cond_b
    const-string v4, "data"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v22

    goto/16 :goto_1

    .line 219
    .end local v9           #dbCloud:Lcom/miui/gallery/data/DBCloud;
    .end local v10           #serverId:Ljava/lang/String;
    .end local v11           #contentCreateJson:Lorg/json/JSONObject;
    .end local v13           #commitResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v14           #committedJson:Lorg/json/JSONObject;
    .end local v16           #createResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v17           #createdJson:Lorg/json/JSONObject;
    .end local v21           #kssResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .end local v23           #serverStatus:Ljava/lang/String;
    .end local v24           #serverTag:J
    .end local v29           #uploadState:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :cond_c
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getGroupId()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v20, v0

    .line 221
    .local v20, groupId:I
    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v19

    .line 222
    .local v19, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/UploadCloud;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v19, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH_TEMP:Ljava/lang/String;

    .end local v19           #filePath:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v19

    invoke-static {v4, v5, v0, v15}, Lcom/miui/gallery/cloud/CloudUtils;->copyImage(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v20           #groupId:I
    :goto_2
    sget-object v13, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto/16 :goto_0

    .line 226
    :cond_e
    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForUploadDeletePurged(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v30

    .line 227
    .restart local v30       #values:Landroid/content/ContentValues;
    const-string v4, "microthumbfile"

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, "thumbnailFile"

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "downloadFile"

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v5}, Lcom/miui/gallery/data/DBCloud;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/cloud/UploadCloud;->updateToLocalDB(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBCloud;)V

    goto :goto_2
.end method
