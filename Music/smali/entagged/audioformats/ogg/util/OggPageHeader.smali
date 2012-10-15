.class public Lentagged/audioformats/ogg/util/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# instance fields
.field private absoluteGranulePosition:D

.field private checksum:[B

.field private headerTypeFlag:B

.field private isValid:Z

.field private pageLength:I

.field private pageSequenceNumber:I

.field private segmentTable:[B

.field private streamSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 13
    .parameter "b"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v10, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->isValid:Z

    .line 35
    iput v10, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    .line 41
    aget-byte v1, p1, v12

    .line 43
    .local v1, streamStructureRevision:I
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->headerTypeFlag:B

    .line 45
    if-nez v1, :cond_2

    .line 46
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 48
    iget-wide v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    mul-int/lit8 v8, v0, 0x8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v2

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    const/16 v3, 0x10

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    const/16 v3, 0x11

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    iput v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->streamSerialNumber:I

    .line 52
    const/16 v2, 0x12

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v2

    const/16 v3, 0x13

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    const/16 v3, 0x14

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    const/16 v3, 0x15

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    iput v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageSequenceNumber:I

    .line 54
    new-array v2, v12, [B

    const/16 v3, 0x16

    aget-byte v3, p1, v3

    aput-byte v3, v2, v10

    const/16 v3, 0x17

    aget-byte v3, p1, v3

    aput-byte v3, v2, v11

    const/4 v3, 0x2

    const/16 v4, 0x18

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x19

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    iput-object v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->checksum:[B

    .line 60
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1b

    new-array v2, v2, [B

    iput-object v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->segmentTable:[B

    .line 62
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->segmentTable:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 63
    iget-object v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->segmentTable:[B

    add-int/lit8 v3, v0, 0x1b

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    .line 64
    iget v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    add-int/lit8 v3, v0, 0x1b

    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lentagged/audioformats/ogg/util/OggPageHeader;->u(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    iput-boolean v11, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->isValid:Z

    .line 71
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private u(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 74
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getAbsoluteGranulePosition()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    return-wide v0
.end method

.method public getPageLength()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    return v0
.end method

.method public getPageSequence()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageSequenceNumber:I

    return v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->streamSerialNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    const-string v0, "Ogg Page Header:\n"

    .line 118
    .local v0, out:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Is valid?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->isValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | page length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->pageLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Header type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lentagged/audioformats/ogg/util/OggPageHeader;->headerTypeFlag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method
