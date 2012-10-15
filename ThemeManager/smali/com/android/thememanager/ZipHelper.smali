.class public Lcom/android/thememanager/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V
    .locals 8
    .parameter "zipFile"
    .parameter "targetBase"
    .parameter
    .parameter "copyThirdAppRes"
    .parameter "progressDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 124
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v1, 0x0

    .line 125
    .local v1, entry:Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 126
    .local v3, path:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    if-eqz p4, :cond_1

    .line 128
    invoke-virtual {p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p4, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 130
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 131
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/android/thememanager/ThemeHelper;->isDisablePkgName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    const-string v4, "ThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 160
    :cond_2
    return-void

    .line 140
    .restart local v0       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #path:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .line 141
    .local v2, index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 142
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 147
    :cond_4
    if-eqz p3, :cond_0

    if-gez v2, :cond_0

    .line 148
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 149
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 152
    :cond_5
    if-gez v2, :cond_0

    const-string v4, "preview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "description.xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 141
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 148
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public static zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 13
    .parameter "out"
    .parameter "src"
    .parameter "base"

    .prologue
    .line 66
    const/4 v9, 0x1

    .line 67
    .local v9, result:Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 70
    .local v6, files:[Ljava/io/File;
    if-eqz v6, :cond_4

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 72
    invoke-static {p2}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v10, v6

    if-ge v7, v10, :cond_4

    .line 75
    aget-object v10, v6, v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v6, v7

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/android/thememanager/ZipHelper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    .line 74
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 80
    .end local v6           #files:[Ljava/io/File;
    .end local v7           #i:I
    :cond_2
    const/16 v10, 0x1000

    :try_start_0
    new-array v0, v10, [B

    .line 81
    .local v0, buffer:[B
    const/4 v2, -0x1

    .line 83
    .local v2, count:I
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 84
    .local v3, crc32:Ljava/util/zip/CRC32;
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    invoke-direct {v10, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v10, v3}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 86
    .local v1, ch:Ljava/util/zip/CheckedInputStream;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v2

    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    .line 88
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 90
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, entry:Ljava/util/zip/ZipEntry;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 93
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 94
    invoke-virtual {p0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 96
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2000

    invoke-direct {v8, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 97
    .local v8, in:Ljava/io/BufferedInputStream;
    :goto_2
    invoke-virtual {v8, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_5

    .line 98
    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 101
    .end local v0           #buffer:[B
    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    .end local v2           #count:I
    .end local v3           #crc32:Ljava/util/zip/CRC32;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #in:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v4

    .line 102
    .local v4, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 105
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    return v9

    .line 100
    .restart local v0       #buffer:[B
    .restart local v1       #ch:Ljava/util/zip/CheckedInputStream;
    .restart local v2       #count:I
    .restart local v3       #crc32:Ljava/util/zip/CRC32;
    .restart local v5       #entry:Ljava/util/zip/ZipEntry;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    :cond_5
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method
