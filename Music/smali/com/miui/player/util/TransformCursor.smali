.class public Lcom/miui/player/util/TransformCursor;
.super Landroid/database/AbstractCursor;
.source "TransformCursor.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mPositionMap:[I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[I)V
    .locals 2
    .parameter "cursor"
    .parameter "positionMap"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad src cursor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    if-nez p2, :cond_1

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad src posMap == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    .line 29
    iput-object p2, p0, Lcom/miui/player/util/TransformCursor;->mPositionMap:[I

    .line 30
    return-void
.end method

.method public static createFromIdx(Landroid/database/Cursor;I[J)Landroid/database/Cursor;
    .locals 16
    .parameter "cursor"
    .parameter "idx"
    .parameter "refIds"

    .prologue
    .line 123
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 124
    :cond_0
    const/4 v14, 0x0

    .line 143
    :goto_0
    return-object v14

    .line 127
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 128
    .local v2, count:I
    new-array v8, v2, [J

    .line 129
    .local v8, ids:[J
    const/4 v3, 0x0

    .line 130
    .local v3, i:I
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_2

    .line 131
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    aput-wide v14, v8, v3

    .line 130
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 134
    :cond_2
    move-object/from16 v0, p2

    array-length v14, v0

    new-array v12, v14, [I

    .line 135
    .local v12, map:[I
    const/4 v9, 0x0

    .line 136
    .local v9, j:I
    move-object/from16 v1, p2

    .local v1, arr$:[J
    array-length v11, v1

    .local v11, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v10, v9

    .end local v9           #j:I
    .local v10, j:I
    :goto_2
    if-ge v5, v11, :cond_3

    aget-wide v6, v1, v5

    .line 137
    .local v6, id:J
    invoke-static {v8, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    .line 138
    .local v13, pos:I
    if-ltz v13, :cond_5

    .line 139
    add-int/lit8 v9, v10, 0x1

    .end local v10           #j:I
    .restart local v9       #j:I
    aput v13, v12, v10

    .line 136
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto :goto_2

    .line 143
    .end local v6           #id:J
    .end local v13           #pos:I
    :cond_3
    new-instance v14, Lcom/miui/player/util/TransformCursor;

    array-length v15, v12

    if-ge v10, v15, :cond_4

    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .end local v12           #map:[I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lcom/miui/player/util/TransformCursor;-><init>(Landroid/database/Cursor;[I)V

    goto :goto_0

    .restart local v6       #id:J
    .restart local v12       #map:[I
    .restart local v13       #pos:I
    :cond_5
    move v9, v10

    .end local v10           #j:I
    .restart local v9       #j:I
    goto :goto_3
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mPositionMap:[I

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    const/4 v1, 0x1

    .line 40
    :goto_0
    return v1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/miui/player/util/TransformCursor;->mPositionMap:[I

    aget v0, v1, p2

    .line 40
    .local v0, pos:I
    iget-object v1, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 106
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/player/util/TransformCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 111
    return-void
.end method
