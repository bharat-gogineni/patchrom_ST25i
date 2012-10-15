.class public Lcom/duokan/airkan/common/MdnsExtraData;
.super Ljava/lang/Object;
.source "MdnsExtraData.java"


# instance fields
.field private mPhotoSendPort:I

.field private mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

.field private mRemoteScreenHeight:I

.field private mRemoteScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0xecc1

    iput v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPhotoSendPort:I

    .line 6
    const/16 v0, 0x500

    iput v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenWidth:I

    .line 7
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenHeight:I

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    return-void
.end method


# virtual methods
.method public getPhotoSendPort()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPhotoSendPort:I

    return v0
.end method

.method public getRemoteScreenHeight()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenHeight:I

    return v0
.end method

.method public getRemoteScreenWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenWidth:I

    return v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 12
    .parameter "extraData"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 11
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 12
    :cond_0
    const-string v7, "MdnsExtraData"

    const-string v9, "no extra data"

    invoke-static {v7, v9}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 87
    :goto_0
    return v7

    .line 15
    :cond_1
    const/4 v2, 0x0

    .line 17
    .local v2, pos:I
    const/4 v3, 0x0

    .line 19
    .local v3, segText:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 20
    .local v1, len:I
    add-int v9, v1, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_3

    .line 21
    const-string v8, "MdnsExtraData"

    const-string v9, "invalid extra data"

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_3
    add-int/lit8 v9, v2, 0x1

    add-int v10, v2, v1

    add-int/lit8 v10, v10, 0x1

    :try_start_0
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 31
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, values:[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    .line 33
    :cond_4
    const-string v8, "MdnsExtraData"

    const-string v9, "invalid segment"

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    .end local v4           #values:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #values:[Ljava/lang/String;
    :cond_5
    const-string v9, "photoport"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 38
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPhotoSendPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_1
    add-int v9, v2, v1

    add-int/lit8 v2, v9, 0x1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v2, v9, :cond_2

    move v7, v8

    .line 87
    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v9, "scrnw"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 45
    const/4 v9, 0x1

    :try_start_2
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenWidth:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 46
    :catch_2
    move-exception v0

    .line 47
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const-string v9, "scrnh"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 52
    const/4 v9, 0x1

    :try_start_3
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenHeight:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 53
    :catch_3
    move-exception v0

    .line 54
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_8
    const-string v9, "protver"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 59
    :try_start_4
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    if-nez v9, :cond_9

    .line 60
    new-instance v9, Lcom/duokan/airkan/common/Version;

    invoke-direct {v9}, Lcom/duokan/airkan/common/Version;-><init>()V

    iput-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    .line 62
    :cond_9
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 63
    .local v5, ver:I
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    invoke-virtual {v9, v5}, Lcom/duokan/airkan/common/Version;->setVersion(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 64
    .end local v5           #ver:I
    :catch_4
    move-exception v0

    .line 65
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_a
    const-string v9, "prottext"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 70
    :try_start_5
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    if-nez v9, :cond_b

    .line 71
    const-string v8, "MdnsExtraData"

    const-string v9, "invalid order"

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 76
    :catch_5
    move-exception v0

    .line 77
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_b
    const/4 v9, 0x1

    :try_start_6
    aget-object v6, v4, v9

    .line 75
    .local v6, vertext:Ljava/lang/String;
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    invoke-virtual {v9, v6}, Lcom/duokan/airkan/common/Version;->setText(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 81
    .end local v6           #vertext:Ljava/lang/String;
    :cond_c
    const-string v9, "MdnsExtraData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not known field:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
