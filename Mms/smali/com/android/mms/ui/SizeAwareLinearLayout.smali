.class public Lcom/android/mms/ui/SizeAwareLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SizeAwareLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;
    }
.end annotation


# instance fields
.field private isInListener:Z

.field private mOnMeasureListener:Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->mOnMeasureListener:Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->isInListener:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->mOnMeasureListener:Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->isInListener:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->isInListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->mOnMeasureListener:Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->isInListener:Z

    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->mOnMeasureListener:Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;->onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->isInListener:Z

    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 35
    return-void
.end method

.method public setOnMeasureListener(Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/mms/ui/SizeAwareLinearLayout;->mOnMeasureListener:Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;

    .line 25
    return-void
.end method
