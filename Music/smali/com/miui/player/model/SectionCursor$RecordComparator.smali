.class Lcom/miui/player/model/SectionCursor$RecordComparator;
.super Ljava/lang/Object;
.source "SectionCursor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSortIndex:I

.field final synthetic this$0:Lcom/miui/player/model/SectionCursor;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursor;I)V
    .locals 0
    .parameter
    .parameter "sortIndex"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor$RecordComparator;->this$0:Lcom/miui/player/model/SectionCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p2, p0, Lcom/miui/player/model/SectionCursor$RecordComparator;->mSortIndex:I

    .line 249
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/model/SectionCursor$RecordComparator;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    .line 253
    iget v2, p0, Lcom/miui/player/model/SectionCursor$RecordComparator;->mSortIndex:I

    .line 254
    .local v2, sortKey:I
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 255
    .local v0, firstKey:Ljava/lang/String;
    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, secondKey:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    return v3
.end method
