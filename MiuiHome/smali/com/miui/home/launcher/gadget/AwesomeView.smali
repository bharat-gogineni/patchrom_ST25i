.class public Lcom/miui/home/launcher/gadget/AwesomeView;
.super Landroid/view/View;
.source "AwesomeView.java"


# instance fields
.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mTargetDensity:I

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/AwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->finish()V

    .line 99
    :cond_0
    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mUpdateInterval:I

    return v0
.end method

.method public load(Lmiui/app/screenelement/ScreenContext;)Z
    .locals 5
    .parameter "elementContext"

    .prologue
    .line 47
    :try_start_0
    iget-object v2, p1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v2}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 48
    .local v1, root:Lorg/w3c/dom/Element;
    const-string v2, "clock"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Lmiui/app/screenelement/ScreenElementLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad root tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 67
    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 51
    .restart local v1       #root:Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    new-instance v2, Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v2, p1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 52
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget v3, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mTargetDensity:I

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ScreenElementRoot;->setTargetDensity(I)V

    .line 53
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->load()Z

    .line 54
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->init()V
    :try_end_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 56
    :try_start_2
    const-string v2, "update_interval"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/NumberFormatException;
    const v2, 0xea60

    :try_start_3
    iput v2, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_3
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 64
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "view_width"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    sub-int v2, p4, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 74
    const-string v0, "view_height"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    sub-int v2, p5, p3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/screenelement/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;Ljava/lang/Double;)V

    .line 77
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->pause()V

    .line 93
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->resume()V

    .line 87
    :cond_0
    return-void
.end method

.method setTargetDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 108
    iput p1, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mTargetDensity:I

    .line 109
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeView;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ScreenElementRoot;->tick(J)V

    .line 105
    :cond_0
    return-void
.end method
