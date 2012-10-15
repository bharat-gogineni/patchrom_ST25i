.class public Lcom/android/mms/data/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    return-void
.end method

.method public static blockingGetByUris([Landroid/os/Parcelable;)Lcom/android/mms/data/ContactList;
    .locals 10
    .parameter "uris"

    .prologue
    .line 62
    new-instance v5, Lcom/android/mms/data/ContactList;

    invoke-direct {v5}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 63
    .local v5, list:Lcom/android/mms/data/ContactList;
    if-eqz p0, :cond_2

    array-length v8, p0

    if-lez v8, :cond_2

    .line 64
    move-object v0, p0

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .local v6, p:Landroid/os/Parcelable;
    move-object v7, v6

    .line 65
    check-cast v7, Landroid/net/Uri;

    .line 66
    .local v7, uri:Landroid/net/Uri;
    const-string v8, "tel"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 68
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v5, v1}, Lcom/android/mms/data/ContactList;->add(Lcom/android/mms/data/Contact;)Z

    .line 64
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v6           #p:Landroid/os/Parcelable;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {p0}, Lcom/android/mms/data/Contact;->getByPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v5, v2}, Lcom/android/mms/data/ContactList;->addAll(Ljava/util/Collection;)Z

    .line 76
    .end local v0           #arr$:[Landroid/os/Parcelable;
    .end local v2           #contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    return-object v5
.end method

.method public static getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;
    .locals 6
    .parameter "spaceSepIds"
    .parameter "canBlock"

    .prologue
    .line 84
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 85
    .local v3, list:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/RecipientIdCache$Entry;

    .line 86
    .local v1, entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 88
    .local v0, contact:Lcom/android/mms/data/Contact;
    iget-wide v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/data/Contact;->setRecipientId(J)V

    .line 89
    invoke-virtual {v3, v0}, Lcom/android/mms/data/ContactList;->add(Lcom/android/mms/data/Contact;)Z

    goto :goto_0

    .line 92
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    :cond_1
    return-object v3
.end method

.method public static getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;
    .locals 4
    .parameter
    .parameter "canBlock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, numbers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 30
    .local v1, list:Lcom/android/mms/data/ContactList;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    invoke-static {v2, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/mms/data/ContactList;->add(Lcom/android/mms/data/Contact;)Z

    goto :goto_0

    .line 35
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;
    .locals 7
    .parameter "semiSepNumbers"
    .parameter "canBlock"
    .parameter "replaceNumber"

    .prologue
    .line 41
    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 42
    .local v4, list:Lcom/android/mms/data/ContactList;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 43
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 44
    invoke-static {v5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 45
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {v1, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->add(Lcom/android/mms/data/Contact;)Z

    .line 42
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v5           #number:Ljava/lang/String;
    :cond_2
    return-object v4
.end method


# virtual methods
.method public add(ILcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "index"
    .parameter "contact"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p2, Lcom/android/mms/data/Contact;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/ContactList;->add(ILcom/android/mms/data/Contact;)V

    return-void
.end method

.method public add(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .parameter "contact"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/android/mms/data/Contact;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/data/ContactList;->add(Lcom/android/mms/data/Contact;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/data/Contact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/data/Contact;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 267
    .local v0, contact:Lcom/android/mms/data/Contact;
    iget-object v2, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/data/Contact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/data/Contact;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 259
    .local v0, contact:Lcom/android/mms/data/Contact;
    iget-object v2, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 288
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 289
    return-void
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 157
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v2, 0x1

    .line 161
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 195
    if-ne p0, p1, :cond_0

    .line 196
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 198
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 199
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 202
    check-cast v0, Lcom/android/mms/data/ContactList;

    .line 204
    .local v0, contacts:Lcom/android/mms/data/ContactList;
    iget-object v1, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    iget-object v2, v0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public formatNames([CLjava/lang/String;)I
    .locals 8
    .parameter "buffer"
    .parameter "separator"

    .prologue
    const/4 v7, 0x0

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 115
    .local v0, c:Lcom/android/mms/data/Contact;
    const/4 v3, 0x0

    .line 116
    .local v3, length:I
    if-lez v1, :cond_3

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 118
    add-int v5, v1, v3

    array-length v6, p1

    if-le v5, v6, :cond_1

    .line 119
    array-length v5, p1

    sub-int v3, v5, v1

    .line 121
    :cond_1
    invoke-virtual {p2, v7, v3, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 122
    add-int/2addr v1, v3

    .line 123
    array-length v5, p1

    if-ne v1, v5, :cond_3

    .line 139
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #length:I
    :cond_2
    :goto_0
    return v1

    .line 128
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #length:I
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 130
    add-int v5, v1, v3

    array-length v6, p1

    if-le v5, v6, :cond_4

    .line 131
    array-length v5, p1

    sub-int v3, v5, v1

    .line 133
    :cond_4
    invoke-virtual {v4, v7, v3, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 134
    add-int/2addr v1, v3

    .line 135
    array-length v5, p1

    if-ne v1, v5, :cond_0

    goto :goto_0
.end method

.method public formatNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 105
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 106
    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 107
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 109
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers(Z)[Ljava/lang/String;
    .locals 5
    .parameter "scrubForMmsAddress"

    .prologue
    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 172
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, number:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 179
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getSortedCompareKeys()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getCompareKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 218
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(I)Lcom/android/mms/data/Contact;
    .locals 2
    .parameter "index"

    .prologue
    .line 274
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 275
    .local v0, old:Lcom/android/mms/data/Contact;
    iget-object v1, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 276
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/mms/data/ContactList;->remove(I)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 282
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 294
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    const-string v0, ";"

    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    .locals 2
    .parameter "index"
    .parameter "element"

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 239
    .local v0, old:Lcom/android/mms/data/Contact;
    iget-object v1, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/android/mms/data/ContactList;->mContactSet:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p2, Lcom/android/mms/data/Contact;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/ContactList;->set(ILcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getSortedCompareKeys()Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    .local v1, compareKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 226
    if-eqz v2, :cond_0

    .line 227
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/AddressUtils;->cutPhoneNumberTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
