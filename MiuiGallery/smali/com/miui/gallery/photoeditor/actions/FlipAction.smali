.class public Lcom/miui/gallery/photoeditor/actions/FlipAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "FlipAction.java"


# instance fields
.field private filter:Lcom/miui/gallery/photoeditor/filters/FlipFilter;

.field private flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;

.field private horizontalFlipDegrees:F

.field private queuedFlipChange:Ljava/lang/Runnable;

.field private verticalFlipDegrees:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/actions/FlipAction;)Lcom/miui/gallery/photoeditor/actions/FlipView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/actions/FlipAction;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/photoeditor/actions/FlipAction;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/photoeditor/actions/FlipAction;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/photoeditor/actions/FlipAction;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/photoeditor/actions/FlipAction;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->updateFlipFilter(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/photoeditor/actions/FlipAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->roundFlipDegrees()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->queuedFlipChange:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/photoeditor/actions/FlipAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->queuedFlipChange:Ljava/lang/Runnable;

    return-object p1
.end method

.method private roundFlipDegrees()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x4334

    .line 114
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F

    rem-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0xb4

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F

    .line 117
    :cond_0
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F

    rem-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0xb4

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F

    .line 120
    :cond_1
    return-void
.end method

.method private updateFlipFilter(Z)V
    .locals 5
    .parameter "outputFilter"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->filter:Lcom/miui/gallery/photoeditor/filters/FlipFilter;

    iget v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F

    float-to-int v0, v0

    div-int/lit16 v0, v0, 0xb4

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F

    float-to-int v4, v4

    div-int/lit16 v4, v4, 0xb4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/photoeditor/filters/FlipFilter;->setFlip(ZZ)V

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->filter:Lcom/miui/gallery/photoeditor/filters/FlipFilter;

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public doBegin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/FlipFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/FlipFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->filter:Lcom/miui/gallery/photoeditor/filters/FlipFilter;

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createFlipView()Lcom/miui/gallery/photoeditor/actions/FlipView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;

    new-instance v1, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/FlipAction;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/FlipView;->setOnFlipChangeListener(Lcom/miui/gallery/photoeditor/actions/FlipView$OnFlipChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;

    invoke-virtual {v0, v2, v2}, Lcom/miui/gallery/photoeditor/actions/FlipView;->setFlippedAngles(FF)V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/FlipView;->setFlipSpan(F)V

    .line 97
    iput v2, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->horizontalFlipDegrees:F

    .line 98
    iput v2, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->verticalFlipDegrees:F

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->queuedFlipChange:Ljava/lang/Runnable;

    .line 100
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction;->flipView:Lcom/miui/gallery/photoeditor/actions/FlipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/FlipView;->setOnFlipChangeListener(Lcom/miui/gallery/photoeditor/actions/FlipView$OnFlipChangeListener;)V

    .line 106
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->roundFlipDegrees()V

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/FlipAction;->updateFlipFilter(Z)V

    .line 108
    return-void
.end method
