.class public Lentagged/audioformats/mp3/util/Id3v1TagCreator;
.super Ljava/lang/Object;
.source "Id3v1TagCreator.java"


# static fields
.field private static translateTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x82

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateTable:Ljava/util/Hashtable;

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 35
    sget-object v1, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateTable:Ljava/util/Hashtable;

    sget-object v2, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V
    .locals 6
    .parameter "buf"
    .parameter "s"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    new-array v0, p3, [B

    .line 80
    .local v0, b:[B
    const/4 v2, 0x0

    .line 81
    .local v2, text:[B
    invoke-direct {p0, p2, p3}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 84
    aget-byte v3, v2, v1

    aput-byte v3, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    array-length v1, v2

    :goto_1
    array-length v3, v2

    sub-int v3, p3, v3

    if-ge v1, v3, :cond_1

    .line 86
    aput-byte v5, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p1, v0, v5, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 88
    return-void
.end method

.method private translateGenre(Ljava/lang/String;)B
    .locals 3
    .parameter "genre"

    .prologue
    .line 95
    sget-object v1, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 96
    .local v0, b:Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, -0x1

    .line 99
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0
.end method

.method private truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "len"

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;
    .locals 6
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1e

    .line 43
    const/16 v3, 0x80

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/16 v3, 0x54

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x41

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v5}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    .line 49
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v5}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    .line 51
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v5}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    .line 53
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p0, v0, v3, v4}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    .line 55
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getTrack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1c

    invoke-direct {p0, v0, v3, v4}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, integ:I
    :try_start_0
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 67
    :goto_0
    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    .end local v2           #integ:I
    :goto_1
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->translateGenre(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 75
    return-object v0

    .line 63
    .restart local v2       #integ:I
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 70
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #integ:I
    :cond_0
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v5}, Lentagged/audioformats/mp3/util/Id3v1TagCreator;->put(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    goto :goto_1
.end method
