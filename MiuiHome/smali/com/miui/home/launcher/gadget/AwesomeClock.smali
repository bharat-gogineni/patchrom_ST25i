.class public Lcom/miui/home/launcher/gadget/AwesomeClock;
.super Landroid/widget/FrameLayout;
.source "AwesomeClock.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Clock$ClockStyle;
.implements Lcom/miui/home/launcher/gadget/Gadget;


# instance fields
.field private mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

.field private mElementContext:Lmiui/app/screenelement/ScreenContext;

.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mTargetDensity:I

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setWillNotDraw(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public getUpdateInterval()I
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, interval:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v1, :cond_0

    .line 87
    iget v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    .line 89
    :cond_0
    if-lez v0, :cond_1

    .end local v0           #interval:I
    :goto_0
    return v0

    .restart local v0       #interval:I
    :cond_1
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public initConfig(Ljava/lang/String;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 79
    new-instance v0, Lmiui/app/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/app/screenelement/util/ZipResourceLoader;

    invoke-direct {v2, p1}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/app/screenelement/ResourceLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceLoader;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    .line 81
    return-void
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 109
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-nez v4, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v4}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 114
    .local v3, root:Lorg/w3c/dom/Element;
    const-string v4, "clock"

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    :try_start_0
    const-string v4, "update_interval"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "width"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "height"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    :goto_2
    new-instance v4, Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 129
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget v5, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mTargetDensity:I

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;->setTargetDensity(I)V

    .line 130
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const/high16 v5, 0x447a

    iget v6, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 131
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->load()Z

    .line 133
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v4, :cond_0

    .line 136
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThread()Lmiui/app/screenelement/RenderThread;

    move-result-object v1

    .line 137
    .local v1, globalThread:Lmiui/app/screenelement/RenderThread;
    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->isStarted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 139
    :try_start_2
    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    :cond_2
    :goto_3
    new-instance v4, Lmiui/app/screenelement/MiAdvancedView;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v4, v5, v6, v1}, Lmiui/app/screenelement/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    .line 145
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/MiAdvancedView;->setFocusable(Z)V

    .line 146
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/gadget/AwesomeClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 120
    .end local v1           #globalThread:Lmiui/app/screenelement/RenderThread;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/NumberFormatException;
    const v4, 0xea60

    iput v4, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mUpdateInterval:I

    goto :goto_1

    .line 140
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #globalThread:Lmiui/app/screenelement/RenderThread;
    :catch_1
    move-exception v4

    goto :goto_3

    .line 126
    .end local v1           #globalThread:Lmiui/app/screenelement/RenderThread;
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 177
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 46
    :cond_0
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v2, "pause"

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->invalidate()V

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onPause()V

    .line 59
    :cond_1
    return-void

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v2, "resume"

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onResume()V

    .line 71
    :cond_1
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThread()Lmiui/app/screenelement/RenderThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 155
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThread()Lmiui/app/screenelement/RenderThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 160
    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeClock;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    goto :goto_0
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 75
    return-void
.end method
