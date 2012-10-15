.class public Lentagged/audioformats/asf/data/ExtendedContentDescription;
.super Lentagged/audioformats/asf/data/Chunk;
.source "ExtendedContentDescription.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final descriptors:Ljava/util/ArrayList;

.field private indexMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 60
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;-><init>(JLjava/math/BigInteger;)V

    .line 61
    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1
    .parameter "pos"
    .parameter "chunkLen"

    .prologue
    .line 72
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lentagged/audioformats/asf/data/Chunk;-><init>(Lentagged/audioformats/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    .line 74
    return-void
.end method


# virtual methods
.method public addDescriptor(Lentagged/audioformats/asf/data/ContentDescriptor;)V
    .locals 4
    .parameter "toAdd"

    .prologue
    .line 83
    sget-boolean v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public addOrReplace(Lentagged/audioformats/asf/data/ContentDescriptor;)V
    .locals 2
    .parameter "descriptor"

    .prologue
    .line 98
    sget-boolean v0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->addDescriptor(Lentagged/audioformats/asf/data/ContentDescriptor;)V

    .line 106
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    const-string v1, "WM/AlbumTitle"

    invoke-virtual {p0, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    .line 115
    .local v0, result:Lentagged/audioformats/asf/data/ContentDescriptor;
    if-nez v0, :cond_0

    .line 116
    const-string v1, ""

    .line 118
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 9

    .prologue
    .line 139
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v5, result:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    .local v0, content:Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    iget-object v6, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 145
    .local v4, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 147
    .local v2, current:Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-virtual {v2}, Lentagged/audioformats/asf/data/ContentDescriptor;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .end local v2           #current:Lentagged/audioformats/asf/data/ContentDescriptor;
    .end local v4           #it:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 157
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    .end local v3           #e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 149
    .restart local v0       #content:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #it:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 151
    .local v1, contentBytes:[B
    sget-object v6, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {v6}, Lentagged/audioformats/asf/data/GUID;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 153
    array-length v6, v1

    add-int/lit8 v6, v6, 0x18

    int-to-long v6, v6

    const/16 v8, 0x8

    invoke-static {v6, v7, v8}, Lentagged/audioformats/asf/util/Utils;->getBytes(JI)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 155
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;
    .locals 6
    .parameter "name"

    .prologue
    .line 170
    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 171
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 173
    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 175
    .local v0, current:Lentagged/audioformats/asf/data/ContentDescriptor;
    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0           #current:Lentagged/audioformats/asf/data/ContentDescriptor;
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 179
    .local v2, pos:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 180
    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 182
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDescriptors()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 5

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, result:Ljava/lang/String;
    const-string v3, "WM/Genre"

    invoke-virtual {p0, v3}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v1

    .line 210
    .local v1, prop:Lentagged/audioformats/asf/data/ContentDescriptor;
    if-nez v1, :cond_2

    .line 211
    const-string v3, "WM/GenreID"

    invoke-virtual {p0, v3}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v1

    .line 212
    if-nez v1, :cond_1

    .line 213
    const-string v2, ""

    .line 232
    :cond_0
    :goto_0
    return-object v2

    .line 215
    :cond_1
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 219
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, genreNum:I
    if-ltz v0, :cond_0

    sget-object v3, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 222
    sget-object v3, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    aget-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0           #genreNum:I
    :cond_2
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 224
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    const-string v1, "WM/TrackNumber"

    invoke-virtual {p0, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    .line 242
    .local v0, result:Lentagged/audioformats/asf/data/ContentDescriptor;
    if-nez v0, :cond_0

    .line 243
    const-string v1, ""

    .line 245
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    const-string v1, "WM/Year"

    invoke-virtual {p0, v1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    .line 255
    .local v0, result:Lentagged/audioformats/asf/data/ContentDescriptor;
    if-nez v0, :cond_0

    .line 256
    const-string v1, ""

    .line 258
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    .prologue
    .line 268
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lentagged/audioformats/asf/data/Chunk;->prettyPrint()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, result:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    const-string v4, "\nExtended Content Description:\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    iget-object v3, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    iget-object v4, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lentagged/audioformats/asf/data/ContentDescriptor;

    move-object v1, v3

    check-cast v1, [Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 272
    .local v1, list:[Lentagged/audioformats/asf/data/ContentDescriptor;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 274
    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 276
    sget-object v3, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public remove(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;
    .locals 2
    .parameter "id"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lentagged/audioformats/asf/data/ExtendedContentDescription;->getDescriptor(Ljava/lang/String;)Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    .line 290
    .local v0, result:Lentagged/audioformats/asf/data/ContentDescriptor;
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->descriptors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lentagged/audioformats/asf/data/ExtendedContentDescription;->indexMap:Ljava/util/HashMap;

    .line 294
    return-object v0
.end method
