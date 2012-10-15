.class public Lcom/miui/gallery/cloud/FindBrokens;
.super Ljava/lang/Object;
.source "FindBrokens.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canStart()Z
    .locals 8

    .prologue
    .line 53
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getLastFindBrokensTime()J

    move-result-wide v2

    .line 54
    .local v2, lastFind:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    .local v0, current:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v4, v0, v2

    const-wide/32 v6, 0x240c8400

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 58
    :cond_0
    const/4 v4, 0x1

    .line 61
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static findBrokens(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V
    .locals 21
    .parameter "context"
    .parameter "account"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/MiCloudServerException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static/range {p0 .. p2}, Lcom/miui/gallery/cloud/FindBrokens;->getBrokensList(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;

    move-result-object v11

    .line 71
    .local v11, brokensListJson:Lorg/json/JSONObject;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v3}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v16

    .line 74
    .local v16, getBrokensResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 75
    const-string v3, "FindBrokens"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrokens error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string v3, "data"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 82
    .local v10, brokensArray:Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_0

    .line 87
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 88
    .local v9, brokenJson:Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 89
    .local v19, serverId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getItemByServerID(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v12

    .line 90
    .local v12, dbCloud:Lcom/miui/gallery/data/DBCloud;
    if-nez v12, :cond_3

    .line 91
    const-string v3, "FindBrokens"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record not exist, brokenJson:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 94
    :cond_3
    new-instance v6, Lcom/miui/gallery/cloud/RequestItem;

    invoke-direct {v6, v12}, Lcom/miui/gallery/cloud/RequestItem;-><init>(Lcom/miui/gallery/data/DBCloud;)V

    .line 96
    .local v6, requestItem:Lcom/miui/gallery/cloud/RequestItem;
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBCloud;->getServerStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBCloud;->getServerStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "temp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    :cond_4
    const-string v3, "FindBrokens"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broken record exist, reupload it, brokenJson:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBCloud;->getDownloadFile()Ljava/lang/String;

    move-result-object v15

    .line 101
    .local v15, filePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    const-string v3, "FindBrokens"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error, can\'t save to cloud."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_5
    const/4 v7, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "content"

    invoke-virtual {v12}, Lcom/miui/gallery/data/DBCloud;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lcom/miui/gallery/cloud/DeleteCloud;->deleteOnServer(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;Lcom/miui/gallery/cloud/RequestItem;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    .line 112
    .local v14, deletedJson:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/miui/gallery/cloud/CheckResult;->checkXMResultCode(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/gallery/cloud/RequestItem;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v13

    .line 114
    .local v13, deleteResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    sget-object v3, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq v13, v3, :cond_6

    .line 115
    const-string v3, "FindBrokens"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete dirty error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 118
    :cond_6
    const-string v3, "FindBrokens"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dirty record deleted, deletedJson:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v3, "data"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3}, Lcom/miui/gallery/cloud/DeleteCloud;->updateForDeleteOrPurgedOnLocalNotDeleteFile(Landroid/content/Context;Lcom/miui/gallery/data/DBCloud;Lorg/json/JSONObject;)V

    .line 123
    invoke-static {v15}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudGroupIdByFilePath(Ljava/lang/String;)I

    move-result v17

    .line 124
    .local v17, groupId:I
    invoke-static {v15}, Lcom/miui/gallery/cloud/CloudUtils;->getServerTypeByFilePath(Ljava/lang/String;)I

    move-result v20

    .line 125
    .local v20, serverType:I
    const/4 v3, -0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_7

    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_8

    .line 127
    :cond_7
    const-string v3, "FindBrokens"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groupId or serverType error, can\'t save to cloud."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 132
    :cond_8
    invoke-virtual {v12}, Lcom/miui/gallery/data/DBCloud;->getDownloadFile()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v0, v3, v1, v2, v4}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_1
.end method

.method private static getBrokensList(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lorg/json/JSONObject;
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lmiui/net/exception/MiCloudServerException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://galleryapi.micloud.xiaomi.net/mic/v1/gallery/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/brokens"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, brokensUrl:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    iget-object v5, p2, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/miui/gallery/cloud/CloudUtils;->encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/cloud/CloudUtils;->getFromXiaomi(Ljava/lang/String;Ljava/util/ArrayList;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;IZ)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static tryFindBrokens(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "extToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/MiCloudServerException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/miui/gallery/cloud/FindBrokens;->canStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/FindBrokens;->findBrokens(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, current:J
    invoke-static {v0, v1}, Lcom/miui/gallery/settings/PreferenceHelper;->setLastFindBrokensTime(J)V

    .line 50
    .end local v0           #current:J
    :cond_0
    return-void
.end method
