.class public Lentagged/audioformats/mp3/Id3v2Tag;
.super Lentagged/audioformats/generic/AbstractTag;
.source "Id3v2Tag.java"


# static fields
.field public static DEFAULT_ENCODING:Ljava/lang/String;

.field public static ID3V22:B

.field public static ID3V23:B

.field public static ID3V24:B


# instance fields
.field private hasV1:Z

.field private representedVersion:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "UTF-16"

    sput-object v0, Lentagged/audioformats/mp3/Id3v2Tag;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    .line 50
    const/4 v0, 0x1

    sput-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    .line 55
    const/4 v0, 0x2

    sput-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->hasV1:Z

    .line 73
    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    iput-byte v0, p0, Lentagged/audioformats/mp3/Id3v2Tag;->representedVersion:B

    .line 81
    return-void
.end method


# virtual methods
.method protected createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 100
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TALB"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 109
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TPE1"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 1
    .parameter "content"

    .prologue
    .line 119
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-direct {v0, p1}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 129
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TCON"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 139
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TIT2"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 149
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TRCK"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
    .locals 2
    .parameter "content"

    .prologue
    .line 159
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TDRC"

    invoke-direct {v0, v1, p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "TALB"

    return-object v0
.end method

.method protected getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "TPE1"

    return-object v0
.end method

.method public getComment()Ljava/util/List;
    .locals 5

    .prologue
    .line 186
    invoke-super {p0}, Lentagged/audioformats/generic/AbstractTag;->getComment()Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, comments:Ljava/util/List;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, currIso:Ljava/lang/String;
    const/4 v3, 0x0

    .line 189
    .local v3, top:Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    if-eqz v4, :cond_0

    .line 191
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #top:Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;
    check-cast v3, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    .line 192
    .restart local v3       #top:Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;
    invoke-virtual {v3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;->getLangage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 193
    const/4 v3, 0x0

    .line 189
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 200
    :cond_2
    if-eqz v3, :cond_3

    .line 201
    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 203
    :cond_3
    return-object v0
.end method

.method protected getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string v0, "COMM"

    return-object v0
.end method

.method protected getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "TCON"

    return-object v0
.end method

.method protected getTitleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "TIT2"

    return-object v0
.end method

.method protected getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "TRCK"

    return-object v0
.end method

.method protected getYearId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "TDRC"

    return-object v0
.end method

.method protected hasId3v1(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 281
    iput-boolean p1, p0, Lentagged/audioformats/mp3/Id3v2Tag;->hasV1:Z

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id3v2 "

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
