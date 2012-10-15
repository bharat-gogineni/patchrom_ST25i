.class public abstract Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;
.super Ljava/lang/Object;
.source "CursorHelper.java"

# interfaces
.implements Lcom/xiaomi/common/util/CursorHelper$CursorCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObjArrayCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/common/util/CursorHelper$CursorCollector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field protected mContainer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected mDataIdx:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "column"

    .prologue
    .line 49
    .local p0, this:Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;,"Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mDataIdx:I

    .line 50
    iput-object p1, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mColumnName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract mallocArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public reset(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 55
    .local p0, this:Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;,"Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector<TT;>;"
    if-nez p1, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mColumnName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mDataIdx:I

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 60
    .local v0, count:I
    iget-object v1, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mContainer:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mContainer:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 61
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mallocArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mContainer:[Ljava/lang/Object;

    .line 64
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public result()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;,"Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector<TT;>;"
    iget-object v0, p0, Lcom/xiaomi/common/util/CursorHelper$ObjArrayCollector;->mContainer:[Ljava/lang/Object;

    return-object v0
.end method
