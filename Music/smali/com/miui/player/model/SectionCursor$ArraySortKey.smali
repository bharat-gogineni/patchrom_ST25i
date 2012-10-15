.class public Lcom/miui/player/model/SectionCursor$ArraySortKey;
.super Ljava/lang/Object;
.source "SectionCursor.java"

# interfaces
.implements Lcom/miui/player/model/SectionCursor$SortKeyGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArraySortKey"
.end annotation


# instance fields
.field private final mSortKeyIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "sortKeyIdx"

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput p1, p0, Lcom/miui/player/model/SectionCursor$ArraySortKey;->mSortKeyIndex:I

    .line 397
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 401
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    iget v0, p0, Lcom/miui/player/model/SectionCursor$ArraySortKey;->mSortKeyIndex:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
