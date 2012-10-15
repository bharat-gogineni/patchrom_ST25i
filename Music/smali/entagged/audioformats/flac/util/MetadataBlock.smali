.class public Lentagged/audioformats/flac/util/MetadataBlock;
.super Ljava/lang/Object;
.source "MetadataBlock.java"


# instance fields
.field private mbd:Lentagged/audioformats/flac/util/MetadataBlockData;

.field private mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;


# direct methods
.method public constructor <init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V
    .locals 0
    .parameter "mbh"
    .parameter "mbd"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lentagged/audioformats/flac/util/MetadataBlock;->mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;

    .line 28
    iput-object p2, p0, Lentagged/audioformats/flac/util/MetadataBlock;->mbd:Lentagged/audioformats/flac/util/MetadataBlockData;

    .line 29
    return-void
.end method


# virtual methods
.method public getData()Lentagged/audioformats/flac/util/MetadataBlockData;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlock;->mbd:Lentagged/audioformats/flac/util/MetadataBlockData;

    return-object v0
.end method

.method public getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlock;->mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlock;->mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;

    invoke-virtual {v0}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
