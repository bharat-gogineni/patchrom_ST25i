.class public Lcom/miui/gallery/photoeditor/actions/RotateAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "RotateAction.java"


# instance fields
.field private filter:Lcom/miui/gallery/photoeditor/filters/RotateFilter;

.field private queuedRotationChange:Ljava/lang/Runnable;

.field private rotateDegrees:F

.field private rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/actions/RotateAction;)Lcom/miui/gallery/photoeditor/actions/RotateView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/actions/RotateAction;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/photoeditor/actions/RotateAction;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/photoeditor/actions/RotateAction;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->updateRotateFilter(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/photoeditor/actions/RotateAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->roundRotateDegrees()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->queuedRotationChange:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/photoeditor/actions/RotateAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->queuedRotationChange:Ljava/lang/Runnable;

    return-object p1
.end method

.method private roundRotateDegrees()V
    .locals 3

    .prologue
    const/high16 v2, 0x42b4

    .line 109
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F

    rem-float/2addr v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F

    .line 112
    :cond_0
    return-void
.end method

.method private updateRotateFilter(Z)V
    .locals 2
    .parameter "outputFilter"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->filter:Lcom/miui/gallery/photoeditor/filters/RotateFilter;

    iget v1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/filters/RotateFilter;->setAngle(F)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->filter:Lcom/miui/gallery/photoeditor/filters/RotateFilter;

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public doBegin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/RotateFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/RotateFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->filter:Lcom/miui/gallery/photoeditor/filters/RotateFilter;

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createRotateView()Lcom/miui/gallery/photoeditor/actions/RotateView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    new-instance v1, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/RotateAction;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setOnRotateChangeListener(Lcom/miui/gallery/photoeditor/actions/RotateView$OnRotateChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setRotatedAngle(F)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    const/high16 v1, 0x43b4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setRotateSpan(F)V

    .line 93
    iput v2, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateDegrees:F

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->queuedRotationChange:Ljava/lang/Runnable;

    .line 95
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setOnRotateChangeListener(Lcom/miui/gallery/photoeditor/actions/RotateView$OnRotateChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->roundRotateDegrees()V

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/RotateAction;->updateRotateFilter(Z)V

    .line 103
    return-void
.end method
