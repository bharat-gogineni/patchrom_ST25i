.class public interface abstract Lcom/xiaomi/common/util/CursorHelper$CursorCollector;
.super Ljava/lang/Object;
.source "CursorHelper.java"

# interfaces
.implements Lcom/xiaomi/common/util/CursorHelper$CursorVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/CursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CursorCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/common/util/CursorHelper$CursorVisitor;"
    }
.end annotation


# virtual methods
.method public abstract reset(Landroid/database/Cursor;)Z
.end method

.method public abstract result()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation
.end method
