.class public Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;
.super Ljava/lang/Object;
.source "BaseMeta.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/StorageExplorer/BaseMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseMetaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/StorageExplorer/BaseMeta;",
        ">;"
    }
.end annotation


# instance fields
.field protected mReverse:Z

.field protected mSortMethod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->getDiff(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I

    move-result v1

    .line 262
    .local v1, diff:I
    if-nez v1, :cond_2

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 264
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    iget-object v2, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mTitle:Ljava/lang/String;

    iget-object v3, p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 266
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    :cond_2
    iget-boolean v2, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mReverse:Z

    if-eqz v2, :cond_0

    neg-int v1, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    check-cast p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .end local p1
    check-cast p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->compare(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I

    move-result v0

    return v0
.end method

.method protected getDiff(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 270
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 271
    iget-wide v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mDateModified:J

    iget-wide v2, p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mDateModified:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/common/Utils;->sign(J)I

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 272
    :cond_0
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 273
    iget-wide v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mSize:J

    iget-wide v2, p2, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mSize:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/common/Utils;->sign(J)I

    move-result v0

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortMethod()I
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mReverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    goto :goto_0
.end method

.method public setSortMethod(I)V
    .locals 1
    .parameter "method"

    .prologue
    .line 279
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mReverse:Z

    .line 280
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->mSortMethod:I

    .line 281
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
