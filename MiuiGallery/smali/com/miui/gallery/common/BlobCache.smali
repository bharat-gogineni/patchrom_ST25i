.class public Lcom/miui/gallery/common/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/common/BlobCache$LookupRequest;
    }
.end annotation


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .parameter "path"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "reset"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    .line 127
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mBlobHeader:[B

    .line 128
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 414
    new-instance v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/miui/gallery/common/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    .line 143
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 144
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 145
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 146
    iput p5, p0, Lcom/miui/gallery/common/BlobCache;->mVersion:I

    .line 148
    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    return-void

    .line 152
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/common/BlobCache;->resetCache(II)V

    .line 154
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->closeAll()V

    .line 156
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6
    .parameter "hashStart"

    .prologue
    const/16 v5, 0x400

    .line 355
    new-array v2, v5, [B

    .line 356
    .local v2, zero:[B
    iget-object v3, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 357
    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 358
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 359
    .local v1, todo:I
    iget-object v3, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 360
    sub-int/2addr v0, v1

    .line 361
    goto :goto_0

    .line 362
    .end local v1           #todo:I
    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/miui/gallery/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/miui/gallery/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/miui/gallery/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/miui/gallery/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 642
    if-nez p0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 644
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    .line 333
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 338
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->updateIndexHeader()V

    .line 340
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->setActiveVariables()V

    .line 341
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/common/BlobCache;->clearHash(I)V

    .line 342
    invoke-virtual {p0}, Lcom/miui/gallery/common/BlobCache;->syncIndex()V

    .line 343
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/miui/gallery/common/BlobCache$LookupRequest;)Z
    .locals 14
    .parameter "file"
    .parameter "offset"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v5, p0, Lcom/miui/gallery/common/BlobCache;->mBlobHeader:[B

    .line 501
    .local v5, header:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    .line 503
    .local v7, oldPosition:J
    move/from16 v0, p2

    int-to-long v11, v0

    :try_start_0
    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 504
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    const/16 v12, 0x14

    if-eq v11, v12, :cond_0

    .line 505
    const-string v11, "BlobCache"

    const-string v12, "cannot read blob header"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    const/4 v11, 0x0

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v11

    .line 508
    :cond_0
    const/4 v11, 0x0

    :try_start_1
    invoke-static {v5, v11}, Lcom/miui/gallery/common/BlobCache;->readLong([BI)J

    move-result-wide v2

    .line 509
    .local v2, blobKey:J
    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    cmp-long v11, v2, v11

    if-eqz v11, :cond_1

    .line 510
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "blob key does not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 511
    const/4 v11, 0x0

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 513
    :cond_1
    const/16 v11, 0x8

    :try_start_2
    invoke-static {v5, v11}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v9

    .line 514
    .local v9, sum:I
    const/16 v11, 0xc

    invoke-static {v5, v11}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v4

    .line 515
    .local v4, blobOffset:I
    move/from16 v0, p2

    if-eq v4, v0, :cond_2

    .line 516
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "blob offset does not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 517
    const/4 v11, 0x0

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 519
    :cond_2
    const/16 v11, 0x10

    :try_start_3
    invoke-static {v5, v11}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v6

    .line 520
    .local v6, length:I
    if-ltz v6, :cond_3

    iget v11, p0, Lcom/miui/gallery/common/BlobCache;->mMaxBytes:I

    sub-int v11, v11, p2

    add-int/lit8 v11, v11, -0x14

    if-le v6, v11, :cond_4

    .line 521
    :cond_3
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid blob length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 522
    const/4 v11, 0x0

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 524
    :cond_4
    :try_start_4
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    if-eqz v11, :cond_5

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    array-length v11, v11

    if-ge v11, v6, :cond_6

    .line 525
    :cond_5
    new-array v11, v6, [B

    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    .line 528
    :cond_6
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    .line 529
    .local v1, blob:[B
    move-object/from16 v0, p3

    iput v6, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->length:I

    .line 531
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    if-eq v11, v6, :cond_7

    .line 532
    const-string v11, "BlobCache"

    const-string v12, "cannot read blob data"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 533
    const/4 v11, 0x0

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 535
    :cond_7
    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v11, v6}, Lcom/miui/gallery/common/BlobCache;->checkSum([BII)I

    move-result v11

    if-eq v11, v9, :cond_8

    .line 536
    const-string v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "blob checksum does not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 537
    const/4 v11, 0x0

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 539
    :cond_8
    const/4 v11, 0x1

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 540
    .end local v1           #blob:[B
    .end local v2           #blobKey:J
    .end local v4           #blobOffset:I
    .end local v6           #length:I
    .end local v9           #sum:I
    :catch_0
    move-exception v10

    .line 541
    .local v10, t:Ljava/lang/Throwable;
    :try_start_6
    const-string v11, "BlobCache"

    const-string v12, "getBlob failed."

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 542
    const/4 v11, 0x0

    .line 544
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .end local v10           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v11
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .parameter "key"
    .parameter "data"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 391
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mBlobHeader:[B

    .line 392
    .local v0, header:[B
    invoke-virtual {p0, p3}, Lcom/miui/gallery/common/BlobCache;->checkSum([B)I

    move-result v1

    .line 393
    .local v1, sum:I
    invoke-static {v0, v4, p1, p2}, Lcom/miui/gallery/common/BlobCache;->writeLong([BIJ)V

    .line 394
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 395
    const/16 v2, 0xc

    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 396
    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 397
    iget-object v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 398
    iget-object v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 400
    iget-object v2, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 401
    iget-object v2, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 402
    iget v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    .line 403
    iget-object v2, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 404
    return-void
.end method

.method private loadIndex()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 199
    iget-object v6, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    .line 200
    .local v6, buf:[B
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 201
    const-string v0, "BlobCache"

    const-string v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 283
    .end local v6           #buf:[B
    :goto_0
    return v0

    .line 205
    .restart local v6       #buf:[B
    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_1

    .line 206
    const-string v0, "BlobCache"

    const-string v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 207
    goto :goto_0

    .line 210
    :cond_1
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_2

    .line 211
    const-string v0, "BlobCache"

    const-string v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    .line 216
    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mMaxBytes:I

    .line 217
    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    .line 218
    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    .line 219
    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    .line 221
    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v9

    .line 222
    .local v9, sum:I
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Lcom/miui/gallery/common/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 223
    const-string v0, "BlobCache"

    const-string v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 224
    goto :goto_0

    .line 228
    :cond_3
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    .line 229
    const-string v0, "BlobCache"

    const-string v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 230
    goto :goto_0

    .line 232
    :cond_4
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    .line 233
    const-string v0, "BlobCache"

    const-string v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 234
    goto :goto_0

    .line 236
    :cond_5
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_6

    .line 237
    const-string v0, "BlobCache"

    const-string v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 238
    goto/16 :goto_0

    .line 240
    :cond_6
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    .line 241
    :cond_7
    const-string v0, "BlobCache"

    const-string v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 242
    goto/16 :goto_0

    .line 244
    :cond_8
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    .line 245
    :cond_9
    const-string v0, "BlobCache"

    const-string v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 246
    goto/16 :goto_0

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 250
    const-string v0, "BlobCache"

    const-string v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 251
    goto/16 :goto_0

    .line 255
    :cond_b
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 256
    .local v8, magic:[B
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 257
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 258
    goto/16 :goto_0

    .line 260
    :cond_c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 261
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 262
    goto/16 :goto_0

    .line 264
    :cond_d
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 265
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 266
    goto/16 :goto_0

    .line 268
    :cond_e
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/miui/gallery/common/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 269
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 270
    goto/16 :goto_0

    .line 274
    :cond_f
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 275
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 279
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 280
    goto/16 :goto_0

    .line 281
    .end local v6           #buf:[B
    .end local v8           #magic:[B
    .end local v9           #sum:I
    :catch_0
    move-exception v7

    .line 282
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "BlobCache"

    const-string v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 283
    goto/16 :goto_0
.end method

.method private lookupInternal(JII)Z
    .locals 10
    .parameter "key"
    .parameter "hashStart"
    .parameter "deleteFlag"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 558
    iget v8, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    int-to-long v8, v8

    rem-long v8, p1, v8

    long-to-int v4, v8

    .line 559
    .local v4, slot:I
    if-gez v4, :cond_0

    iget v8, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v8

    .line 560
    :cond_0
    move v5, v4

    .line 562
    .local v5, slotBegin:I
    :cond_1
    :goto_0
    mul-int/lit8 v8, v4, 0xc

    add-int v3, p3, v8

    .line 563
    .local v3, offset:I
    iget-object v8, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v8, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 564
    .local v0, candidateKey:J
    iget-object v8, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v9, v3, 0x8

    invoke-virtual {v8, v9}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 565
    .local v2, candidateOffset:I
    if-nez v2, :cond_2

    .line 566
    iput v3, p0, Lcom/miui/gallery/common/BlobCache;->mSlotOffset:I

    .line 574
    :goto_1
    return v6

    .line 568
    :cond_2
    cmp-long v8, v0, p1

    if-nez v8, :cond_4

    .line 569
    iput v3, p0, Lcom/miui/gallery/common/BlobCache;->mSlotOffset:I

    .line 570
    iput v2, p0, Lcom/miui/gallery/common/BlobCache;->mFileOffset:I

    .line 571
    if-ne p4, v7, :cond_3

    .line 572
    iget-object v6, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v3, v8, v9}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    :cond_3
    move v6, v7

    .line 574
    goto :goto_1

    .line 576
    :cond_4
    add-int/lit8 v4, v4, 0x1

    iget v8, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    if-lt v4, v8, :cond_5

    .line 577
    const/4 v4, 0x0

    .line 579
    :cond_5
    if-ne v4, v5, :cond_1

    .line 580
    const-string v8, "BlobCache"

    const-string v9, "corrupted index: clear the slot."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v8, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v9, v4, 0xc

    add-int/2addr v9, p3

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 651
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 7
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 658
    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v1, v3

    .line 659
    .local v1, result:J
    const/4 v0, 0x6

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 660
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 659
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 662
    :cond_0
    return-wide v1
.end method

.method private resetCache(II)V
    .locals 9
    .parameter "maxEntries"
    .parameter "maxBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v7, 0x4

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 304
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 305
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 306
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    .line 308
    .local v0, buf:[B
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 309
    invoke-static {v0, v7, p1}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 310
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 311
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 312
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 313
    const/16 v1, 0x14

    invoke-static {v0, v1, v7}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 314
    const/16 v1, 0x18

    iget v2, p0, Lcom/miui/gallery/common/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 315
    invoke-virtual {p0, v0, v4, v8}, Lcom/miui/gallery/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 316
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 320
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 321
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 322
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 323
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 324
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 325
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 326
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 327
    return-void
.end method

.method private setActiveVariables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 288
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 289
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 290
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 291
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 293
    iput v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveHashStart:I

    .line 294
    iput v3, p0, Lcom/miui/gallery/common/BlobCache;->mInactiveHashStart:I

    .line 296
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 297
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mInactiveHashStart:I

    .line 301
    :goto_2
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 299
    :cond_2
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/gallery/common/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 349
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 351
    return-void
.end method

.method static writeInt([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 666
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 667
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 668
    shr-int/lit8 p2, p2, 0x8

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 5
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    .line 673
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 674
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 675
    shr-long/2addr p2, v4

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 677
    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 631
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 632
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "nbytes"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 637
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 638
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/miui/gallery/common/BlobCache;->syncAll()V

    .line 181
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->closeAll()V

    .line 182
    return-void
.end method

.method public deleteKey(J)V
    .locals 2
    .parameter "key"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    iput-wide p1, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    .line 427
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    .line 428
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/common/BlobCache;->deleteKey(Lcom/miui/gallery/common/BlobCache$LookupRequest;)Z

    .line 429
    return-void
.end method

.method public deleteKey(Lcom/miui/gallery/common/BlobCache$LookupRequest;)Z
    .locals 4
    .parameter "req"

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-wide v1, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/miui/gallery/common/BlobCache;->lookupInternal(JII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    iget-wide v1, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/miui/gallery/common/BlobCache;->lookupInternal(JII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(J[B)V
    .locals 3
    .parameter "key"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->flipRegion()V

    .line 375
    :cond_2
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveHashStart:I

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/common/BlobCache;->lookupInternal(JII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 382
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/common/BlobCache;->insertInternal(J[BI)V

    .line 383
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->updateIndexHeader()V

    .line 384
    return-void
.end method

.method public lookup(Lcom/miui/gallery/common/BlobCache$LookupRequest;)Z
    .locals 7
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 454
    iget-wide v3, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/miui/gallery/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/miui/gallery/common/BlobCache;->lookupInternal(JII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/miui/gallery/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/miui/gallery/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/miui/gallery/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v2

    .line 463
    :cond_1
    iget v0, p0, Lcom/miui/gallery/common/BlobCache;->mSlotOffset:I

    .line 466
    .local v0, insertOffset:I
    iget-wide v3, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/miui/gallery/common/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/miui/gallery/common/BlobCache;->lookupInternal(JII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/miui/gallery/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/miui/gallery/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/miui/gallery/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/miui/gallery/common/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->length:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/common/BlobCache;->mMaxBytes:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/miui/gallery/common/BlobCache;->mMaxEntries:I

    if-ge v3, v4, :cond_0

    .line 475
    iput v0, p0, Lcom/miui/gallery/common/BlobCache;->mSlotOffset:I

    .line 477
    :try_start_0
    iget-wide v3, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    iget-object v5, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    iget v6, p1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/miui/gallery/common/BlobCache;->insertInternal(J[BI)V

    .line 478
    iget v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    .line 479
    iget-object v3, p0, Lcom/miui/gallery/common/BlobCache;->mIndexHeader:[B

    const/16 v4, 0x10

    iget v5, p0, Lcom/miui/gallery/common/BlobCache;->mActiveEntries:I

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/BlobCache;->writeInt([BII)V

    .line 480
    invoke-direct {p0}, Lcom/miui/gallery/common/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "BlobCache"

    const-string v4, "cannot copy over"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    iput-wide p1, v1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->key:J

    .line 417
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    iput-object v0, v1, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    .line 418
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/common/BlobCache;->lookup(Lcom/miui/gallery/common/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/common/BlobCache;->mLookupRequest:Lcom/miui/gallery/common/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/miui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    .line 421
    :cond_0
    return-object v0
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/miui/gallery/common/BlobCache;->syncIndex()V

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    :goto_1
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 604
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 605
    .restart local v0       #t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
