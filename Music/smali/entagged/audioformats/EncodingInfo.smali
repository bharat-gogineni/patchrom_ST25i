.class public Lentagged/audioformats/EncodingInfo;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# instance fields
.field private content:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    .line 96
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "BITRATE"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "CHANNB"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "TYPE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "INFOS"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "SAMPLING"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "LENGTH"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, -0x4080

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "VBR"

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "BITRATE"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lentagged/audioformats/EncodingInfo;->getPreciseLength()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getPreciseLength()F
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "LENGTH"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public setBitrate(I)V
    .locals 3
    .parameter "bitrate"

    .prologue
    .line 192
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "BITRATE"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setChannelNumber(I)V
    .locals 3
    .parameter "chanNb"

    .prologue
    .line 202
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "CHANNB"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 2
    .parameter "encodingType"

    .prologue
    .line 214
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public setExtraEncodingInfos(Ljava/lang/String;)V
    .locals 2
    .parameter "infos"

    .prologue
    .line 224
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "INFOS"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public setPreciseLength(F)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 244
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "LENGTH"

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public setSamplingRate(I)V
    .locals 3
    .parameter "samplingRate"

    .prologue
    .line 254
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "SAMPLING"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public setVbr(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 264
    iget-object v0, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    const-string v1, "VBR"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 273
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v4, 0x32

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 274
    .local v2, out:Ljava/lang/StringBuffer;
    const-string v4, "Encoding infos content:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    iget-object v4, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 276
    .local v0, en:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 278
    .local v1, key:Ljava/lang/Object;
    iget-object v4, p0, Lentagged/audioformats/EncodingInfo;->content:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 279
    .local v3, val:Ljava/lang/Object;
    const-string v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 281
    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 283
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 285
    .end local v1           #key:Ljava/lang/Object;
    .end local v3           #val:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
