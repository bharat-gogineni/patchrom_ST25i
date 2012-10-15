.class public Lcom/android/mms/jwap_port/PublicIdentifiers;
.super Ljava/lang/Object;
.source "PublicIdentifiers.java"


# static fields
.field private static instance:Lcom/android/mms/jwap_port/PublicIdentifiers;


# instance fields
.field private publicIdentifiers:Ljava/util/Hashtable;

.field private systemIdentifiers:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcom/android/mms/jwap_port/PublicIdentifiers;->initialize()V

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/android/mms/jwap_port/PublicIdentifiers;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/mms/jwap_port/PublicIdentifiers;->instance:Lcom/android/mms/jwap_port/PublicIdentifiers;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/mms/jwap_port/PublicIdentifiers;

    invoke-direct {v0}, Lcom/android/mms/jwap_port/PublicIdentifiers;-><init>()V

    sput-object v0, Lcom/android/mms/jwap_port/PublicIdentifiers;->instance:Lcom/android/mms/jwap_port/PublicIdentifiers;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/mms/jwap_port/PublicIdentifiers;->instance:Lcom/android/mms/jwap_port/PublicIdentifiers;

    return-object v0
.end method

.method private getKeyFromValue(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iterator"
    .parameter "publicId"

    .prologue
    .line 162
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .end local v0           #entry:Ljava/util/Map$Entry;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "1"

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    .line 56
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "0"

    const-string v2, "STRING_TABLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "1"

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "2"

    const-string v2, "-//WAPFORUM//DTD WML 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "3"

    const-string v2, "-//WAPFORUM//DTD WTA 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "4"

    const-string v2, "-//WAPFORUM//DTD WML 1.1//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "5"

    const-string v2, "-//WAPFORUM//DTD SI 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "6"

    const-string v2, "-//WAPFORUM//DTD SL 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "7"

    const-string v2, "-//WAPFORUM//DTD CO 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "8"

    const-string v2, "-//WAPFORUM//DTD CHANNEL 1.1//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "9"

    const-string v2, "-//WAPFORUM//DTD WML 1.2//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "A"

    const-string v2, "-//WAPFORUM//DTD WML 1.3//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "B"

    const-string v2, "-//WAPFORUM//DTD PROV 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "C"

    const-string v2, "-//WAPFORUM//DTD WTA-WML 1.2//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "D"

    const-string v2, "-//WAPFORUM//DTD CHANNEL 1.2//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "E"

    const-string v2, "-//OMA//DTD DRMREL 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "1100"

    const-string v2, "-//PHONE.COM//DTD ALERT 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "FD1"

    const-string v2, "-//SYNCML//DTD SyncML 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "FD2"

    const-string v2, "-//SYNCML//DTD DevInf 1.0//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "FD3"

    const-string v2, "-//SYNCML//DTD SyncML 1.1//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v1, "FD4"

    const-string v2, "-//SYNCML//DTD DevInf 1.1//EN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    .line 91
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "STRING_TABLE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "UNKNOWN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD WML 1.0//EN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD WTA 1.0//EN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD WML 1.1//EN"

    const-string v2, "http://www.wapforum.org/DTD/wml_1_1.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD SI 1.0//EN"

    const-string v2, "http://www.wapforum.org/DTD/si.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD SL 1.0//EN"

    const-string v2, "http://www.wapforum.org/DTD/sl.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD CO 1.0//EN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD CHANNEL 1.1//EN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD WML 1.2//EN"

    const-string v2, "http://www.wapforum.org/DTD/wml12.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD WML 1.3//EN"

    const-string v2, "http://www.wapforum.org/DTD/wml13.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD PROV 1.0//EN"

    const-string v2, "http://www.wapforum.org/DTD/prov.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD WTA-WML 1.2//EN"

    const-string v2, "http://www.wapforum.org/DTD/wta-wml12.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//WAPFORUM//DTD CHANNEL 1.2//EN"

    const-string v2, "http://www.wapforum.org/DTD/channel12.dtd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//OMA//DTD DRMREL 1.0//EN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    const-string v1, "-//PHONE.COM//DTD ALERT 1.0//EN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method


# virtual methods
.method public getPublicIdentifier(I)Ljava/lang/String;
    .locals 4
    .parameter "publicIdentifier"

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 142
    :cond_0
    return-object v1
.end method

.method public getPublicIdentifierValueHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "publicId"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->publicIdentifiers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, iter:Ljava/util/Iterator;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/jwap_port/PublicIdentifiers;->getKeyFromValue(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, hexValue:Ljava/lang/String;
    return-object v0
.end method

.method public getSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "publicIdentifier"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/jwap_port/PublicIdentifiers;->systemIdentifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
