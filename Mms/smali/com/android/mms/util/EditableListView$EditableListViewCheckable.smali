.class public interface abstract Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
.super Ljava/lang/Object;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditableListViewCheckable"
.end annotation


# virtual methods
.method public abstract checkAll()V
.end method

.method public abstract checkNothing()V
.end method

.method public abstract count()I
.end method

.method public abstract getCheckedItemInIds()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCheckedItemInPositions()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAllChecked()Z
.end method
