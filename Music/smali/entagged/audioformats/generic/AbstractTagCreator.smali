.class public abstract Lentagged/audioformats/generic/AbstractTagCreator;
.super Ljava/lang/Object;
.source "AbstractTagCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeTagLength(Lentagged/audioformats/Tag;Ljava/util/List;)I
    .locals 3
    .parameter "tag"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTagCreator;->getFixedTagLength(Lentagged/audioformats/Tag;)I

    move-result v1

    .line 64
    .local v1, length:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 68
    :cond_0
    return v1
.end method

.method public convert(Lentagged/audioformats/Tag;)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lentagged/audioformats/generic/AbstractTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;
    .locals 6
    .parameter "tag"
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTagCreator;->getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;

    move-result-object v1

    .line 38
    .local v1, compatibleTag:Lentagged/audioformats/Tag;
    invoke-virtual {p0, v1}, Lentagged/audioformats/generic/AbstractTagCreator;->createFields(Lentagged/audioformats/Tag;)Ljava/util/List;

    move-result-object v3

    .line 39
    .local v3, fields:Ljava/util/List;
    invoke-virtual {p0, v1, v3}, Lentagged/audioformats/generic/AbstractTagCreator;->computeTagLength(Lentagged/audioformats/Tag;Ljava/util/List;)I

    move-result v4

    .line 41
    .local v4, tagSize:I
    add-int v0, v4, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, buf:Ljava/nio/ByteBuffer;
    move-object v0, p0

    move v5, p2

    .line 42
    invoke-virtual/range {v0 .. v5}, Lentagged/audioformats/generic/AbstractTagCreator;->create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V

    .line 44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 45
    return-object v2
.end method

.method protected abstract create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected createFields(Lentagged/audioformats/Tag;)Ljava/util/List;
    .locals 4
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .local v0, fields:Ljava/util/List;
    invoke-interface {p1}, Lentagged/audioformats/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .line 52
    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/generic/TagField;

    .line 54
    .local v1, frame:Lentagged/audioformats/generic/TagField;
    invoke-interface {v1}, Lentagged/audioformats/generic/TagField;->getRawContent()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v1           #frame:Lentagged/audioformats/generic/TagField;
    :cond_0
    return-object v0
.end method

.method protected abstract getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
.end method

.method protected abstract getFixedTagLength(Lentagged/audioformats/Tag;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public getTagLength(Lentagged/audioformats/Tag;)I
    .locals 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lentagged/audioformats/generic/AbstractTagCreator;->getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;

    move-result-object v0

    .line 73
    .local v0, compatibleTag:Lentagged/audioformats/Tag;
    invoke-virtual {p0, v0}, Lentagged/audioformats/generic/AbstractTagCreator;->createFields(Lentagged/audioformats/Tag;)Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, fields:Ljava/util/List;
    invoke-virtual {p0, v0, v1}, Lentagged/audioformats/generic/AbstractTagCreator;->computeTagLength(Lentagged/audioformats/Tag;Ljava/util/List;)I

    move-result v2

    return v2
.end method
