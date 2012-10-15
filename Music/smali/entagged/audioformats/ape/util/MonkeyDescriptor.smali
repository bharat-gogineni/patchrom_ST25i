.class public Lentagged/audioformats/ape/util/MonkeyDescriptor;
.super Ljava/lang/Object;
.source "MonkeyDescriptor.java"


# instance fields
.field b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "b"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    .line 28
    return-void
.end method


# virtual methods
.method public getDescriptorLength()I
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getHeaderLength()I
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/4 v1, 0x4

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method

.method public getRiffWavOffset()I
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getDescriptorLength()I

    move-result v0

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getHeaderLength()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lentagged/audioformats/ape/util/MonkeyDescriptor;->getSeekTableLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSeekTableLength()I
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lentagged/audioformats/ape/util/MonkeyDescriptor;->b:[B

    const/16 v1, 0x8

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    return v0
.end method
