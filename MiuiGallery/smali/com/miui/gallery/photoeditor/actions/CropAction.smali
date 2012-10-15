.class public Lcom/miui/gallery/photoeditor/actions/CropAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "CropAction.java"


# instance fields
.field private cropView:Lcom/miui/gallery/photoeditor/actions/CropView;

.field private filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/actions/CropAction;)Lcom/miui/gallery/photoeditor/filters/CropFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;

    return-object v0
.end method


# virtual methods
.method public doBegin()V
    .locals 5

    .prologue
    const v4, 0x3f4ccccd

    const v3, 0x3e4ccccd

    .line 41
    new-instance v1, Lcom/miui/gallery/photoeditor/filters/CropFilter;

    invoke-direct {v1}, Lcom/miui/gallery/photoeditor/filters/CropFilter;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createCropView()Lcom/miui/gallery/photoeditor/actions/CropView;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->cropView:Lcom/miui/gallery/photoeditor/actions/CropView;

    .line 44
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->cropView:Lcom/miui/gallery/photoeditor/actions/CropView;

    new-instance v2, Lcom/miui/gallery/photoeditor/actions/CropAction$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/photoeditor/actions/CropAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/CropAction;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/CropView;->setOnCropChangeListener(Lcom/miui/gallery/photoeditor/actions/CropView$OnCropChangeListener;)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    .local v0, bounds:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->cropView:Lcom/miui/gallery/photoeditor/actions/CropView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/photoeditor/actions/CropView;->setCropBounds(Landroid/graphics/RectF;)V

    .line 57
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/photoeditor/filters/CropFilter;->setCropBounds(Landroid/graphics/RectF;)V

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/CropAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 59
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->cropView:Lcom/miui/gallery/photoeditor/actions/CropView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/CropView;->setOnCropChangeListener(Lcom/miui/gallery/photoeditor/actions/CropView$OnCropChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/CropAction;->filter:Lcom/miui/gallery/photoeditor/filters/CropFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/actions/CropAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 65
    return-void
.end method
