.class public Lcom/miui/gallery/photoeditor/actions/StraightenAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "StraightenAction.java"


# instance fields
.field private rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public doBegin()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/StraightenFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/StraightenFilter;-><init>()V

    .line 42
    .local v0, filter:Lcom/miui/gallery/photoeditor/filters/StraightenFilter;
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createRotateView()Lcom/miui/gallery/photoeditor/actions/RotateView;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    new-instance v2, Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/photoeditor/actions/StraightenAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/StraightenAction;Lcom/miui/gallery/photoeditor/filters/StraightenFilter;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setOnRotateChangeListener(Lcom/miui/gallery/photoeditor/actions/RotateView$OnRotateChangeListener;)V

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setDrawGrids(Z)V

    .line 64
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setRotatedAngle(F)V

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    const/high16 v2, 0x4270

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setRotateSpan(F)V

    .line 66
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/StraightenAction;->rotateView:Lcom/miui/gallery/photoeditor/actions/RotateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/RotateView;->setOnRotateChangeListener(Lcom/miui/gallery/photoeditor/actions/RotateView$OnRotateChangeListener;)V

    .line 71
    return-void
.end method
