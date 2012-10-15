.class public Lentagged/audioformats/ogg/util/VorbisTagReader;
.super Ljava/lang/Object;
.source "VorbisTagReader.java"


# instance fields
.field private oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-direct {v0}, Lentagged/audioformats/ogg/util/OggTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/ogg/util/VorbisTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/Tag;
    .locals 13
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const-wide/16 v3, 0x0

    .line 37
    .local v3, oldPos:J
    const-wide/16 v9, 0x0

    invoke-virtual {p1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 38
    const/4 v9, 0x4

    new-array v0, v9, [B

    .line 39
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 41
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 42
    .local v2, ogg:Ljava/lang/String;
    const-string v9, "OggS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 43
    new-instance v9, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v10, "OggS Header could not be found, not an ogg stream"

    invoke-direct {v9, v10}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 47
    :cond_0
    const-wide/16 v9, 0x0

    invoke-virtual {p1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    const/4 v9, 0x4

    new-array v0, v9, [B

    .line 55
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 56
    const-wide/16 v9, 0x1a

    invoke-virtual {p1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 57
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v9

    and-int/lit16 v6, v9, 0xff

    .line 58
    .local v6, pageSegments:I
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    add-int/lit8 v9, v6, 0x1b

    new-array v0, v9, [B

    .line 61
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 63
    new-instance v5, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v5, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 65
    .local v5, pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    invoke-virtual {v5}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-virtual {p1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 69
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    const-wide/16 v11, 0x1a

    add-long/2addr v9, v11

    invoke-virtual {p1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v9

    and-int/lit16 v6, v9, 0xff

    .line 71
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 73
    add-int/lit8 v9, v6, 0x1b

    new-array v0, v9, [B

    .line 74
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 75
    new-instance v5, Lentagged/audioformats/ogg/util/OggPageHeader;

    .end local v5           #pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    invoke-direct {v5, v0}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 77
    .restart local v5       #pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    const/4 v9, 0x7

    new-array v0, v9, [B

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 80
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x6

    invoke-direct {v8, v0, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 81
    .local v8, vorbis:Ljava/lang/String;
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    const-string v9, "vorbis"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 82
    :cond_1
    new-instance v9, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v10, "Cannot find comment block (no vorbis header)"

    invoke-direct {v9, v10}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 85
    :cond_2
    iget-object v9, p0, Lentagged/audioformats/ogg/util/VorbisTagReader;->oggTagReader:Lentagged/audioformats/ogg/util/OggTagReader;

    invoke-virtual {v9, p1}, Lentagged/audioformats/ogg/util/OggTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;

    move-result-object v7

    .line 87
    .local v7, tag:Lentagged/audioformats/ogg/OggTag;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    .line 88
    .local v1, isValid:B
    if-nez v1, :cond_3

    .line 89
    new-instance v9, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v10, "Error: The OGG Stream isn\'t valid, could not extract the tag"

    invoke-direct {v9, v10}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 91
    :cond_3
    return-object v7
.end method
