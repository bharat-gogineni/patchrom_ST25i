.class public Lentagged/audioformats/asf/data/AsfHeader;
.super Lentagged/audioformats/asf/data/Chunk;
.source "AsfHeader.java"


# instance fields
.field private final chunkCount:J

.field private contentDescription:Lentagged/audioformats/asf/data/ContentDescription;

.field private encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;

.field private extendedContentDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;

.field private fileHeader:Lentagged/audioformats/asf/data/FileHeader;

.field private streamBitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

.field private streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

.field private unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;J)V
    .locals 2
    .parameter "pos"
    .parameter "chunkLen"
    .parameter "chunkCnt"

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 89
    iput-wide p4, p0, Lentagged/audioformats/asf/data/AsfHeader;->chunkCount:J

    .line 90
    new-array v0, v1, [Lentagged/audioformats/asf/data/StreamChunk;

    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    .line 91
    new-array v0, v1, [Lentagged/audioformats/asf/data/Chunk;

    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    .line 92
    return-void
.end method


# virtual methods
.method public addStreamChunk(Lentagged/audioformats/asf/data/StreamChunk;)V
    .locals 4
    .parameter "toAdd"

    .prologue
    const/4 v3, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lentagged/audioformats/asf/data/StreamChunk;

    .line 106
    .local v0, tmp:[Lentagged/audioformats/asf/data/StreamChunk;
    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    iget-object v2, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 109
    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    .line 111
    .end local v0           #tmp:[Lentagged/audioformats/asf/data/StreamChunk;
    :cond_1
    return-void
.end method

.method public addUnspecifiedChunk(Lentagged/audioformats/asf/data/Chunk;)V
    .locals 4
    .parameter "toAppend"

    .prologue
    const/4 v3, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lentagged/audioformats/asf/data/Chunk;

    .line 126
    .local v0, tmp:[Lentagged/audioformats/asf/data/Chunk;
    iget-object v1, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    iget-object v2, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 129
    iput-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    .line 131
    .end local v0           #tmp:[Lentagged/audioformats/asf/data/Chunk;
    :cond_1
    return-void
.end method

.method public getAudioStreamChunk()Lentagged/audioformats/asf/data/AudioStreamChunk;
    .locals 4

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, result:Lentagged/audioformats/asf/data/AudioStreamChunk;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunkCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v2

    .line 143
    .local v2, tmp:Lentagged/audioformats/asf/data/StreamChunk;
    instance-of v3, v2, Lentagged/audioformats/asf/data/AudioStreamChunk;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 144
    check-cast v1, Lentagged/audioformats/asf/data/AudioStreamChunk;

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v2           #tmp:Lentagged/audioformats/asf/data/StreamChunk;
    :cond_1
    return-object v1
.end method

.method public getChunkCount()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->chunkCount:J

    return-wide v0
.end method

.method public getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->contentDescription:Lentagged/audioformats/asf/data/ContentDescription;

    return-object v0
.end method

.method public getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;

    return-object v0
.end method

.method public getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->extendedContentDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;

    return-object v0
.end method

.method public getFileHeader()Lentagged/audioformats/asf/data/FileHeader;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->fileHeader:Lentagged/audioformats/asf/data/FileHeader;

    return-object v0
.end method

.method public getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamBitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    return-object v0
.end method

.method public getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;
    .locals 1
    .parameter "index"

    .prologue
    .line 200
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStreamChunkCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamChunks:[Lentagged/audioformats/asf/data/StreamChunk;

    array-length v0, v0

    return v0
.end method

.method public getUnspecifiedChunk(I)Lentagged/audioformats/asf/data/Chunk;
    .locals 1
    .parameter "index"

    .prologue
    .line 220
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUnspecifiedChunkCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lentagged/audioformats/asf/data/AsfHeader;->unspecifiedChunks:[Lentagged/audioformats/asf/data/Chunk;

    array-length v0, v0

    return v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    .prologue
    .line 239
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    const-string v3, "\nASF Chunk\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   Contains: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getChunkCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" chunks\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getFileHeader()Lentagged/audioformats/asf/data/FileHeader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getEncodingChunk()Lentagged/audioformats/asf/data/EncodingChunk;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamBitratePropertiesChunk()Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunkCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/AsfHeader;->getStreamChunk(I)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setContentDescription(Lentagged/audioformats/asf/data/ContentDescription;)V
    .locals 0
    .parameter "contentDesc"

    .prologue
    .line 259
    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->contentDescription:Lentagged/audioformats/asf/data/ContentDescription;

    .line 260
    return-void
.end method

.method public setEncodingChunk(Lentagged/audioformats/asf/data/EncodingChunk;)V
    .locals 2
    .parameter "encChunk"

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->encodingChunk:Lentagged/audioformats/asf/data/EncodingChunk;

    .line 270
    return-void
.end method

.method public setExtendedContentDescription(Lentagged/audioformats/asf/data/ExtendedContentDescription;)V
    .locals 0
    .parameter "th"

    .prologue
    .line 278
    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->extendedContentDescription:Lentagged/audioformats/asf/data/ExtendedContentDescription;

    .line 279
    return-void
.end method

.method public setFileHeader(Lentagged/audioformats/asf/data/FileHeader;)V
    .locals 2
    .parameter "fh"

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->fileHeader:Lentagged/audioformats/asf/data/FileHeader;

    .line 288
    return-void
.end method

.method public setStreamBitratePropertiesChunk(Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;)V
    .locals 0
    .parameter "streamBitratePropertiesChunk1"

    .prologue
    .line 296
    iput-object p1, p0, Lentagged/audioformats/asf/data/AsfHeader;->streamBitratePropertiesChunk:Lentagged/audioformats/asf/data/StreamBitratePropertiesChunk;

    .line 297
    return-void
.end method
