.class public Lcom/miui/gallery/util/MediaItemComparator;
.super Ljava/lang/Object;
.source "MediaItemComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/MediaItemComparator$SizeComparator;,
        Lcom/miui/gallery/util/MediaItemComparator$NameComparator;,
        Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;,
        Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;
    }
.end annotation


# static fields
.field private static final DATE_COMPARATOR_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_COMPARATOR_DESC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME_COMPARATOR_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME_COMPARATOR_DESC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_COMPARATOR_ASC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_COMPARATOR_DESC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sComparators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    new-instance v0, Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/MediaItemComparator;->DATE_COMPARATOR_ASC:Ljava/util/Comparator;

    .line 28
    new-instance v0, Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;

    invoke-direct {v0, v2}, Lcom/miui/gallery/util/MediaItemComparator$DateModifiedComparator;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/MediaItemComparator;->DATE_COMPARATOR_DESC:Ljava/util/Comparator;

    .line 40
    new-instance v0, Lcom/miui/gallery/util/MediaItemComparator$NameComparator;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/MediaItemComparator$NameComparator;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/MediaItemComparator;->NAME_COMPARATOR_ASC:Ljava/util/Comparator;

    .line 41
    new-instance v0, Lcom/miui/gallery/util/MediaItemComparator$NameComparator;

    invoke-direct {v0, v2}, Lcom/miui/gallery/util/MediaItemComparator$NameComparator;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/MediaItemComparator;->NAME_COMPARATOR_DESC:Ljava/util/Comparator;

    .line 56
    new-instance v0, Lcom/miui/gallery/util/MediaItemComparator$SizeComparator;

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/MediaItemComparator$SizeComparator;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/MediaItemComparator;->SIZE_COMPARATOR_ASC:Ljava/util/Comparator;

    .line 57
    new-instance v0, Lcom/miui/gallery/util/MediaItemComparator$SizeComparator;

    invoke-direct {v0, v2}, Lcom/miui/gallery/util/MediaItemComparator$SizeComparator;-><init>(Z)V

    sput-object v0, Lcom/miui/gallery/util/MediaItemComparator;->SIZE_COMPARATOR_DESC:Ljava/util/Comparator;

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/MediaItemComparator;->NAME_COMPARATOR_ASC:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/MediaItemComparator;->NAME_COMPARATOR_DESC:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/MediaItemComparator;->DATE_COMPARATOR_ASC:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/MediaItemComparator;->DATE_COMPARATOR_DESC:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/MediaItemComparator;->SIZE_COMPARATOR_ASC:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/MediaItemComparator;->SIZE_COMPARATOR_DESC:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static final getComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 3
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, sortBy:I
    sget-object v1, Lcom/miui/gallery/util/MediaItemComparator;->sComparators:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    return-object v1
.end method

.method public static getOrderClause(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "filePath"
    .parameter "isImage"

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, sortBy:I
    const-string v1, ""

    .line 90
    .local v1, sortByClause:Ljava/lang/String;
    if-gez v0, :cond_0

    const-string v2, " DESC "

    .line 91
    .local v2, sortSuffix:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 92
    packed-switch v0, :pswitch_data_0

    .line 106
    const-string v3, "local album sort by is wrong."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v3, "_id"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 90
    .end local v2           #sortSuffix:Ljava/lang/String;
    :cond_0
    const-string v2, " ASC "

    goto :goto_0

    .line 94
    .restart local v2       #sortSuffix:Ljava/lang/String;
    :pswitch_0
    if-eqz p1, :cond_1

    const-string v1, "_display_name"

    .line 95
    :goto_3
    goto :goto_1

    .line 94
    :cond_1
    const-string v1, "_display_name"

    goto :goto_3

    .line 98
    :pswitch_1
    if-eqz p1, :cond_2

    const-string v1, "_size"

    .line 99
    :goto_4
    goto :goto_1

    .line 98
    :cond_2
    const-string v1, "_size"

    goto :goto_4

    .line 102
    :pswitch_2
    if-eqz p1, :cond_3

    const-string v1, "date_modified"

    .line 103
    :goto_5
    goto :goto_1

    .line 102
    :cond_3
    const-string v1, "date_modified"

    goto :goto_5

    .line 109
    :cond_4
    const-string v3, "_id"

    goto :goto_2

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
