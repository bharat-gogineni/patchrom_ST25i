.class public Lentagged/audioformats/asf/data/FileHeader;
.super Lentagged/audioformats/asf/data/Chunk;
.source "FileHeader.java"


# instance fields
.field private final duration:Ljava/math/BigInteger;

.field private final fileCreationTime:Ljava/util/Date;

.field private fileSize:Ljava/math/BigInteger;

.field private final flags:J

.field private final maxPackageSize:J

.field private final minPackageSize:J

.field private final packageCount:Ljava/math/BigInteger;

.field private final timeEndPos:Ljava/math/BigInteger;

.field private final timeStartPos:Ljava/math/BigInteger;

.field private final uncompressedFrameSize:J


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;JJJJ)V
    .locals 3
    .parameter "fileHeaderStart"
    .parameter "chunckLen"
    .parameter "size"
    .parameter "fileTime"
    .parameter "pkgCount"
    .parameter "dur"
    .parameter "timestampStart"
    .parameter "timestampEnd"
    .parameter "headerFlags"
    .parameter "minPkgSize"
    .parameter "maxPkgSize"
    .parameter "uncmpVideoFrameSize"

    .prologue
    .line 123
    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v2, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 124
    iput-object p4, p0, Lentagged/audioformats/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    .line 125
    iput-object p6, p0, Lentagged/audioformats/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    .line 126
    iput-object p7, p0, Lentagged/audioformats/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    .line 127
    iput-object p8, p0, Lentagged/audioformats/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    .line 128
    iput-object p9, p0, Lentagged/audioformats/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    .line 129
    iput-wide p10, p0, Lentagged/audioformats/asf/data/FileHeader;->flags:J

    .line 130
    iput-wide p12, p0, Lentagged/audioformats/asf/data/FileHeader;->minPackageSize:J

    .line 131
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lentagged/audioformats/asf/data/FileHeader;->maxPackageSize:J

    .line 132
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lentagged/audioformats/asf/data/FileHeader;->uncompressedFrameSize:J

    .line 133
    invoke-static {p5}, Lentagged/audioformats/asf/util/Utils;->getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lentagged/audioformats/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    .line 134
    return-void
.end method


# virtual methods
.method public getDuration()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFileCreationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFileSize()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lentagged/audioformats/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPreciseDuration()F
    .locals 6

    .prologue
    .line 203
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x416312d000000000L

    div-double v0, v2, v4

    .line 204
    .local v0, doub:D
    double-to-float v2, v0

    return v2
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    const-string v2, "\nFileHeader\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Filesize      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bytes \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Media duration= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "10000"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Created at    = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/FileHeader;->getFileCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
