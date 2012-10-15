.class Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;
.super Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;
.source "MediaItemComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/MediaItemComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateModifiedComparator"
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "isASC"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;-><init>(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/data/MediaItem;)I
    .locals 5
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;->mSortCoefficient:I

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getDateModifiedInMs()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getDateModifiedInMs()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/common/Utils;->compare(JJ)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p1, Lcom/miui/gallery/data/MediaItem;

    .end local p1
    check-cast p2, Lcom/miui/gallery/data/MediaItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;->compare(Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/data/MediaItem;)I

    move-result v0

    return v0
.end method
