.class public Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;
.super Ljava/lang/Object;
.source "EffectToolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$1;,
        Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;
    }
.end annotation


# instance fields
.field private final effectToolPanel:Landroid/view/ViewGroup;

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter "effectToolPanel"
    .parameter "inflater"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->effectToolPanel:Landroid/view/ViewGroup;

    .line 40
    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->inflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method private createFullscreenTool(I)Landroid/view/View;
    .locals 5
    .parameter "toolId"

    .prologue
    .line 46
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->effectToolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b008b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, photoView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 48
    .local v0, parent:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->inflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/photoeditor/actions/FullscreenToolView;

    .local v2, view:Lcom/miui/gallery/photoeditor/actions/FullscreenToolView;
    move-object v3, v1

    .line 49
    check-cast v3, Lcom/miui/gallery/photoeditor/PhotoView;

    invoke-virtual {v3}, Lcom/miui/gallery/photoeditor/PhotoView;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/photoeditor/actions/FullscreenToolView;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 51
    return-object v2
.end method

.method private createPanelTool(I)Landroid/view/View;
    .locals 4
    .parameter "toolId"

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->effectToolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->effectToolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 57
    return-object v0
.end method

.method private getScalePickerBackground(Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 61
    sget-object v0, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$1;->$SwitchMap$com$miui$gallery$photoeditor$actions$EffectToolFactory$ScalePickerType:[I

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const v0, 0x7f0200b0

    :goto_0
    return v0

    .line 63
    :pswitch_0
    const v0, 0x7f0200b1

    goto :goto_0

    .line 66
    :pswitch_1
    const v0, 0x7f0200b2

    goto :goto_0

    .line 69
    :pswitch_2
    const v0, 0x7f0200af

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createColorPicker()Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f040020

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createPanelTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    return-object v0
.end method

.method public createCropView()Lcom/miui/gallery/photoeditor/actions/CropView;
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f040021

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/CropView;

    return-object v0
.end method

.method public createDoodleView()Lcom/miui/gallery/photoeditor/actions/DoodleView;
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f040022

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/DoodleView;

    return-object v0
.end method

.method public createFlipView()Lcom/miui/gallery/photoeditor/actions/FlipView;
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f04002a

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/FlipView;

    return-object v0
.end method

.method public createRotateView()Lcom/miui/gallery/photoeditor/actions/RotateView;
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f04002c

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/RotateView;

    return-object v0
.end method

.method public createScalePicker(Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;)Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;
    .locals 2
    .parameter "type"

    .prologue
    .line 75
    const v1, 0x7f04002d

    invoke-direct {p0, v1}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createPanelTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;

    .line 77
    .local v0, scalePicker:Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->getScalePickerBackground(Lcom/miui/gallery/photoeditor/actions/EffectToolFactory$ScalePickerType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/ScaleSeekBar;->setBackgroundResource(I)V

    .line 78
    return-object v0
.end method

.method public createTouchView()Lcom/miui/gallery/photoeditor/actions/TouchView;
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f04002e

    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/actions/TouchView;

    return-object v0
.end method
