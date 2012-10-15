.class public Lcom/miui/gallery/photoeditor/actions/TintAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "TintAction.java"


# instance fields
.field private colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public doBegin()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/TintFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/TintFilter;-><init>()V

    .line 41
    .local v0, filter:Lcom/miui/gallery/photoeditor/filters/TintFilter;
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TintAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createColorPicker()Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TintAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TintAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    new-instance v2, Lcom/miui/gallery/photoeditor/actions/TintAction$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/photoeditor/actions/TintAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/TintAction;Lcom/miui/gallery/photoeditor/filters/TintFilter;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    .line 53
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TintAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setColorIndex(I)V

    .line 54
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/TintAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/filters/TintFilter;->setTint(I)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/actions/TintAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 56
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/TintAction;->colorPicker:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    .line 61
    return-void
.end method
