.class public Lentagged/audioformats/asf/data/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field protected final chunkLength:Ljava/math/BigInteger;

.field protected final guid:Lentagged/audioformats/asf/data/GUID;

.field protected final position:J


# direct methods
.method public constructor <init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V
    .locals 2
    .parameter "headerGuid"
    .parameter "pos"
    .parameter "chunkLen"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GUID must not be null nor anything else than 16 entries long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position of header can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    if-eqz p4, :cond_2

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkLen must not be null nor negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    iput-object p1, p0, Lentagged/audioformats/asf/data/Chunk;->guid:Lentagged/audioformats/asf/data/GUID;

    .line 73
    iput-wide p2, p0, Lentagged/audioformats/asf/data/Chunk;->position:J

    .line 74
    iput-object p4, p0, Lentagged/audioformats/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    .line 75
    return-void
.end method


# virtual methods
.method public getChunckEnd()J
    .locals 4

    .prologue
    .line 84
    iget-wide v0, p0, Lentagged/audioformats/asf/data/Chunk;->position:J

    iget-object v2, p0, Lentagged/audioformats/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getChunkLength()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lentagged/audioformats/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGuid()Lentagged/audioformats/asf/data/GUID;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lentagged/audioformats/asf/data/Chunk;->guid:Lentagged/audioformats/asf/data/GUID;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lentagged/audioformats/asf/data/Chunk;->position:J

    return-wide v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 6

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v0, result:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lentagged/audioformats/asf/data/Chunk;->guid:Lentagged/audioformats/asf/data/GUID;

    invoke-static {v2}, Lentagged/audioformats/asf/data/GUID;->getGuidDescription(Lentagged/audioformats/asf/data/GUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n   Starts at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Last byte at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/Chunk;->getChunckEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
