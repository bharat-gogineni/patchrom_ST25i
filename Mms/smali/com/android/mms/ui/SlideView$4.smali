.class Lcom/android/mms/ui/SlideView$4;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/ui/SlideView$Position;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/ui/SlideView$Position;Lcom/android/mms/ui/SlideView$Position;)I
    .locals 5
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 499
    iget v0, p1, Lcom/android/mms/ui/SlideView$Position;->mLeft:I

    .line 500
    .local v0, l1:I
    iget v3, p1, Lcom/android/mms/ui/SlideView$Position;->mTop:I

    .line 501
    .local v3, t1:I
    iget v1, p2, Lcom/android/mms/ui/SlideView$Position;->mLeft:I

    .line 502
    .local v1, l2:I
    iget v4, p2, Lcom/android/mms/ui/SlideView$Position;->mTop:I

    .line 503
    .local v4, t2:I
    sub-int v2, v3, v4

    .line 504
    .local v2, res:I
    if-nez v2, :cond_0

    .line 505
    sub-int v2, v0, v1

    .line 507
    :cond_0
    if-nez v2, :cond_1

    .line 509
    const/4 v2, -0x1

    .line 511
    .end local v2           #res:I
    :cond_1
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 497
    check-cast p1, Lcom/android/mms/ui/SlideView$Position;

    .end local p1
    check-cast p2, Lcom/android/mms/ui/SlideView$Position;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/SlideView$4;->compare(Lcom/android/mms/ui/SlideView$Position;Lcom/android/mms/ui/SlideView$Position;)I

    move-result v0

    return v0
.end method
