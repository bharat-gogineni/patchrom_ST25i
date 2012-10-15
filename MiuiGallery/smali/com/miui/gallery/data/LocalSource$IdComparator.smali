.class Lcom/miui/gallery/data/LocalSource$IdComparator;
.super Ljava/lang/Object;
.source "LocalSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/data/MediaSource$PathId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/LocalSource$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalSource$IdComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/data/MediaSource$PathId;Lcom/miui/gallery/data/MediaSource$PathId;)I
    .locals 5
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 291
    iget-object v4, p1, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, s1:Ljava/lang/String;
    iget-object v4, p2, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, s2:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 294
    .local v0, len1:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 295
    .local v1, len2:I
    if-ge v0, v1, :cond_0

    .line 296
    const/4 v4, -0x1

    .line 300
    :goto_0
    return v4

    .line 297
    :cond_0
    if-le v0, v1, :cond_1

    .line 298
    const/4 v4, 0x1

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    check-cast p1, Lcom/miui/gallery/data/MediaSource$PathId;

    .end local p1
    check-cast p2, Lcom/miui/gallery/data/MediaSource$PathId;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/data/LocalSource$IdComparator;->compare(Lcom/miui/gallery/data/MediaSource$PathId;Lcom/miui/gallery/data/MediaSource$PathId;)I

    move-result v0

    return v0
.end method
