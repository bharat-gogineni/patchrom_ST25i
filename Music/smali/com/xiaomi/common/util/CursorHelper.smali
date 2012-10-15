.class public Lcom/xiaomi/common/util/CursorHelper;
.super Ljava/lang/Object;
.source "CursorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/util/CursorHelper$StringObjArrayCollector;,
        Lcom/xiaomi/common/util/CursorHelper$LongObjArrayCollector;,
        Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;,
        Lcom/xiaomi/common/util/CursorHelper$CursorCollector;,
        Lcom/xiaomi/common/util/CursorHelper$CursorVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static newLongArrayCollector(Ljava/lang/String;)Lcom/xiaomi/common/util/CursorHelper$CursorCollector;
    .locals 1
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/common/util/CursorHelper$CursorCollector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/xiaomi/common/util/CursorHelper$LongObjArrayCollector;

    invoke-direct {v0, p0}, Lcom/xiaomi/common/util/CursorHelper$LongObjArrayCollector;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newStringArrayCollector(Ljava/lang/String;)Lcom/xiaomi/common/util/CursorHelper$CursorCollector;
    .locals 1
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/common/util/CursorHelper$CursorCollector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/common/util/CursorHelper$StringObjArrayCollector;

    invoke-direct {v0, p0}, Lcom/xiaomi/common/util/CursorHelper$StringObjArrayCollector;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static traverse(Landroid/database/Cursor;Lcom/xiaomi/common/util/CursorHelper$CursorVisitor;)Z
    .locals 2
    .parameter "cursor"
    .parameter "visitor"

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 19
    :goto_0
    return v1

    .line 11
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 12
    .local v0, position:I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-interface {p1, p0}, Lcom/xiaomi/common/util/CursorHelper$CursorVisitor;->visit(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 19
    const/4 v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method
