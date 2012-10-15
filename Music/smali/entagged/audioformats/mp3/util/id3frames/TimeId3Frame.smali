.class public Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;
.super Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;
.source "TimeId3Frame.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fieldId"
    .parameter "content"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BB)V
    .locals 0
    .parameter "fieldId"
    .parameter "rawContent"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    .line 78
    return-void
.end method


# virtual methods
.method protected populate([B)V
    .locals 3
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->populate([B)V

    .line 111
    iget-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;->content:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;->content:Ljava/lang/String;

    .line 112
    return-void
.end method
