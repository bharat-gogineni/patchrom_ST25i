.class public interface abstract Lcom/android/mms/util/EditableListView$EditModeListener;
.super Ljava/lang/Object;
.source "EditableListView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditModeListener"
.end annotation


# virtual methods
.method public abstract onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V
.end method

.method public abstract onVisibleViewCheckStateChanged(Landroid/view/View;Z)V
.end method
