.class abstract Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;
.super Ljava/lang/Object;
.source "MediaItemComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/MediaItemComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ComparatorBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/data/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mSortCoefficient:I


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .parameter "isASC"

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;->mSortCoefficient:I

    .line 22
    if-eqz p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;->mSortCoefficient:I

    .line 23
    return-void

    .line 22
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
