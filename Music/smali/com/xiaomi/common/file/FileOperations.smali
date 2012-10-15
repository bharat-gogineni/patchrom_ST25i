.class public Lcom/xiaomi/common/file/FileOperations;
.super Ljava/lang/Object;
.source "FileOperations.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/xiaomi/common/file/FileOperations;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 9
    .parameter "inputStream"
    .parameter "outputStream"

    .prologue
    const/4 v4, 0x0

    .line 18
    const/16 v0, 0x4000

    .line 19
    .local v0, BUFFER_SIZE:I
    const/16 v5, 0x4000

    new-array v1, v5, [B

    .line 20
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 22
    .local v2, byteread:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 23
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    .local v3, e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v7, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 25
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 37
    .local v6, outputStream:Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 38
    .local v9, ret:Z
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v10, v9

    .line 67
    .end local v9           #ret:Z
    .local v10, ret:I
    :goto_0
    return v10

    .line 42
    .end local v10           #ret:I
    .restart local v9       #ret:Z
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, newFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 44
    .local v8, parent:Ljava/io/File;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 45
    :cond_1
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, oldfile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 47
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .end local v2           #inputStream:Ljava/io/InputStream;
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 49
    .end local v6           #outputStream:Ljava/io/FileOutputStream;
    .local v7, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v3, v7}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 50
    const/4 v9, 0x1

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v6       #outputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 57
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #oldfile:Ljava/io/File;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :cond_2
    if-eqz v2, :cond_3

    .line 58
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 60
    :cond_3
    if-eqz v6, :cond_4

    .line 61
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v4           #newFile:Ljava/io/File;
    .end local v8           #parent:Ljava/io/File;
    :cond_4
    :goto_1
    move v10, v9

    .line 67
    .restart local v10       #ret:I
    goto :goto_0

    .line 63
    .end local v10           #ret:I
    .restart local v4       #newFile:Ljava/io/File;
    .restart local v8       #parent:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v11

    sget-object v12, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v13, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 53
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #newFile:Ljava/io/File;
    .end local v8           #parent:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v11

    sget-object v12, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v13, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    if-eqz v2, :cond_5

    .line 58
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 60
    :cond_5
    if-eqz v6, :cond_4

    .line 61
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 63
    :catch_2
    move-exception v1

    .line 64
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v11

    sget-object v12, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v13, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 56
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 57
    :goto_3
    if-eqz v2, :cond_6

    .line 58
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 60
    :cond_6
    if-eqz v6, :cond_7

    .line 61
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 65
    :cond_7
    :goto_4
    throw v11

    .line 63
    :catch_3
    move-exception v1

    .line 64
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/common/log/Logger;->getLogger()Lcom/xiaomi/common/log/Logger$ILog;

    move-result-object v12

    sget-object v13, Lcom/xiaomi/common/log/Logger$LogLevel;->LOG_ERROR:Lcom/xiaomi/common/log/Logger$LogLevel;

    sget-object v14, Lcom/xiaomi/common/file/FileOperations;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lcom/xiaomi/common/log/Logger$ILog;->Log(Lcom/xiaomi/common/log/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 56
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v4       #newFile:Ljava/io/File;
    .restart local v5       #oldfile:Ljava/io/File;
    .restart local v8       #parent:Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v6           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v6       #outputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 53
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v6           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v6       #outputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getSortedFileNameArr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "dirPath"

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, names:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-object v1
.end method
