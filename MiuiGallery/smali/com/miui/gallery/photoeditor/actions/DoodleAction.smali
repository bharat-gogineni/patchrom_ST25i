.class public Lcom/miui/gallery/photoeditor/actions/DoodleAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "DoodleAction.java"


# instance fields
.field private colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

.field private doodleView:Lcom/miui/gallery/photoeditor/actions/DoodleView;

.field private filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;


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

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)Lcom/miui/gallery/photoeditor/actions/DoodleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->doodleView:Lcom/miui/gallery/photoeditor/actions/DoodleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)Lcom/miui/gallery/photoeditor/filters/DoodleFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    return-object v0
.end method


# virtual methods
.method public doBegin()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/DoodleFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createColorPicker()Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    new-instance v1, Lcom/miui/gallery/photoeditor/actions/DoodleAction$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/actions/DoodleAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setColorIndex(I)V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createDoodleView()Lcom/miui/gallery/photoeditor/actions/DoodleView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->doodleView:Lcom/miui/gallery/photoeditor/actions/DoodleView;

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->doodleView:Lcom/miui/gallery/photoeditor/actions/DoodleView;

    new-instance v1, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/actions/DoodleAction$2;-><init>(Lcom/miui/gallery/photoeditor/actions/DoodleAction;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/DoodleView;->setOnDoodleChangeListener(Lcom/miui/gallery/photoeditor/actions/DoodleView$OnDoodleChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->doodleView:Lcom/miui/gallery/photoeditor/actions/DoodleView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/DoodleView;->setColor(I)V

    .line 72
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->doodleView:Lcom/miui/gallery/photoeditor/actions/DoodleView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/DoodleView;->setOnDoodleChangeListener(Lcom/miui/gallery/photoeditor/actions/DoodleView$OnDoodleChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->filter:Lcom/miui/gallery/photoeditor/filters/DoodleFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/actions/DoodleAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 79
    return-void
.end method
