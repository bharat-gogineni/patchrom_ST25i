.class public Lentagged/audioformats/ape/ApeTag;
.super Lentagged/audioformats/generic/AbstractTag;
.source "ApeTag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 53
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagTextField;

    const-string v1, "Album"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 50
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagTextField;

    const-string v1, "Artist"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 65
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagTextField;

    const-string v1, "Comment"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 68
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagTextField;

    const-string v1, "Genre"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 56
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagTextField;

    const-string v1, "Title"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 59
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagTextField;

    const-string v1, "Track"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 62
    new-instance v0, Lentagged/audioformats/ape/util/ApeTagTextField;

    const-string v1, "Year"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/ape/util/ApeTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "Album"

    return-object v0
.end method

.method protected getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "Artist"

    return-object v0
.end method

.method protected getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "Comment"

    return-object v0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "Genre"

    return-object v0
.end method

.method protected getTitleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Title"

    return-object v0
.end method

.method protected getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "Track"

    return-object v0
.end method

.method protected getYearId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "Year"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lentagged/audioformats/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
