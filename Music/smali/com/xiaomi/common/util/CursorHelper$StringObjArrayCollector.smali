.class Lcom/xiaomi/common/util/CursorHelper$StringObjArrayCollector;
.super Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;
.source "CursorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringObjArrayCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "column"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;-><init>(Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected bridge synthetic mallocArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/xiaomi/common/util/CursorHelper$StringObjArrayCollector;->mallocArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected mallocArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 102
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method public visit(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xiaomi/common/util/CursorHelper$StringObjArrayCollector;->mContainer:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/common/util/CursorHelper$StringObjArrayCollector;->mDataIdx:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    const/4 v0, 0x1

    return v0
.end method
