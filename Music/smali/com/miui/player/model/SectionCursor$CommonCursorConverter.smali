.class public Lcom/miui/player/model/SectionCursor$CommonCursorConverter;
.super Ljava/lang/Object;
.source "SectionCursor.java"

# interfaces
.implements Lcom/miui/player/model/SectionCursor$CursorConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonCursorConverter"
.end annotation


# instance fields
.field private final mElementConverter:Lcom/miui/player/model/SectionCursor$ElementConverter;

.field private final mSortIndex:I


# direct methods
.method public constructor <init>(Lcom/miui/player/model/SectionCursor$ElementConverter;I)V
    .locals 0
    .parameter "converter"
    .parameter "sortIndex"

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;->mElementConverter:Lcom/miui/player/model/SectionCursor$ElementConverter;

    .line 366
    iput p2, p0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;->mSortIndex:I

    .line 367
    return-void
.end method


# virtual methods
.method public toArray(Landroid/database/Cursor;)Lcom/miui/player/model/SectionCursor$ConvertResult;
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 370
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 371
    .local v1, columns:[Ljava/lang/String;
    array-length v0, v1

    .line 372
    .local v0, columnCount:I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    add-int/lit8 v6, v0, -0x1

    const-string v7, "sort_key"

    aput-object v7, v1, v6

    .line 375
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v3, v6, [[Ljava/lang/Object;

    .line 376
    .local v3, records:[[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 377
    .local v4, row:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 378
    new-array v2, v0, [Ljava/lang/Object;

    .line 379
    .local v2, rec:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;->mElementConverter:Lcom/miui/player/model/SectionCursor$ElementConverter;

    invoke-interface {v6, p1, v2}, Lcom/miui/player/model/SectionCursor$ElementConverter;->parse(Landroid/database/Cursor;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    add-int/lit8 v7, v0, -0x1

    iget v6, p0, Lcom/miui/player/model/SectionCursor$CommonCursorConverter;->mSortIndex:I

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/player/util/LocaleSortUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v7

    .line 381
    add-int/lit8 v5, v4, 0x1

    .end local v4           #row:I
    .local v5, row:I
    aput-object v2, v3, v4

    move v4, v5

    .end local v5           #row:I
    .restart local v4       #row:I
    goto :goto_0

    .line 384
    .end local v2           #rec:[Ljava/lang/Object;
    :cond_1
    new-instance v6, Lcom/miui/player/model/SectionCursor$ConvertResult;

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v6, v3, v1, v7}, Lcom/miui/player/model/SectionCursor$ConvertResult;-><init>([[Ljava/lang/Object;[Ljava/lang/String;I)V

    return-object v6
.end method
