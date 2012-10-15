.class public Lentagged/audioformats/ogg/util/OggTagReader;
.super Ljava/lang/Object;
.source "OggTagReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    .locals 12
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 30
    new-instance v4, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v4}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    .line 32
    .local v4, tag:Lentagged/audioformats/ogg/OggTag;
    new-array v0, v11, [B

    .line 33
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 34
    invoke-static {v0, v9, v10}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v6

    .line 35
    .local v6, vendorStringLength:I
    new-array v0, v6, [B

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 38
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v7}, Lentagged/audioformats/ogg/OggTag;->setVendor(Ljava/lang/String;)V

    .line 40
    new-array v0, v11, [B

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 42
    invoke-static {v0, v9, v10}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v5

    .line 44
    .local v5, userComments:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 45
    new-array v0, v11, [B

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 47
    invoke-static {v0, v9, v10}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v1

    .line 48
    .local v1, commentLength:I
    new-array v0, v1, [B

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 51
    new-instance v2, Lentagged/audioformats/ogg/util/OggTagField;

    invoke-direct {v2, v0}, Lentagged/audioformats/ogg/util/OggTagField;-><init>([B)V

    .line 52
    .local v2, field:Lentagged/audioformats/ogg/util/OggTagField;
    invoke-virtual {v4, v2}, Lentagged/audioformats/ogg/OggTag;->add(Lentagged/audioformats/generic/TagField;)V

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v1           #commentLength:I
    .end local v2           #field:Lentagged/audioformats/ogg/util/OggTagField;
    :cond_0
    return-object v4
.end method
