.class public Lcom/android/mms/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"


# instance fields
.field private final mData:[B

.field private final mDataUri:Landroid/net/Uri;

.field private mDecryptedData:[B

.field private final mDrmObject:Landroid/drm/mobile1/DrmRawContent;

.field private mRight:Landroid/drm/mobile1/DrmRights;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    .locals 3
    .parameter "drmContentType"
    .parameter "uri"
    .parameter "drmData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Content-Type or data may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    iput-object p2, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 74
    iput-object p3, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    .line 76
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .local v0, drmDataStream:Ljava/io/ByteArrayInputStream;
    new-instance v1, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isRightsInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    invoke-virtual {p0, p3}, Lcom/android/mms/drm/DrmWrapper;->installRights([B)V

    .line 86
    :cond_2
    return-void
.end method

.method private getPermission()I
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    const/4 v1, 0x1

    .line 100
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public consumeRights()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptedData()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 110
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    iget-object v7, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    invoke-virtual {v6, v7}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v3

    .line 114
    .local v3, decryptedDataStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x100

    new-array v1, v6, [B

    .line 117
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_0

    .line 118
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v5           #len:I
    :catchall_0
    move-exception v6

    .line 123
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_1
    throw v6

    .line 120
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v5       #len:I
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 130
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v3           #decryptedDataStream:Ljava/io/InputStream;
    .end local v5           #len:I
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v6, :cond_2

    .line 131
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v6, v6

    new-array v2, v6, [B

    .line 132
    .local v2, decryptedData:[B
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v7, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v7, v7

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .end local v2           #decryptedData:[B
    :goto_3
    return-object v2

    .line 124
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v3       #decryptedDataStream:Ljava/io/InputStream;
    .restart local v5       #len:I
    :catch_0
    move-exception v4

    .line 125
    .local v4, e:Ljava/io/IOException;
    const-string v6, "DrmWrapper"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 124
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buffer:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #len:I
    :catch_1
    move-exception v4

    .line 125
    .restart local v4       #e:Ljava/io/IOException;
    const-string v7, "DrmWrapper"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 135
    .end local v3           #decryptedDataStream:Ljava/io/InputStream;
    .end local v4           #e:Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public getOriginalData()[B
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public installRights([B)V
    .locals 4
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string v2, "Right data may not be null."

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 169
    .local v0, rightDataStream:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v1

    array-length v2, p1

    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v1, v0, v2, v3}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    .line 172
    return-void
.end method

.method public isAllowedToForward()Z
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRightsInstalled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 182
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1, v2}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    .line 187
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
