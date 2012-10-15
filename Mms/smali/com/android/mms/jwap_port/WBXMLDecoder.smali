.class public Lcom/android/mms/jwap_port/WBXMLDecoder;
.super Ljava/lang/Object;
.source "WBXMLDecoder.java"


# instance fields
.field private attributeBitMask:B

.field private encoding:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private parentBitMask:B

.field private publicId:Ljava/lang/String;

.field private publicIdIndex:B

.field private stringTable:Ljava/lang/String;

.field private tokenRepository:Lcom/android/mms/jwap_port/TokenRepository;

.field private wbxmlStream:Ljava/io/DataInputStream;

.field private xmlDocument:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicId:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicIdIndex:B

    .line 57
    const/16 v0, 0x40

    iput-byte v0, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->parentBitMask:B

    .line 59
    const/16 v0, -0x80

    iput-byte v0, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->attributeBitMask:B

    .line 67
    iput-object p1, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private decodeBody()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeRootElement()V

    .line 178
    return-void
.end method

.method private getTokenValue(B)B
    .locals 2
    .parameter "maskedTokenValue"

    .prologue
    .line 468
    and-int/lit8 v1, p1, 0x3f

    int-to-byte v0, v1

    .line 470
    .local v0, unmaskedTokenValue:B
    return v0
.end method

.method private hasAttributes(B)Z
    .locals 2
    .parameter "tokenValue"

    .prologue
    .line 265
    iget-byte v0, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->attributeBitMask:B

    and-int/2addr v0, p1

    iget-byte v1, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->attributeBitMask:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasContent(B)Z
    .locals 2
    .parameter "tokenValue"

    .prologue
    .line 269
    iget-byte v0, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->parentBitMask:B

    and-int/2addr v0, p1

    iget-byte v1, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->parentBitMask:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAttrNameToken(B)Z
    .locals 1
    .parameter "tokenValue"

    .prologue
    .line 459
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAttrValueToken(B)Z
    .locals 1
    .parameter "tokenValue"

    .prologue
    .line 463
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEntityToken(B)Z
    .locals 1
    .parameter "tokenValue"

    .prologue
    .line 406
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInlineStrToken(B)Z
    .locals 1
    .parameter "tokenValue"

    .prologue
    .line 455
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStringTableReferenceToken(B)Z
    .locals 1
    .parameter "tokenValue"

    .prologue
    .line 411
    const/16 v0, -0x7d

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPublicID()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x30

    const/4 v10, 0x7

    .line 139
    const/4 v8, 0x4

    new-array v2, v8, [B

    .line 140
    .local v2, multipleBytes:[B
    iget-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 141
    .local v3, nextByte:B
    if-nez v3, :cond_0

    .line 143
    iget-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    iput-byte v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicIdIndex:B

    .line 174
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 147
    .local v0, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v6, strBuf:Ljava/lang/StringBuffer;
    :goto_1
    and-int/lit16 v8, v3, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_2

    .line 149
    and-int/lit8 v8, v3, 0x7f

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_1

    .line 151
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v7, v8, 0x7

    .line 152
    .local v7, zerosToPumpIn:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v7, :cond_1

    .line 153
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    .end local v1           #j:I
    .end local v7           #zerosToPumpIn:I
    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 158
    goto :goto_1

    .line 159
    .end local v5           #str:Ljava/lang/String;
    :cond_2
    and-int/lit8 v8, v3, 0x7f

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    .restart local v5       #str:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v10, :cond_3

    .line 161
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v7, v8, 0x7

    .line 162
    .restart local v7       #zerosToPumpIn:I
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_3
    if-ge v1, v7, :cond_3

    .line 163
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 166
    .end local v1           #j:I
    .end local v7           #zerosToPumpIn:I
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 169
    .local v4, publicIdValue:I
    invoke-static {}, Lcom/android/mms/jwap_port/PublicIdentifiers;->getInstance()Lcom/android/mms/jwap_port/PublicIdentifiers;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/mms/jwap_port/PublicIdentifiers;->getPublicIdentifier(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicId:Ljava/lang/String;

    goto :goto_0
.end method

.method private readPublicIDFromStringTable()V
    .locals 6

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, c:C
    iget-object v2, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [C

    const/4 v5, 0x0

    aput-char v0, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    iget-byte v4, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicIdIndex:B

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, endIndex:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;

    iget-byte v3, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicIdIndex:B

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicId:Ljava/lang/String;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;

    iget-byte v3, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicIdIndex:B

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicId:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAttributes(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v3, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 274
    .local v0, attrTokenValue:B
    const-string v1, ""

    .line 275
    .local v1, currentAttrName:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    .line 276
    invoke-direct {p0, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isInlineStrToken(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-direct {p0, p1, v1}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeAttrValueAsInlineStr(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 300
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isEntityToken(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    invoke-direct {p0, p1, v1}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeEntityAsAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isStringTableReferenceToken(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 283
    .local v2, indexInStringTable:B
    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeAttributeFromStrTable(Lorg/w3c/dom/Element;Ljava/lang/String;B)V

    goto :goto_1

    .line 288
    .end local v2           #indexInStringTable:B
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isAttrNameToken(B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    invoke-direct {p0, p1, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeAttribute(Lorg/w3c/dom/Element;B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 292
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isAttrValueToken(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    invoke-direct {p0, p1, v1, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;B)V

    goto :goto_1

    .line 303
    :cond_5
    return-void
.end method

.method private writeAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;B)V
    .locals 4
    .parameter "element"
    .parameter "attrName"
    .parameter "attrTokenValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, partialAttrValue:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->tokenRepository:Lcom/android/mms/jwap_port/TokenRepository;

    invoke-virtual {v3, p3}, Lcom/android/mms/jwap_port/TokenRepository;->getAttributeValue(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, attrValue:Ljava/lang/String;
    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private writeAttrValueAsInlineStr(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 9
    .parameter "element"
    .parameter "attrName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 351
    .local v0, aChar:B
    const/16 v6, 0x400

    new-array v2, v6, [B

    .line 352
    .local v2, content:[B
    const/4 v3, 0x0

    .local v3, count:I
    move v4, v3

    .line 353
    .end local v3           #count:I
    .local v4, count:I
    :goto_0
    if-eqz v0, :cond_0

    .line 354
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    aput-byte v0, v2, v4

    .line 355
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    move v4, v3

    .end local v3           #count:I
    .restart local v4       #count:I
    goto :goto_0

    .line 358
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, previous_value:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, ""

    .end local v5           #previous_value:Ljava/lang/String;
    :cond_1
    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 362
    .local v1, attrValue:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->encoding:Ljava/lang/String;

    invoke-direct {v6, v2, v7, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private writeAttribute(Lorg/w3c/dom/Element;B)Ljava/lang/String;
    .locals 7
    .parameter "element"
    .parameter "attrTokenValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 306
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->tokenRepository:Lcom/android/mms/jwap_port/TokenRepository;

    invoke-virtual {v6, p2}, Lcom/android/mms/jwap_port/TokenRepository;->getAttributeNameAndPrefix(B)[Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, attributeNameAndPrefix:[Ljava/lang/String;
    const-string v3, ""

    .line 309
    .local v3, attributeValue:Ljava/lang/String;
    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, attributeName:Ljava/lang/String;
    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    move v4, v5

    .line 311
    .local v4, hasPrefix:Z
    :cond_0
    if-eqz v4, :cond_1

    .line 312
    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 313
    :cond_1
    iget-object v5, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-interface {v5, v1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 314
    .local v0, attrNode:Lorg/w3c/dom/Attr;
    invoke-interface {v0, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 315
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 316
    return-object v1
.end method

.method private writeAttributeFromStrTable(Lorg/w3c/dom/Element;Ljava/lang/String;B)V
    .locals 8
    .parameter "element"
    .parameter "attrName"
    .parameter "indexInStringTable"

    .prologue
    .line 335
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, partialAttrValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 337
    .local v1, c:C
    iget-object v4, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v1, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 341
    .local v2, endIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;

    invoke-virtual {v5, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, attrValue:Ljava/lang/String;
    invoke-interface {p1, p2, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private writeChildElement(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 212
    .local v5, maskedTokenValue:B
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    .line 213
    invoke-direct {p0, v5}, Lcom/android/mms/jwap_port/WBXMLDecoder;->getTokenValue(B)B

    move-result v0

    .line 214
    .local v0, actualTokenValue:B
    invoke-direct {p0, v5}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isInlineStrToken(B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    invoke-direct {p0, p1}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeContentAsInlineStr(Lorg/w3c/dom/Element;)V

    .line 247
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 248
    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isEntityToken(B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    invoke-direct {p0, p1}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeEntityContent(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 219
    :cond_2
    const/16 v6, -0x3d

    if-ne v5, v6, :cond_3

    .line 221
    invoke-direct {p0, p1}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeOpaqueContent(Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 222
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/mms/jwap_port/WBXMLDecoder;->isStringTableReferenceToken(B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 223
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 224
    .local v4, indexInStringTable:B
    invoke-direct {p0, p1, v4}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeContentFromStrTable(Lorg/w3c/dom/Element;I)V

    goto :goto_1

    .line 225
    .end local v4           #indexInStringTable:B
    :cond_4
    if-nez v0, :cond_5

    .line 226
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 227
    .local v2, codepageNo:B
    invoke-static {v2}, Lcom/android/mms/jwap_port/TokenRepository;->setCurrentCodepage(B)V

    goto :goto_1

    .line 230
    .end local v2           #codepageNo:B
    :cond_5
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->tokenRepository:Lcom/android/mms/jwap_port/TokenRepository;

    invoke-virtual {v6, v0}, Lcom/android/mms/jwap_port/TokenRepository;->getTagName(B)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, elementName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-interface {v6, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 236
    .local v1, childElement:Lorg/w3c/dom/Element;
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 237
    invoke-direct {p0, v5}, Lcom/android/mms/jwap_port/WBXMLDecoder;->hasAttributes(B)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 238
    invoke-direct {p0, v1}, Lcom/android/mms/jwap_port/WBXMLDecoder;->setAttributes(Lorg/w3c/dom/Element;)V

    .line 239
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/mms/jwap_port/WBXMLDecoder;->hasContent(B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    invoke-direct {p0, v1}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeChildElement(Lorg/w3c/dom/Element;)V

    .line 241
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 242
    goto :goto_0

    .line 249
    .end local v0           #actualTokenValue:B
    .end local v1           #childElement:Lorg/w3c/dom/Element;
    .end local v3           #elementName:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private writeContentAsInlineStr(Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 394
    .local v0, aChar:B
    const/16 v6, 0x400

    new-array v2, v6, [B

    .line 395
    .local v2, content:[B
    const/4 v3, 0x0

    .local v3, count:I
    move v4, v3

    .line 396
    .end local v3           #count:I
    .local v4, count:I
    :goto_0
    if-eqz v0, :cond_0

    .line 397
    add-int/lit8 v3, v4, 0x1

    .end local v4           #count:I
    .restart local v3       #count:I
    aput-byte v0, v2, v4

    .line 398
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    move v4, v3

    .end local v3           #count:I
    .restart local v4       #count:I
    goto :goto_0

    .line 400
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 401
    .local v1, attrValue:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-interface {v6, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 402
    .local v5, txtContent:Lorg/w3c/dom/Text;
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 403
    return-void
.end method

.method private writeContentFromStrTable(Lorg/w3c/dom/Element;I)V
    .locals 8
    .parameter "parent"
    .parameter "indexInStringTable"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, c:C
    iget-object v4, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v0, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 259
    .local v2, endIndex:I
    iget-object v4, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;

    invoke-virtual {v4, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, content:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    .line 261
    .local v3, txtContent:Lorg/w3c/dom/Text;
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 262
    return-void
.end method

.method private writeEntityAsAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 9
    .parameter "element"
    .parameter "attrName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 369
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, previous_value:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, ""

    .end local v3           #previous_value:Ljava/lang/String;
    :cond_0
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, attrValue:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 375
    .local v0, aChar:B
    :goto_0
    and-int/lit8 v6, v0, -0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1

    .line 377
    and-int/lit8 v6, v0, 0x7f

    int-to-byte v0, v6

    .line 378
    invoke-static {v0, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, str1:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 381
    goto :goto_0

    .line 383
    .end local v4           #str1:Ljava/lang/String;
    :cond_1
    invoke-static {v0, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, str2:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x7

    if-ge v6, v7, :cond_2

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 389
    .local v2, multipleByteValue:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private writeEntityContent(Lorg/w3c/dom/Element;)V
    .locals 9
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 415
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 416
    .local v1, attrValue:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 417
    .local v0, aChar:B
    :goto_0
    and-int/lit8 v6, v0, -0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_0

    .line 419
    and-int/lit8 v6, v0, 0x7f

    int-to-byte v0, v6

    .line 420
    invoke-static {v0, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, str1:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 423
    goto :goto_0

    .line 425
    .end local v3           #str1:Ljava/lang/String;
    :cond_0
    invoke-static {v0, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, str2:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 431
    .local v2, multipleByteValue:I
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 433
    .local v5, txtContent:Lorg/w3c/dom/Text;
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 434
    return-void
.end method

.method private writeOpaqueContent(Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 440
    .local v2, lengthOfOpaqueData:B
    new-array v3, v2, [B

    .line 441
    .local v3, opaqueDataBuf:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 442
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v3, v1

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_0
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 446
    .local v0, b:B
    :goto_1
    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    .line 447
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    goto :goto_1

    .line 449
    :cond_1
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->encoding:Ljava/lang/String;

    invoke-direct {v4, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 450
    .local v4, opaqueDataStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    const-string v7, ""

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 452
    .local v5, txtContent:Lorg/w3c/dom/Text;
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 453
    return-void
.end method

.method private writeRootElement()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 182
    .local v4, maskedTokenValue:B
    invoke-direct {p0, v4}, Lcom/android/mms/jwap_port/WBXMLDecoder;->getTokenValue(B)B

    move-result v0

    .line 183
    .local v0, actualTokenValue:B
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->tokenRepository:Lcom/android/mms/jwap_port/TokenRepository;

    invoke-virtual {v7, v0}, Lcom/android/mms/jwap_port/TokenRepository;->getTagName(B)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, rootElementName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 187
    .local v1, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {}, Lcom/android/mms/jwap_port/PublicIdentifiers;->getInstance()Lcom/android/mms/jwap_port/PublicIdentifiers;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/mms/jwap_port/PublicIdentifiers;->getSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, systemId:Ljava/lang/String;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicId:Ljava/lang/String;

    invoke-interface {v7, v5, v8, v6}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v2

    .line 194
    .local v2, docType:Lorg/w3c/dom/DocumentType;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v7, v8, v5, v2}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    .line 199
    invoke-direct {p0, v4}, Lcom/android/mms/jwap_port/WBXMLDecoder;->hasAttributes(B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/jwap_port/WBXMLDecoder;->setAttributes(Lorg/w3c/dom/Element;)V

    .line 201
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/mms/jwap_port/WBXMLDecoder;->hasContent(B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/jwap_port/WBXMLDecoder;->writeChildElement(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #docType:Lorg/w3c/dom/DocumentType;
    .end local v6           #systemId:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, exp:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 2
    .parameter "wbxmlStream"

    .prologue
    .line 71
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    .line 73
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    .line 78
    invoke-virtual {p0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->decodeProlog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->decodeBody()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->xmlDocument:Lorg/w3c/dom/Document;

    :goto_1
    return-object v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, exp:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public decodeProlog()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 100
    .local v5, version:B
    invoke-direct {p0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->readPublicID()V

    .line 101
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 102
    .local v1, charset:B
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->mContext:Landroid/content/Context;

    const-string v8, "jwap_port/charsets"

    invoke-static {v7, v8}, Lcom/android/mms/jwap_port/TransTable;->getTable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/jwap_port/TransTable;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/mms/jwap_port/TransTable;->code2str(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->encoding:Ljava/lang/String;

    .line 103
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 105
    .local v4, strtblSize:B
    if-gez v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v6

    .line 108
    :cond_1
    new-array v0, v4, [B

    .line 109
    .local v0, buffer:[B
    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->wbxmlStream:Ljava/io/DataInputStream;

    invoke-virtual {v7, v0, v6, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    if-lt v7, v4, :cond_0

    .line 113
    :try_start_0
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->encoding:Ljava/lang/String;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->stringTable:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    iget-byte v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicIdIndex:B

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/android/mms/jwap_port/WBXMLDecoder;->readPublicIDFromStringTable()V

    .line 120
    :cond_2
    invoke-static {}, Lcom/android/mms/jwap_port/PublicIdentifiers;->getInstance()Lcom/android/mms/jwap_port/PublicIdentifiers;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->publicId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/mms/jwap_port/PublicIdentifiers;->getPublicIdentifierValueHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, publicIDInHex:Ljava/lang/String;
    new-instance v6, Lcom/android/mms/jwap_port/TokenRepository;

    iget-object v7, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->mContext:Landroid/content/Context;

    invoke-direct {v6, v3, v7}, Lcom/android/mms/jwap_port/TokenRepository;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/mms/jwap_port/WBXMLDecoder;->tokenRepository:Lcom/android/mms/jwap_port/TokenRepository;

    .line 124
    const/4 v6, 0x1

    goto :goto_0

    .line 114
    .end local v3           #publicIDInHex:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 115
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method
