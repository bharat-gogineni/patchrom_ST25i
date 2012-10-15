.class public Lcom/miui/gallery/photoeditor/actions/HighlightAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "HighlightAction.java"


# instance fields
.field private scalePicker:Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;


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
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/HighlightFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/HighlightFilter;-><init>()V

    .line 41
    .local v0, filter:Lcom/miui/gallery/photoeditor/filters/HighlightFilter;
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/HighlightAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    sget-object v2, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;->LIGHT:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createScalePicker(Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;)Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/HighlightAction;->scalePicker:Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/HighlightAction;->scalePicker:Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;

    new-instance v2, Lcom/miui/gallery/photoeditor/actions/HighlightAction$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/photoeditor/actions/HighlightAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/HighlightAction;Lcom/miui/gallery/photoeditor/filters/HighlightFilter;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;->setOnScaleChangeListener(Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;)V

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/HighlightAction;->scalePicker:Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;->setProgress(F)V

    .line 53
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/HighlightAction;->scalePicker:Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;->setOnScaleChangeListener(Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;)V

    .line 58
    return-void
.end method
