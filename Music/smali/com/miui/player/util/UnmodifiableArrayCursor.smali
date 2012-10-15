.class public Lcom/miui/player/util/UnmodifiableArrayCursor;
.super Landroid/database/AbstractCursor;
.source "UnmodifiableArrayCursor.java"


# instance fields
.field private final mColumnCount:I

.field private final mColumnNames:[Ljava/lang/String;

.field private final mData:[[Ljava/lang/Object;

.field private final mRowCount:I


# direct methods
.method public constructor <init>([[Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "columnNames"

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mData:[[Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mColumnNames:[Ljava/lang/String;

    .line 16
    array-length v0, p1

    iput v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mRowCount:I

    .line 17
    array-length v0, p2

    iput v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mColumnCount:I

    .line 18
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .parameter "column"

    .prologue
    .line 97
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mColumnCount:I

    if-lt p1, v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mColumnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mPos:I

    if-gez v0, :cond_2

    .line 102
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    iget v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mPos:I

    iget v1, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mRowCount:I

    if-lt v0, v1, :cond_3

    .line 105
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mData:[[Ljava/lang/Object;

    iget v1, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mPos:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, value:Ljava/lang/Object;
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/player/util/UnmodifiableArrayCursor;->mData:[[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "column"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 35
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 34
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 35
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 43
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 42
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 43
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 51
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 50
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 51
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 59
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 58
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 59
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 67
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 66
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 67
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/miui/player/util/UnmodifiableArrayCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
