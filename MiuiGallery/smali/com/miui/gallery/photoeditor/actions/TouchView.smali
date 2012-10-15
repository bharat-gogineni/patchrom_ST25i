.class Lcom/miui/gallery/photoeditor/actions/TouchView;
.super Lcom/miui/gallery/photoeditor/actions/FullscreenToolView;
.source "TouchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;,
        Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private singleTapListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;

.field private swipeListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/high16 v1, 0x43fa

    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/TouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 61
    .local v0, swipeThreshold:I
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/miui/gallery/photoeditor/actions/TouchView$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/photoeditor/actions/TouchView$1;-><init>(Lcom/miui/gallery/photoeditor/actions/TouchView;I)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TouchView;->gestureDetector:Landroid/view/GestureDetector;

    .line 104
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TouchView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/TouchView;->singleTapListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/actions/TouchView;)Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/TouchView;->swipeListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SwipeListener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/TouchView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/TouchView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSingleTapListener(Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/TouchView;->singleTapListener:Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;

    .line 113
    return-void
.end method
