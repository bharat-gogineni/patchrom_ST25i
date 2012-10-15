.class Lcom/miui/player/util/SqlUtils$RawLongArrayCollector;
.super Ljava/lang/Object;
.source "SqlUtils.java"

# interfaces
.implements Lcom/xiaomi/common/util/CursorHelper$CursorVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/SqlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawLongArrayCollector"
.end annotation


# instance fields
.field private final mContainer:[J

.field private final mDataIdx:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "idx"
    .parameter "count"

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Lcom/miui/player/util/SqlUtils$RawLongArrayCollector;->mDataIdx:I

    .line 261
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/miui/player/util/SqlUtils$RawLongArrayCollector;->mContainer:[J

    .line 262
    return-void
.end method


# virtual methods
.method public result()[J
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/player/util/SqlUtils$RawLongArrayCollector;->mContainer:[J

    return-object v0
.end method

.method public visit(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/player/util/SqlUtils$RawLongArrayCollector;->mContainer:[J

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/miui/player/util/SqlUtils$RawLongArrayCollector;->mDataIdx:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 267
    const/4 v0, 0x1

    return v0
.end method
