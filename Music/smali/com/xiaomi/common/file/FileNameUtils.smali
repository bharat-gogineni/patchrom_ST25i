.class public final Lcom/xiaomi/common/file/FileNameUtils;
.super Ljava/lang/Object;
.source "FileNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/file/FileNameUtils$WebAddressParserException;,
        Lcom/xiaomi/common/file/FileNameUtils$WebAddress;,
        Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;
    }
.end annotation


# static fields
.field private static final FILE_NAME_FILTER:Ljava/util/regex/Pattern; = null

.field private static final LOG_TAG:Ljava/lang/String; = "common/FileNameUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "[:/|\t\"\\?\\*\\<\\>\\\\]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/file/FileNameUtils;->FILE_NAME_FILTER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filepath"

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, ext:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, s:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 29
    .local v2, i:I
    if-lez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 30
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    return-object v0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/xiaomi/common/file/FileNameUtils;->guessFileName(Ljava/lang/String;)Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;

    move-result-object v1

    .line 43
    .local v1, filename:Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;->Filename:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 53
    :cond_1
    :goto_0
    return-object v0

    .line 46
    :cond_2
    iget-object v3, v1, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;->Filename:Ljava/lang/String;

    .line 47
    .local v3, s:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 49
    .local v2, i:I
    const/4 v0, 0x0

    .line 50
    .local v0, ext:Ljava/lang/String;
    if-lez v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 51
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static guessFileName(Ljava/lang/String;)Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;
    .locals 18
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/common/file/FileNameUtils$WebAddressParserException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "url"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    const-string v1, "common/FileNameUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v16, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;

    invoke-direct/range {v16 .. v16}, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;-><init>()V

    .line 82
    .local v16, ret:Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;
    :try_start_0
    new-instance v15, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>([B)V

    .line 84
    .local v15, newUrl:Ljava/lang/String;
    new-instance v17, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;-><init>(Ljava/lang/String;)V

    .line 85
    .local v17, w:Lcom/xiaomi/common/file/FileNameUtils$WebAddress;
    const/4 v8, 0x0

    .line 86
    .local v8, frag:Ljava/lang/String;
    const/4 v7, 0x0

    .line 87
    .local v7, query:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    .line 89
    .local v6, path:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 91
    const/16 v1, 0x23

    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 92
    .local v14, idx:I
    const/4 v1, -0x1

    if-eq v14, v1, :cond_1

    .line 93
    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v6, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 96
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 97
    const/4 v1, -0x1

    if-eq v14, v1, :cond_2

    .line 98
    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v6, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 102
    .end local v14           #idx:I
    :cond_2
    new-instance v1, Ljava/net/URI;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v5, v0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;->Uri:Ljava/net/URI;

    .line 105
    move-object v12, v6

    .line 106
    .local v12, filename:Ljava/lang/String;
    const-string v11, ""

    .line 107
    .local v11, fileext:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 108
    .local v13, filename_idx:I
    const/4 v1, -0x1

    if-eq v1, v13, :cond_3

    .line 109
    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 111
    :cond_3
    const/16 v1, 0x2e

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 112
    const/4 v1, -0x1

    if-eq v1, v13, :cond_4

    .line 113
    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 115
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, contentDisposition:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;->Mimetype:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;->Mimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/xiaomi/common/file/FileNameUtils$UriAndFileName;->Filename:Ljava/lang/String;

    .line 126
    return-object v16

    .line 117
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #query:Ljava/lang/String;
    .end local v8           #frag:Ljava/lang/String;
    .end local v9           #contentDisposition:Ljava/lang/String;
    .end local v11           #fileext:Ljava/lang/String;
    .end local v12           #filename:Ljava/lang/String;
    .end local v13           #filename_idx:I
    .end local v15           #newUrl:Ljava/lang/String;
    .end local v17           #w:Lcom/xiaomi/common/file/FileNameUtils$WebAddress;
    :catch_0
    move-exception v10

    .line 118
    .local v10, e:Lorg/apache/http/ParseException;
    const-string v1, "common/FileNameUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse url for download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    new-instance v1, Lcom/xiaomi/common/file/FileNameUtils$WebAddressParserException;

    invoke-virtual {v10}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/xiaomi/common/file/FileNameUtils$WebAddressParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 120
    .end local v10           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v10

    .line 121
    .local v10, e:Ljava/net/URISyntaxException;
    const-string v1, "common/FileNameUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse url for download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v1, Lcom/xiaomi/common/file/FileNameUtils$WebAddressParserException;

    invoke-virtual {v10}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/xiaomi/common/file/FileNameUtils$WebAddressParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static regulateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"
    .parameter "replace"

    .prologue
    .line 61
    sget-object v1, Lcom/xiaomi/common/file/FileNameUtils;->FILE_NAME_FILTER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 62
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
