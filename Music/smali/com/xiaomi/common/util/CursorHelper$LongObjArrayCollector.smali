.class Lcom/xiaomi/common/util/CursorHelper$LongObjArrayCollector;
.super Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;
.source "CursorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongObjArrayCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "column"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected mallocArray(I)[Ljava/lang/Long;
    .locals 1
    .parameter "size"

    .prologue
    .line 83
    new-array v0, p1, [Ljava/lang/Long;

    return-object v0
.end method

.method protected bridge synthetic mallocArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaomi/common/util/CursorHelper$LongObjArrayCollector;->mallocArray(I)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public visit(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaomi/common/util/CursorHelper$LongObjArrayCollector;->mContainer:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/common/util/CursorHelper$LongObjArrayCollector;->mDataIdx:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 89
    const/4 v0, 0x1

    return v0
.end method
