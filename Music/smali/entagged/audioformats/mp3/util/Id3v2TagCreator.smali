.class public Lentagged/audioformats/mp3/util/Id3v2TagCreator;
.super Lentagged/audioformats/generic/AbstractTagCreator;
.source "Id3v2TagCreator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTagCreator;-><init>()V

    return-void
.end method

.method private createID3Flags([Z)B
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, b:B
    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    if-ne v1, v2, :cond_0

    .line 103
    const/16 v1, 0x80

    int-to-byte v0, v1

    .line 104
    :cond_0
    aget-boolean v1, p1, v2

    if-ne v1, v2, :cond_1

    .line 105
    add-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    .line 106
    :cond_1
    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    if-ne v1, v2, :cond_2

    .line 107
    add-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 108
    :cond_2
    const/4 v1, 0x3

    aget-boolean v1, p1, v1

    if-ne v1, v2, :cond_3

    .line 109
    add-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 110
    :cond_3
    return v0
.end method

.method public static getSyncSafe(I)[B
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x4

    .line 45
    sget-boolean v2, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-gez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 46
    :cond_0
    new-array v1, v3, [B

    .line 47
    .local v1, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 48
    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x7

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    sget-boolean v2, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 51
    :cond_3
    return-object v1
.end method


# virtual methods
.method public create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .locals 9
    .parameter "tag"
    .parameter "buf"
    .parameter "fields"
    .parameter "tagSize"
    .parameter "paddingSize"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    const/16 v4, 0x49

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x44

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x33

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 66
    new-array v0, v8, [Z

    .line 68
    .local v0, ID3Flags:[Z
    aput-boolean v6, v0, v6

    .line 69
    aput-boolean v6, v0, v7

    .line 70
    const/4 v4, 0x2

    aput-boolean v6, v0, v4

    .line 71
    const/4 v4, 0x3

    aput-boolean v6, v0, v4

    .line 72
    invoke-direct {p0, v0}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->createID3Flags([Z)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    add-int/lit8 v4, p4, -0xa

    add-int v3, v4, p5

    .line 78
    .local v3, tempSize:I
    invoke-static {v3}, Lentagged/audioformats/mp3/util/Id3v2TagCreator;->getSyncSafe(I)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    aget-boolean v4, v0, v7

    if-ne v4, v7, :cond_0

    .line 88
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 89
    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p5, :cond_2

    .line 95
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    return-void
.end method

.method protected getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
    .locals 2
    .parameter "tag"

    .prologue
    .line 114
    instance-of v1, p1, Lentagged/audioformats/mp3/Id3v2Tag;

    if-nez v1, :cond_0

    .line 115
    new-instance v0, Lentagged/audioformats/mp3/Id3v2Tag;

    invoke-direct {v0}, Lentagged/audioformats/mp3/Id3v2Tag;-><init>()V

    .line 116
    .local v0, id3Tag:Lentagged/audioformats/mp3/Id3v2Tag;
    invoke-virtual {v0, p1}, Lentagged/audioformats/mp3/Id3v2Tag;->merge(Lentagged/audioformats/Tag;)V

    .line 119
    .end local v0           #id3Tag:Lentagged/audioformats/mp3/Id3v2Tag;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected getFixedTagLength(Lentagged/audioformats/Tag;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 123
    const/16 v0, 0xa

    return v0
.end method
