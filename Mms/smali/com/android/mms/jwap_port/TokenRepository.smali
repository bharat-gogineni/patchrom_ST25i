.class public Lcom/android/mms/jwap_port/TokenRepository;
.super Ljava/lang/Object;
.source "TokenRepository.java"


# static fields
.field private static CODEPAGE_DEFAULT:B

.field private static currentCodepage:B

.field private static urnMappings:Ljava/util/Properties;


# instance fields
.field private codepages:[[Ljava/util/Hashtable;

.field mContext:Landroid/content/Context;

.field private tokenDoc:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-byte v0, Lcom/android/mms/jwap_port/TokenRepository;->CODEPAGE_DEFAULT:B

    .line 47
    sget-byte v0, Lcom/android/mms/jwap_port/TokenRepository;->CODEPAGE_DEFAULT:B

    sput-byte v0, Lcom/android/mms/jwap_port/TokenRepository;->currentCodepage:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "publicIDInHex"
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    :try_start_0
    iput-object p2, p0, Lcom/android/mms/jwap_port/TokenRepository;->mContext:Landroid/content/Context;

    .line 65
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 66
    .local v2, tokenRepositoryMappings:Ljava/util/Properties;
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "jwap_port/tokenRepositoryMappings.properties"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 68
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, fileName:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/jwap_port/TokenRepository;->tokenDoc:Lorg/w3c/dom/Document;

    .line 75
    invoke-direct {p0}, Lcom/android/mms/jwap_port/TokenRepository;->initializeURNMappings()V

    .line 76
    invoke-direct {p0}, Lcom/android/mms/jwap_port/TokenRepository;->initializeHeaderInfo()V

    .line 77
    sget-byte v3, Lcom/android/mms/jwap_port/TokenRepository;->CODEPAGE_DEFAULT:B

    sput-byte v3, Lcom/android/mms/jwap_port/TokenRepository;->currentCodepage:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #tokenRepositoryMappings:Ljava/util/Properties;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, exp:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getByteValue(Ljava/lang/String;)B
    .locals 4
    .parameter "value"

    .prologue
    .line 214
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, exp:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "token not found!!!, returning literal"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private getCodepage(I)Lorg/w3c/dom/Element;
    .locals 5
    .parameter "codePageNo"

    .prologue
    .line 135
    iget-object v3, p0, Lcom/android/mms/jwap_port/TokenRepository;->tokenDoc:Lorg/w3c/dom/Document;

    const-string v4, "codepage"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 136
    .local v0, allCodepages:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 137
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 138
    .local v1, codepage:Lorg/w3c/dom/Element;
    const-string v3, "number"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 142
    .end local v1           #codepage:Lorg/w3c/dom/Element;
    :goto_1
    return-object v1

    .line 136
    .restart local v1       #codepage:Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1           #codepage:Lorg/w3c/dom/Element;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getKeyFromValue(Ljava/util/Iterator;B)Ljava/lang/String;
    .locals 2
    .parameter "iterator"
    .parameter "tokenValue"

    .prologue
    .line 269
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/jwap_port/TokenRepository;->getByteValue(Ljava/lang/String;)B

    move-result v1

    if-ne v1, p2, :cond_0

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .end local v0           #entry:Ljava/util/Map$Entry;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeAttributeNameTokens(Lorg/w3c/dom/Element;I)V
    .locals 10
    .parameter "codepage"
    .parameter "codePageNo"

    .prologue
    .line 174
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 175
    .local v2, attributeNameTokens:Ljava/util/Hashtable;
    iget-object v8, p0, Lcom/android/mms/jwap_port/TokenRepository;->tokenDoc:Lorg/w3c/dom/Document;

    const-string v9, "attribute-start"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 178
    .local v1, attributeNameNodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 179
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 180
    .local v0, anAttributeNameNode:Lorg/w3c/dom/Element;
    const-string v8, "token-value"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/mms/jwap_port/TokenRepository;->getByteValue(Ljava/lang/String;)B

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, token:Ljava/lang/String;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    .line 185
    .local v5, nameAndPrefixes:[Ljava/lang/String;
    const-string v8, "name"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, name:Ljava/lang/String;
    const-string v8, "prefix"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, prefix:Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v4, v5, v8

    .line 188
    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v0           #anAttributeNameNode:Lorg/w3c/dom/Element;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameAndPrefixes:[Ljava/lang/String;
    .end local v6           #prefix:Ljava/lang/String;
    .end local v7           #token:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    aget-object v8, v8, p2

    const/4 v9, 0x4

    aput-object v2, v8, v9

    .line 192
    return-void
.end method

.method private initializeAttributeNames(Lorg/w3c/dom/Element;I)V
    .locals 11
    .parameter "codepage"
    .parameter "codePageNo"

    .prologue
    .line 146
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 147
    .local v2, attributeNames:Ljava/util/Hashtable;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 148
    .local v3, attributePrefixes:Ljava/util/Hashtable;
    const-string v9, "attribute-start"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 151
    .local v1, attributeNameNodes:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 152
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 153
    .local v0, anAttributeNameNode:Lorg/w3c/dom/Element;
    const-string v9, "name"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, name:Ljava/lang/String;
    const-string v9, "prefix"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, prefix:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "token-value"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 151
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 163
    .local v8, prefixes:Ljava/util/Vector;
    invoke-virtual {v8, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v3, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    .end local v0           #anAttributeNameNode:Lorg/w3c/dom/Element;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #prefix:Ljava/lang/String;
    .end local v8           #prefixes:Ljava/util/Vector;
    :cond_1
    iget-object v9, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    aget-object v9, v9, p2

    const/4 v10, 0x1

    aput-object v2, v9, v10

    .line 168
    iget-object v9, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    aget-object v9, v9, p2

    const/4 v10, 0x2

    aput-object v3, v9, v10

    .line 169
    return-void
.end method

.method private initializeAttributeValues(Lorg/w3c/dom/Element;I)V
    .locals 6
    .parameter "codepage"
    .parameter "codePageNo"

    .prologue
    .line 195
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 196
    .local v2, attributeValues:Ljava/util/Hashtable;
    const-string v4, "attribute-value"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 199
    .local v1, attributeValueNodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 200
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 201
    .local v0, anAttributeValueNode:Lorg/w3c/dom/Element;
    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "token-value"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v0           #anAttributeValueNode:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    aget-object v4, v4, p2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 206
    return-void
.end method

.method private initializeHeaderInfo()V
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/mms/jwap_port/TokenRepository;->tokenDoc:Lorg/w3c/dom/Document;

    const-string v4, "codepage"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 97
    .local v2, total_codePages:I
    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v3

    const-class v4, Ljava/util/Hashtable;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 99
    invoke-direct {p0, v1}, Lcom/android/mms/jwap_port/TokenRepository;->getCodepage(I)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 100
    .local v0, codepage:Lorg/w3c/dom/Element;
    invoke-direct {p0, v0, v1}, Lcom/android/mms/jwap_port/TokenRepository;->initializeTags(Lorg/w3c/dom/Element;I)V

    .line 101
    invoke-direct {p0, v0, v1}, Lcom/android/mms/jwap_port/TokenRepository;->initializeAttributeNames(Lorg/w3c/dom/Element;I)V

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/android/mms/jwap_port/TokenRepository;->initializeAttributeNameTokens(Lorg/w3c/dom/Element;I)V

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/android/mms/jwap_port/TokenRepository;->initializeAttributeValues(Lorg/w3c/dom/Element;I)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0           #codepage:Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method

.method private initializeTags(Lorg/w3c/dom/Element;I)V
    .locals 6
    .parameter "codepage"
    .parameter "codePageNo"

    .prologue
    .line 121
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 122
    .local v3, tags:Ljava/util/Hashtable;
    const-string v4, "tag"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 124
    .local v2, tagNodes:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 125
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 126
    .local v0, aTag:Lorg/w3c/dom/Element;
    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "token-value"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0           #aTag:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 132
    return-void
.end method

.method private initializeURNMappings()V
    .locals 5

    .prologue
    .line 84
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/android/mms/jwap_port/TokenRepository;->urnMappings:Ljava/util/Properties;

    .line 86
    :try_start_0
    sget-object v2, Lcom/android/mms/jwap_port/TokenRepository;->urnMappings:Ljava/util/Properties;

    iget-object v3, p0, Lcom/android/mms/jwap_port/TokenRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "jwap_port/urnCodepageMappings.properties"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, fnfExp:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0           #fnfExp:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, ioExp:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCurrentCodepage(B)V
    .locals 0
    .parameter "codePageNo"

    .prologue
    .line 300
    sput-byte p0, Lcom/android/mms/jwap_port/TokenRepository;->currentCodepage:B

    .line 301
    return-void
.end method


# virtual methods
.method public getAttributeNameAndPrefix(B)[Ljava/lang/String;
    .locals 4
    .parameter "tokenValue"

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    sget-byte v3, Lcom/android/mms/jwap_port/TokenRepository;->currentCodepage:B

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget-object v0, v2, v3

    .line 237
    .local v0, attributeNameTokens:Ljava/util/Hashtable;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, token:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getAttributeValue(B)Ljava/lang/String;
    .locals 4
    .parameter "tokenValue"

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    sget-byte v3, Lcom/android/mms/jwap_port/TokenRepository;->currentCodepage:B

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aget-object v0, v2, v3

    .line 257
    .local v0, attributeValues:Ljava/util/Hashtable;
    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 258
    .local v1, iterator:Ljava/util/Iterator;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/jwap_port/TokenRepository;->getKeyFromValue(Ljava/util/Iterator;B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTagName(B)Ljava/lang/String;
    .locals 4
    .parameter "tokenValue"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/mms/jwap_port/TokenRepository;->codepages:[[Ljava/util/Hashtable;

    sget-byte v3, Lcom/android/mms/jwap_port/TokenRepository;->currentCodepage:B

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 231
    .local v1, tags:Ljava/util/Hashtable;
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 232
    .local v0, iterator:Ljava/util/Iterator;
    invoke-direct {p0, v0, p1}, Lcom/android/mms/jwap_port/TokenRepository;->getKeyFromValue(Ljava/util/Iterator;B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
