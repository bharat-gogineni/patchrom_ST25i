.class public Lentagged/audioformats/ape/util/MonkeyHeader;
.super Ljava/lang/Object;
.source "MonkeyHeader.java"


# instance fields
.field b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "b"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lentagged/audioformats/ape/util/MonkeyHeader;->b:[B

    .line 29
    return-void
.end method


# virtual methods
.method public getBlocksPerFrame()J
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyHeader;->b:[B

    const/4 v1, 0x4

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCompressionLevel()I
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyHeader;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getFinalFrameBlocks()J
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyHeader;->b:[B

    const/16 v1, 0x8

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreciseLength()F
    .locals 6

    .prologue
    .line 57
    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyHeader;->getBlocksPerFrame()J

    move-result-wide v0

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyHeader;->getTotalFrames()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyHeader;->getFinalFrameBlocks()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyHeader;->getSamplingRate()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getSamplingRate()I
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyHeader;->b:[B

    const/16 v1, 0x14

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getTotalFrames()J
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyHeader;->b:[B

    const/16 v1, 0xc

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getLongNumber([BII)J

    move-result-wide v0

    return-wide v0
.end method
