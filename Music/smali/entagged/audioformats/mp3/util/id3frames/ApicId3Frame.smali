.class public Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;
.source "ApicId3Frame.java"


# instance fields
.field private data:[B

.field private mime:Ljava/lang/String;

.field private pictureType:B

.field private unsupportedState:Z


# direct methods
.method public constructor <init>([BB)V
    .locals 1
    .parameter "rawContent"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "APIC"

    invoke-direct {p0, v0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected build()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    iget-boolean v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    if-eqz v4, :cond_0

    .line 51
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    .line 81
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 54
    .local v1, contentB:[B
    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-virtual {p0, v4, v5}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 56
    .local v2, mimeB:[B
    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    array-length v5, v1

    add-int/2addr v4, v5

    iget-object v5, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 59
    .local v0, b:[B
    const/4 v3, 0x0

    .line 60
    .local v3, offset:I
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getIdBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    .line 61
    add-int/lit8 v3, v3, 0x4

    .line 62
    array-length v4, v0

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {p0, v4}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getSize(I)[B

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    .line 63
    add-int/lit8 v3, v3, 0x4

    .line 64
    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    invoke-virtual {p0, v4, v0, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    .line 65
    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v4, v4

    add-int/lit8 v3, v4, 0x8

    .line 67
    iget-byte v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    aput-byte v4, v0, v3

    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 70
    invoke-virtual {p0, v2, v0, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    .line 71
    array-length v4, v2

    add-int/2addr v3, v4

    .line 73
    iget-byte v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    aput-byte v4, v0, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 76
    invoke-virtual {p0, v1, v0, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    .line 77
    array-length v4, v1

    add-int/2addr v3, v4

    .line 78
    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    invoke-virtual {p0, v4, v0, v3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->copy([B[BI)V

    .line 79
    iget-object v4, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v4, v4

    add-int/2addr v3, v4

    .line 81
    goto :goto_0
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->copyContent(Lentagged/audioformats/generic/TagField;)V

    .line 87
    instance-of v0, p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 88
    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    iget-boolean v0, v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    if-nez v0, :cond_1

    move-object v0, p1

    .line 89
    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    invoke-virtual {v0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    move-object v0, p1

    .line 90
    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    invoke-virtual {v0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getPictureType()B

    move-result v0

    iput-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    .line 91
    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local p1
    :cond_1
    check-cast p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    .end local p1
    iget-object v0, p1, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()B
    .locals 1

    .prologue
    .line 108
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    return v0
.end method

.method public getPictureTypeAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-byte v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 157
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 114
    :pswitch_0
    const-string v0, "Other"

    goto :goto_0

    .line 116
    :pswitch_1
    const-string v0, "32x32 pixels file icon"

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v0, "Other file icon"

    goto :goto_0

    .line 120
    :pswitch_3
    const-string v0, "Cover (front)"

    goto :goto_0

    .line 122
    :pswitch_4
    const-string v0, "Cover (back)"

    goto :goto_0

    .line 124
    :pswitch_5
    const-string v0, "Leaflet page"

    goto :goto_0

    .line 126
    :pswitch_6
    const-string v0, "Media (e.g. lable side of CD)"

    goto :goto_0

    .line 128
    :pswitch_7
    const-string v0, "Lead artist/lead performer/soloist"

    goto :goto_0

    .line 130
    :pswitch_8
    const-string v0, "Artist/performer"

    goto :goto_0

    .line 132
    :pswitch_9
    const-string v0, "Conductor"

    goto :goto_0

    .line 134
    :pswitch_a
    const-string v0, "Band/Orchestra"

    goto :goto_0

    .line 136
    :pswitch_b
    const-string v0, "Composer"

    goto :goto_0

    .line 138
    :pswitch_c
    const-string v0, "Lyricist/text writer"

    goto :goto_0

    .line 140
    :pswitch_d
    const-string v0, "Recording Location"

    goto :goto_0

    .line 142
    :pswitch_e
    const-string v0, "During recording"

    goto :goto_0

    .line 144
    :pswitch_f
    const-string v0, "During performance"

    goto :goto_0

    .line 146
    :pswitch_10
    const-string v0, "Movie/video screen capture"

    goto :goto_0

    .line 148
    :pswitch_11
    const-string v0, "A bright coloured fish"

    goto :goto_0

    .line 150
    :pswitch_12
    const-string v0, "Illustration"

    goto :goto_0

    .line 152
    :pswitch_13
    const-string v0, "Band/artist logotype"

    goto :goto_0

    .line 154
    :pswitch_14
    const-string v0, "Publisher/Studio logotype"

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populate([B)V
    .locals 7
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 180
    new-array v2, v5, [B

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    .line 181
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v2, v2

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    .line 182
    iget-byte v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    if-ltz v2, :cond_0

    iget-byte v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    if-le v2, v6, :cond_1

    .line 183
    :cond_0
    iput-byte v5, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    .line 185
    :cond_1
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v2}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->indexOfFirstNull([BI)I

    move-result v1

    .line 186
    .local v1, offset:I
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->flags:[B

    array-length v3, v3

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "ISO-8859-1"

    invoke-virtual {p0, p1, v2, v3, v4}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 218
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    const/4 v2, 0x1

    iput-boolean v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->unsupportedState:Z

    .line 196
    iput-object p1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    goto :goto_0

    .line 199
    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->pictureType:B

    .line 201
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, p1, v2}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->indexOfFirstNull([BI)I

    move-result v0

    .line 202
    .local v0, nextoffset:I
    add-int/lit8 v2, v1, 0x2

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v3, v4}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->content:Ljava/lang/String;

    .line 206
    iget-byte v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-byte v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->encoding:B

    if-ne v2, v6, :cond_5

    .line 207
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 209
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 211
    array-length v2, p1

    if-le v2, v0, :cond_6

    .line 212
    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    .line 213
    iget-object v2, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    iget-object v3, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->data:[B

    array-length v3, v3

    invoke-static {p1, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 215
    :cond_6
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "ApicId3Frame-> No space for picture data left."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;->getPictureTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
