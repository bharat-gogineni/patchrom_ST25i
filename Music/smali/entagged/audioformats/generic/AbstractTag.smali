.class public abstract Lentagged/audioformats/generic/AbstractTag;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Lentagged/audioformats/Tag;


# instance fields
.field protected commonNumber:I

.field protected fields:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Lentagged/audioformats/generic/TagField;)V
    .locals 3
    .parameter "field"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 68
    .local v0, list:Ljava/util/List;
    if-nez v0, :cond_2

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .restart local v0       #list:Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget v1, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method protected abstract createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "id"

    .prologue
    .line 219
    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 221
    .local v0, list:Ljava/util/List;
    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    :cond_0
    return-object v0
.end method

.method public getAlbum()Ljava/util/List;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAlbumId()Ljava/lang/String;
.end method

.method public getArtist()Ljava/util/List;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getArtistId()Ljava/lang/String;
.end method

.method public getComment()Ljava/util/List;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCommentId()Ljava/lang/String;
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    .local v0, it:Ljava/util/Iterator;
    new-instance v1, Lentagged/audioformats/generic/AbstractTag$1;

    invoke-direct {v1, p0, v0}, Lentagged/audioformats/generic/AbstractTag$1;-><init>(Lentagged/audioformats/generic/AbstractTag;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getFirstAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getFirstArtist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 333
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getFirstComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 343
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getGenreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 353
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getFirstTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTitleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getFirstTrack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 373
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getFirstYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getYearId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 383
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagTextField;

    invoke-interface {v1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getGenre()Ljava/util/List;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getGenreId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getGenreId()Ljava/lang/String;
.end method

.method public getTitle()Ljava/util/List;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTitleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTitleId()Ljava/lang/String;
.end method

.method public getTrack()Ljava/util/List;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTrackId()Ljava/lang/String;
.end method

.method public getYear()Ljava/util/List;
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getYearId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getYearId()Ljava/lang/String;
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lentagged/audioformats/Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 502
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setTitle(Ljava/lang/String;)V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getArtist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setArtist(Ljava/lang/String;)V

    .line 506
    :cond_1
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getAlbum()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 507
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setAlbum(Ljava/lang/String;)V

    .line 508
    :cond_2
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getYear()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 509
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setYear(Ljava/lang/String;)V

    .line 510
    :cond_3
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getComment()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 511
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setComment(Ljava/lang/String;)V

    .line 512
    :cond_4
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getTrack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 513
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setTrack(Ljava/lang/String;)V

    .line 514
    :cond_5
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getGenre()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 515
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->setGenre(Ljava/lang/String;)V

    .line 516
    :cond_6
    return-void
.end method

.method public set(Lentagged/audioformats/generic/TagField;)V
    .locals 5
    .parameter "field"

    .prologue
    .line 524
    if-nez p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    iget-object v3, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 530
    .local v2, removed:Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    iget v3, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    goto :goto_0

    .line 537
    .end local v2           #removed:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 538
    .local v1, l:Ljava/util/List;
    if-eqz v1, :cond_3

    .line 539
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/TagField;

    .line 540
    .local v0, f:Lentagged/audioformats/generic/TagField;
    invoke-interface {v0, p1}, Lentagged/audioformats/generic/TagField;->copyContent(Lentagged/audioformats/generic/TagField;)V

    goto :goto_0

    .line 545
    .end local v0           #f:Lentagged/audioformats/generic/TagField;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #l:Ljava/util/List;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .restart local v1       #l:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v3, p0, Lentagged/audioformats/generic/AbstractTag;->fields:Ljava/util/HashMap;

    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-interface {p1}, Lentagged/audioformats/generic/TagField;->isCommon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    iget v3, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lentagged/audioformats/generic/AbstractTag;->commonNumber:I

    goto :goto_0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createAlbumField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 559
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createArtistField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 568
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createCommentField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 577
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createGenreField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 607
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createTitleField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 616
    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createTrackField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 625
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTag;->createYearField(Ljava/lang/String;)Lentagged/audioformats/generic/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTag;->set(Lentagged/audioformats/generic/TagField;)V

    .line 634
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 642
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 643
    .local v2, out:Ljava/lang/StringBuffer;
    const-string v3, "Tag content:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    invoke-virtual {p0}, Lentagged/audioformats/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 645
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/TagField;

    .line 647
    .local v0, field:Lentagged/audioformats/generic/TagField;
    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 650
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 653
    .end local v0           #field:Lentagged/audioformats/generic/TagField;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
