.class public abstract Lentagged/audioformats/generic/AudioFileWriter;
.super Ljava/lang/Object;
.source "AudioFileWriter.java"


# instance fields
.field private modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Lentagged/audioformats/AudioFile;)V
    .locals 16
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->canWrite()Z

    move-result v11

    if-nez v11, :cond_0

    .line 58
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t write to file \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x96

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1

    .line 62
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Less than 150 byte \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_1
    const/4 v3, 0x0

    .line 66
    .local v3, raf:Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 67
    .local v5, rafTemp:Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .line 71
    .local v9, tempF:Ljava/io/File;
    const/4 v8, 0x0

    .line 74
    .local v8, revert:Z
    :try_start_2
    const-string v11, "entagged"

    const-string v12, ".tmp"

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 75
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v6, v9, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 76
    .end local v5           #rafTemp:Ljava/io/RandomAccessFile;
    .local v6, rafTemp:Ljava/io/RandomAccessFile;
    :try_start_3
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 77
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    const-wide/16 v11, 0x0

    :try_start_4
    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    const-wide/16 v11, 0x0

    invoke-virtual {v6, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 81
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v11, :cond_2

    .line 82
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v12}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V

    .line 84
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lentagged/audioformats/generic/AudioFileWriter;->deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v11, :cond_3

    .line 86
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v9}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 98
    :cond_3
    move-object/from16 v7, p1

    .line 100
    .local v7, result:Ljava/io/File;
    if-eqz v4, :cond_4

    .line 101
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 102
    :cond_4
    if-eqz v6, :cond_5

    .line 103
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 105
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_b

    if-nez v8, :cond_b

    .line 106
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->delete()Z

    .line 107
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 108
    move-object v7, v9

    .line 118
    :goto_0
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v11, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v11, v7}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 122
    :cond_6
    monitor-exit p0

    return-void

    .line 88
    .end local v7           #result:Ljava/io/File;
    :catch_0
    move-exception v10

    .line 89
    .local v10, veto:Lentagged/audioformats/exceptions/ModifyVetoException;
    :try_start_8
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    invoke-direct {v11, v10}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 92
    .end local v10           #veto:Lentagged/audioformats/exceptions/ModifyVetoException;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v5       #rafTemp:Ljava/io/RandomAccessFile;
    move-object v3, v4

    .line 93
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :goto_1
    const/4 v8, 0x1

    .line 94
    :try_start_9
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 98
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_2
    move-object/from16 v7, p1

    .line 100
    .restart local v7       #result:Ljava/io/File;
    if-eqz v3, :cond_7

    .line 101
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 102
    :cond_7
    if-eqz v5, :cond_8

    .line 103
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 105
    :cond_8
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_a

    if-nez v8, :cond_a

    .line 106
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->delete()Z

    .line 107
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 108
    move-object v7, v9

    .line 118
    :goto_3
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v12, :cond_9

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v12, v7}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    .line 98
    :cond_9
    throw v11

    .line 112
    :catch_2
    move-exception v2

    .line 113
    .local v2, ex:Ljava/lang/Exception;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AudioFileWriter:113:\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" or \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 110
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_a
    :try_start_c
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_3

    .line 112
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #rafTemp:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    .line 113
    .restart local v2       #ex:Ljava/lang/Exception;
    :try_start_d
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AudioFileWriter:113:\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" or \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 110
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_b
    :try_start_e
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    .line 98
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v7           #result:Ljava/io/File;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v5       #rafTemp:Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #rafTemp:Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v11

    move-object v5, v6

    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v5       #rafTemp:Ljava/io/RandomAccessFile;
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 92
    :catch_4
    move-exception v1

    goto/16 :goto_1

    .end local v5           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v6       #rafTemp:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v5       #rafTemp:Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method

.method public declared-synchronized delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 138
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    invoke-virtual {p0, p1, p2}, Lentagged/audioformats/generic/AudioFileWriter;->deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized setAudioFileModificationListener(Lentagged/audioformats/generic/AudioFileModificationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(Lentagged/audioformats/AudioFile;)V
    .locals 16
    .parameter "af"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getTag()Lentagged/audioformats/Tag;

    move-result-object v11

    invoke-interface {v11}, Lentagged/audioformats/Tag;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 179
    invoke-virtual/range {p0 .. p1}, Lentagged/audioformats/generic/AudioFileWriter;->delete(Lentagged/audioformats/AudioFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->canWrite()Z

    move-result v11

    if-nez v11, :cond_2

    .line 184
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t write to file \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 187
    :cond_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x96

    cmp-long v11, v11, v13

    if-gtz v11, :cond_3

    .line 188
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Less than 150 byte \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    :cond_3
    const/4 v4, 0x0

    .line 192
    .local v4, raf:Ljava/io/RandomAccessFile;
    const/4 v6, 0x0

    .line 193
    .local v6, rafTemp:Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .line 195
    .local v9, tempF:Ljava/io/File;
    const/4 v1, 0x0

    .line 198
    .local v1, cannotWrite:Z
    :try_start_3
    const-string v11, "entagged"

    const-string v12, ".tmp"

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-static {v11, v12, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 199
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v7, v9, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 200
    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .local v7, rafTemp:Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 201
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .local v5, raf:Ljava/io/RandomAccessFile;
    const-wide/16 v11, 0x0

    :try_start_5
    invoke-virtual {v5, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 202
    const-wide/16 v11, 0x0

    invoke-virtual {v7, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 204
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v11, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v12}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V

    .line 207
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getTag()Lentagged/audioformats/Tag;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5, v7}, Lentagged/audioformats/generic/AudioFileWriter;->writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v11, :cond_5

    .line 209
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v9}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 219
    :cond_5
    move-object/from16 v8, p1

    .line 221
    .local v8, result:Ljava/io/File;
    if-eqz v5, :cond_6

    .line 222
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 223
    :cond_6
    if-eqz v7, :cond_7

    .line 224
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 226
    :cond_7
    if-nez v1, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_c

    .line 227
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->delete()Z

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 229
    move-object v8, v9

    .line 239
    :goto_1
    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v11, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v11, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v11, v8}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 211
    .end local v8           #result:Ljava/io/File;
    :catch_0
    move-exception v10

    .line 212
    .local v10, veto:Lentagged/audioformats/exceptions/ModifyVetoException;
    :try_start_9
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    invoke-direct {v11, v10}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 214
    .end local v10           #veto:Lentagged/audioformats/exceptions/ModifyVetoException;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v6       #rafTemp:Ljava/io/RandomAccessFile;
    move-object v4, v5

    .line 215
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :goto_2
    const/4 v1, 0x1

    .line 216
    :try_start_a
    new-instance v11, Lentagged/audioformats/exceptions/CannotWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 219
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_3
    move-object/from16 v8, p1

    .line 221
    .restart local v8       #result:Ljava/io/File;
    if-eqz v4, :cond_8

    .line 222
    :try_start_b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 223
    :cond_8
    if-eqz v6, :cond_9

    .line 224
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 226
    :cond_9
    if-nez v1, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_b

    .line 227
    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->delete()Z

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 229
    move-object v8, v9

    .line 239
    :goto_4
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    if-eqz v12, :cond_a

    .line 240
    move-object/from16 v0, p0

    iget-object v12, v0, Lentagged/audioformats/generic/AudioFileWriter;->modificationListener:Lentagged/audioformats/generic/AudioFileModificationListener;

    invoke-interface {v12, v8}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    .line 219
    :cond_a
    throw v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 231
    :cond_b
    :try_start_d
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .line 234
    :catch_2
    move-exception v3

    .line 235
    .local v3, ex:Ljava/lang/Exception;
    :try_start_e
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AudioFileWriter:165:\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" or \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\" :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 231
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #rafTemp:Ljava/io/RandomAccessFile;
    :cond_c
    :try_start_f
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_1

    .line 234
    :catch_3
    move-exception v3

    .line 235
    .restart local v3       #ex:Ljava/lang/Exception;
    :try_start_10
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AudioFileWriter:165:\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" or \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    .line 219
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v8           #result:Ljava/io/File;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v6       #rafTemp:Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #rafTemp:Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v6       #rafTemp:Ljava/io/RandomAccessFile;
    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 214
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .end local v6           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v7       #rafTemp:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7           #rafTemp:Ljava/io/RandomAccessFile;
    .restart local v6       #rafTemp:Ljava/io/RandomAccessFile;
    goto/16 :goto_2
.end method

.method protected abstract writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
