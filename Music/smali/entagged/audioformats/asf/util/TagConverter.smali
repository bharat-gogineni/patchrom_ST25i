.class public Lentagged/audioformats/asf/util/TagConverter;
.super Ljava/lang/Object;
.source "TagConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignCommonTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V
    .locals 5
    .parameter "tag"
    .parameter "description"

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 66
    new-instance v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    .end local v1           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    const-string v2, "WM/AlbumTitle"

    invoke-direct {v1, v2, v4}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    .line 68
    .restart local v1       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    .line 73
    :goto_0
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 74
    new-instance v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    .end local v1           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    const-string v2, "WM/TrackNumber"

    invoke-direct {v1, v2, v4}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    .line 76
    .restart local v1       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    .line 81
    :goto_1
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 82
    new-instance v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    .end local v1           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    const-string v2, "WM/Year"

    invoke-direct {v1, v2, v4}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    .line 84
    .restart local v1       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    .line 89
    :goto_2
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 90
    new-instance v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    .end local v1           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    const-string v2, "WM/Genre"

    invoke-direct {v1, v2, v4}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    .line 92
    .restart local v1       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    .line 94
    sget-object v2, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 96
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 97
    new-instance v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    .end local v1           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    const-string v2, "WM/GenreID"

    invoke-direct {v1, v2, v4}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V

    .line 99
    .restart local v1       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    .line 108
    .end local v0           #index:I
    :goto_3
    return-void

    .line 71
    :cond_0
    const-string v2, "WM/AlbumTitle"

    invoke-virtual {p1, v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto/16 :goto_0

    .line 79
    :cond_1
    const-string v2, "WM/TrackNumber"

    invoke-virtual {p1, v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto/16 :goto_1

    .line 87
    :cond_2
    const-string v2, "WM/Year"

    invoke-virtual {p1, v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto :goto_2

    .line 102
    .restart local v0       #index:I
    :cond_3
    const-string v2, "WM/GenreID"

    invoke-virtual {p1, v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto :goto_3

    .line 105
    .end local v0           #index:I
    :cond_4
    const-string v2, "WM/Genre"

    invoke-virtual {p1, v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 106
    const-string v2, "WM/GenreID"

    invoke-virtual {p1, v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    goto :goto_3
.end method

.method public static assignOptionalTagValues(Lentagged/audioformats/Tag;Lentagged/audioformats/asf/data/ExtendedContentDescription;)V
    .locals 7
    .parameter "tag"
    .parameter "descriptor"

    .prologue
    .line 121
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 123
    .local v2, tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/TagField;

    .line 126
    .local v0, currentField:Lentagged/audioformats/generic/TagField;
    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    new-instance v3, Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lentagged/audioformats/asf/data/ContentDescriptor;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v2           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    .local v3, tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    :try_start_1
    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->isBinary()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->getRawContent()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lentagged/audioformats/asf/data/ContentDescriptor;->setBinaryValue([B)V

    .line 134
    :goto_1
    invoke-virtual {p1, v3}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    move-object v2, v3

    .end local v3           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    .restart local v2       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    goto :goto_0

    .line 132
    .end local v2           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    .restart local v3       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lentagged/audioformats/asf/data/ContentDescriptor;->setStringValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 137
    .end local v0           #currentField:Lentagged/audioformats/generic/TagField;
    .end local v3           #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    .restart local v2       #tmp:Lentagged/audioformats/asf/data/ContentDescriptor;
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v4           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_2
    return-void

    .line 136
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static createContentDescription(Lentagged/audioformats/Tag;)Lentagged/audioformats/asf/data/ContentDescription;
    .locals 3
    .parameter "tag"

    .prologue
    .line 158
    new-instance v1, Lentagged/audioformats/asf/data/ContentDescription;

    invoke-direct {v1}, Lentagged/audioformats/asf/data/ContentDescription;-><init>()V

    .line 159
    .local v1, result:Lentagged/audioformats/asf/data/ContentDescription;
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    .line 160
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    .line 161
    invoke-interface {p0}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    .line 162
    invoke-static {p0}, Lentagged/audioformats/asf/util/AsfCopyrightField;->getCopyright(Lentagged/audioformats/Tag;)Lentagged/audioformats/generic/TagTextField;

    move-result-object v0

    .line 163
    .local v0, cpField:Lentagged/audioformats/generic/TagTextField;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lentagged/audioformats/asf/data/ContentDescription;->setCopyRight(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-object v1
.end method

.method public static createTagOf(Lentagged/audioformats/asf/data/AsfHeader;)Lentagged/audioformats/Tag;
    .locals 6
    .parameter "source"

    .prologue
    .line 199
    new-instance v4, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v4}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    .line 204
    .local v4, result:Lentagged/audioformats/generic/GenericTag;
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 205
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->setArtist(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->setComment(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->setTitle(Ljava/lang/String;)V

    .line 208
    new-instance v0, Lentagged/audioformats/asf/util/AsfCopyrightField;

    invoke-direct {v0}, Lentagged/audioformats/asf/util/AsfCopyrightField;-><init>()V

    .line 214
    .local v0, cpField:Lentagged/audioformats/asf/util/AsfCopyrightField;
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getContentDescription()Lentagged/audioformats/asf/data/ContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lentagged/audioformats/asf/util/AsfCopyrightField;->setContent(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v4, v0}, Lentagged/audioformats/generic/GenericTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 221
    .end local v0           #cpField:Lentagged/audioformats/asf/util/AsfCopyrightField;
    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 222
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getTrack()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->setTrack(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getYear()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->setYear(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getGenre()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->setGenre(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->setAlbum(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lentagged/audioformats/asf/data/AsfHeader;->getExtendedContentDescription()Lentagged/audioformats/asf/data/ExtendedContentDescription;

    move-result-object v2

    .line 233
    .local v2, extDesc:Lentagged/audioformats/asf/data/ExtendedContentDescription;
    invoke-virtual {v2}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptors()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 234
    .local v3, it:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 237
    .local v1, current:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->isCommon()Z

    move-result v5

    if-nez v5, :cond_1

    .line 238
    new-instance v5, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;

    invoke-direct {v5, v1}, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;-><init>(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    invoke-virtual {v4, v5}, Lentagged/audioformats/generic/GenericTag;->add(Lentagged/audioformats/generic/TagField;)V

    goto :goto_0

    .line 242
    .end local v1           #current:Lentagged/audioformats/asf/data/ContentDescriptor;
    .end local v2           #extDesc:Lentagged/audioformats/asf/data/ExtendedContentDescription;
    .end local v3           #it:Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method
