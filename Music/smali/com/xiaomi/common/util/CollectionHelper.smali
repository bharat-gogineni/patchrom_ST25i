.class public Lcom/xiaomi/common/util/CollectionHelper;
.super Ljava/lang/Object;
.source "CollectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/util/CollectionHelper$Predication;,
        Lcom/xiaomi/common/util/CollectionHelper$LongCollection;,
        Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;
    }
.end annotation


# static fields
.field public static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/common/util/CollectionHelper;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static asLongCollection([JI)Ljava/util/Collection;
    .locals 1
    .parameter "src"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JI)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/common/util/CollectionHelper$LongCollection;-><init>([JI)V

    return-object v0
.end method

.method public static castTo(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TS;>;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, src:Ljava/util/Collection;,"Ljava/util/Collection<TS;>;"
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;

    invoke-direct {v0, p0}, Lcom/xiaomi/common/util/CollectionHelper$CollectionCaster;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static compressToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-wide/16 v7, 0x0

    .line 173
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    :cond_0
    const-string v5, ""

    .line 190
    :goto_0
    return-object v5

    .line 176
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 178
    .local v2, n:J
    cmp-long v5, v2, v7

    if-nez v5, :cond_2

    .line 179
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 181
    :cond_2
    :goto_2
    cmp-long v5, v2, v7

    if-eqz v5, :cond_3

    .line 182
    const-wide/16 v5, 0xf

    and-long/2addr v5, v2

    long-to-int v0, v5

    .line 183
    .local v0, digit:I
    const/4 v5, 0x4

    shr-long/2addr v2, v5

    .line 184
    sget-object v5, Lcom/xiaomi/common/util/CollectionHelper;->HEX_DIGITS:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 186
    .end local v0           #digit:I
    :cond_3
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    .end local v2           #n:J
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static compressToString([JI)Ljava/lang/String;
    .locals 1
    .parameter "values"
    .parameter "len"

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/xiaomi/common/util/CollectionHelper;->asLongCollection([JI)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/common/util/CollectionHelper;->compressToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFromString(Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter "q"
    .parameter "maxLen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 195
    if-nez p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 200
    .local v4, qlen:I
    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    .line 203
    const-wide/16 v2, 0x0

    .line 204
    .local v2, n:J
    const/4 v5, 0x0

    .line 205
    .local v5, shift:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 207
    .local v0, c:C
    const/16 v6, 0x3b

    if-ne v0, v6, :cond_3

    .line 208
    if-lez p2, :cond_2

    int-to-long v6, p2

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    .line 210
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 213
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    const-wide/16 v2, 0x0

    .line 215
    const/4 v5, 0x0

    .line 205
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_3
    const/16 v6, 0x30

    if-lt v0, v6, :cond_4

    const/16 v6, 0x39

    if-gt v0, v6, :cond_4

    .line 218
    add-int/lit8 v6, v0, -0x30

    shl-int/2addr v6, v5

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 226
    :goto_3
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 219
    :cond_4
    const/16 v6, 0x61

    if-lt v0, v6, :cond_5

    const/16 v6, 0x66

    if-gt v0, v6, :cond_5

    .line 220
    add-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, -0x61

    shl-int/2addr v6, v5

    int-to-long v6, v6

    add-long/2addr v2, v6

    goto :goto_3

    .line 223
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    goto :goto_0
.end method

.method public static differenceList(Ljava/util/List;Ljava/util/List;Lcom/xiaomi/common/util/CollectionHelper$Predication;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/xiaomi/common/util/CollectionHelper$Predication",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, from:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, to:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, pred:Lcom/xiaomi/common/util/CollectionHelper$Predication;,"Lcom/xiaomi/common/util/CollectionHelper$Predication<TT;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 137
    :cond_0
    const/4 v3, 0x0

    .line 156
    :goto_0
    return v3

    .line 140
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 142
    .local v1, oldSize:I
    if-eqz p2, :cond_3

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 144
    .local v2, v:Ljava/lang/Object;,"TT;"
    if-eqz p2, :cond_2

    invoke-interface {p2, v2}, Lcom/xiaomi/common/util/CollectionHelper$Predication;->predicate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #v:Ljava/lang/Object;,"TT;"
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 150
    .restart local v2       #v:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 151
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v2           #v:Ljava/lang/Object;,"TT;"
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
