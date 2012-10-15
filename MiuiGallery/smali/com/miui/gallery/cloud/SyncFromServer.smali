.class public Lcom/miui/gallery/cloud/SyncFromServer;
.super Ljava/lang/Object;
.source "SyncFromServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFilteredTagParam(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "syncTag"
    .parameter "url"
    .parameter "security"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 269
    .local p5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static/range {p0 .. p2}, Lcom/miui/gallery/cloud/SyncFromServer;->getLargerTags(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v11

    .line 270
    .local v11, tagSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, finalTags:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v12, tmpTags:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 272
    .local v9, size:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 274
    .local v10, tag:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_1

    .line 275
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v9, v9, 0x1

    .line 280
    rem-int/lit8 v13, v9, 0xa

    if-eqz v13, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v9, v13, :cond_0

    .line 284
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "filterTag"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object/from16 v0, p4

    invoke-static {v0, v13}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v14, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v3, filterParam:Lorg/apache/http/NameValuePair;
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v13, Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;->GET:Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-static {v13, v0, v1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getSignature(Lcom/miui/gallery/cloud/CloudUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, signature:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "signature"

    invoke-direct {v8, v13, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v8, signatureParam:Lorg/apache/http/NameValuePair;
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 295
    .local v6, length:I
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    const/16 v13, 0x400

    if-lt v6, v13, :cond_5

    .line 311
    .end local v3           #filterParam:Lorg/apache/http/NameValuePair;
    .end local v6           #length:I
    .end local v7           #signature:Ljava/lang/String;
    .end local v8           #signatureParam:Lorg/apache/http/NameValuePair;
    .end local v10           #tag:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 284
    .restart local v10       #tag:Ljava/lang/String;
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 301
    .restart local v3       #filterParam:Lorg/apache/http/NameValuePair;
    .restart local v6       #length:I
    .restart local v7       #signature:Ljava/lang/String;
    .restart local v8       #signatureParam:Lorg/apache/http/NameValuePair;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_6

    .line 302
    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_6
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 305
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0
.end method

.method private static getItemsList(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;JI)Lorg/json/JSONObject;
    .locals 13
    .parameter "context"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncTag"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 320
    const-string v1, "http://galleryapi.micloud.xiaomi.net/mic/v1/gallery/user/%s/full"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, allUrl:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v6, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "syncTag"

    iget-object v3, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "limit"

    iget-object v3, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    move/from16 v0, p5

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v5, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    move-object v1, p0

    move-wide/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/cloud/SyncFromServer;->getFilteredTagParam(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v12

    .line 333
    .local v12, tags:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "filterTag"

    iget-object v3, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v3, v12}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v5 .. v10}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/ArrayList;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v11

    .line 346
    .local v11, allJson:Lorg/json/JSONObject;
    return-object v11
.end method

.method private static getLargerTags(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter "syncTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 217
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v7, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 220
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "serverTag"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverTag > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "serverTag ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    if-eqz v6, :cond_1

    .line 229
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 236
    :cond_1
    if-eqz v6, :cond_2

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v8

    .line 240
    .end local v7           #tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-object v7

    .line 236
    .restart local v7       #tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v6, :cond_3

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static getLargestTagInLocalDB(Landroid/content/Context;)J
    .locals 7
    .parameter "context"

    .prologue
    .line 244
    const/4 v6, 0x0

    .line 246
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " Max( serverTag ) "

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 258
    if-eqz v6, :cond_0

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    .line 255
    :cond_1
    const-wide/16 v0, 0x1

    .line 258
    if-eqz v6, :cond_0

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static handleCustom(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "context"
    .parameter "cloud"
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBCloud;->getServerTag()J

    move-result-wide v1

    const-string v3, "tag"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {p2}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForSync(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 188
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverId = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    const-string v1, "SyncFromServer"

    const-string v2, "we get a new item from server"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->addItemToBothList(Lcom/miui/gallery/data/DBCloud;)V

    goto :goto_0
.end method

.method private static handleDelete(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "context"
    .parameter "cloud"
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/DeleteCloud;->updateForDeleteOrPurgedOnLocal(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V

    .line 205
    return-void
.end method

.method private static handleItem(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "context"
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v5, "type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, type:Ljava/lang/String;
    const-string v5, "group"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const-string v5, "SyncFromServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type is group, do nothing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v5, "status"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, status:Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, serverId:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v0

    .line 148
    .local v0, cloud:Lcom/miui/gallery/data/DBCloud;
    if-nez v0, :cond_2

    .line 154
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getContentValuesForSync(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v4

    .line 155
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 158
    invoke-static {p0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v0

    .line 159
    const-string v5, "custom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->addItemToBothList(Lcom/miui/gallery/data/DBCloud;)V

    goto :goto_0

    .line 165
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_2
    const-string v5, "custom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    invoke-static {p0, v0, p1}, Lcom/miui/gallery/cloud/SyncFromServer;->handleCustom(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 167
    :cond_3
    const-string v5, "deleted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    invoke-static {p0, v0, p1}, Lcom/miui/gallery/cloud/SyncFromServer;->handleDelete(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 169
    :cond_4
    const-string v5, "purged"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    invoke-static {p0, v0, p1}, Lcom/miui/gallery/cloud/SyncFromServer;->handlePurged(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 172
    :cond_5
    const-string v5, "SyncFromServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status unrecognized, schema:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static handlePurged(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "context"
    .parameter "cloud"
    .parameter "schemaJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/DeleteCloud;->updateForDeleteOrPurgedOnLocal(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V

    .line 214
    return-void
.end method

.method public static syncFromServer(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/SyncStateManager;Z)V
    .locals 26
    .parameter "context"
    .parameter "account"
    .parameter "extToken"
    .parameter "syncStateManager"
    .parameter "isBackground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v2, "SyncFromServer"

    const-string v3, "sync from server start"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 54
    .local v20, startTime:J
    :cond_0
    invoke-static/range {p0 .. p1}, Lmiui/provider/GalleryCloudSyncTagUtils;->getSyncTag(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v5

    .line 56
    .local v5, currentSyncTag:J
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/cloud/SyncStateManager;->checkState(IZ)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 132
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v16, 0x0

    .line 61
    .local v16, retryTimes:I
    const/4 v15, 0x0

    .line 62
    .local v15, resultJson:Lorg/json/JSONObject;
    sget-object v10, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 65
    .local v10, getAllResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :goto_1
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 67
    const/16 v7, 0x64

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/cloud/SyncFromServer;->getItemsList(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;JI)Lorg/json/JSONObject;

    move-result-object v15

    .line 70
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15, v2}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v10

    .line 72
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v10, v2, :cond_3

    .line 81
    :cond_2
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v10, v2, :cond_4

    .line 83
    const-string v2, "SyncFromServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync from server error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_2
    const-string v2, "SyncFromServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync from server finish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v20

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_3
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->RetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-ne v10, v2, :cond_2

    .line 75
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 87
    :cond_4
    const-string v2, "data"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 88
    .local v9, dataJson:Lorg/json/JSONObject;
    const-string v2, "content"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 89
    .local v8, contentArray:Lorg/json/JSONArray;
    const-string v2, "lastPage"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 90
    .local v12, lastPage:Z
    const-string v2, "syncTag"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 93
    .local v18, serverTag:J
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 94
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 95
    .local v17, schemaJson:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/SyncFromServer;->handleItem(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 93
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 98
    .end local v17           #schemaJson:Lorg/json/JSONObject;
    :cond_5
    const-wide/16 v22, 0x0

    .line 99
    .local v22, toUpdateSyncTag:J
    if-eqz v12, :cond_9

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/cloud/SyncFromServer;->getLargestTagInLocalDB(Landroid/content/Context;)J

    move-result-wide v13

    .line 105
    .local v13, localTag:J
    const-wide/16 v2, 0x1

    cmp-long v2, v18, v2

    if-gtz v2, :cond_6

    const-wide/16 v2, 0x1

    cmp-long v2, v13, v2

    if-lez v2, :cond_7

    .line 107
    :cond_6
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    .line 114
    .end local v13           #localTag:J
    :cond_7
    :goto_4
    cmp-long v2, v22, v5

    if-lez v2, :cond_8

    .line 115
    const-string v2, "SyncFromServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update the syncTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lmiui/provider/GalleryCloudSyncTagUtils;->setSyncTag(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/Long;)V

    .line 118
    :cond_8
    if-eqz v12, :cond_0

    goto/16 :goto_2

    .line 111
    :cond_9
    move-wide/from16 v22, v18

    goto :goto_4
.end method
