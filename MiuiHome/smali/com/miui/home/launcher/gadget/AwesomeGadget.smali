.class public Lcom/miui/home/launcher/gadget/AwesomeGadget;
.super Landroid/widget/FrameLayout;
.source "AwesomeGadget.java"

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
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->setWillNotDraw(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public getUpdateInterval()I
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, interval:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v1, :cond_0

    .line 83
    iget v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I

    .line 85
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
    .locals 3
    .parameter "config"

    .prologue
    .line 76
    new-instance v0, Lmiui/app/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/app/screenelement/util/ZipResourceLoader;

    invoke-direct {v2, p1}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceLoader;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    .line 77
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

    .line 105
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-nez v4, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v4}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 111
    .local v3, root:Lorg/w3c/dom/Element;
    const-string v4, "gadget"

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 112
    new-instance v4, Lmiui/app/screenelement/ScreenElementLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad root tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .end local v3           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 129
    .end local v0           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v4, :cond_0

    .line 132
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThread()Lmiui/app/screenelement/RenderThread;

    move-result-object v1

    .line 133
    .local v1, globalThread:Lmiui/app/screenelement/RenderThread;
    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->isStarted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    :try_start_1
    invoke-virtual {v1}, Lmiui/app/screenelement/RenderThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 140
    :cond_2
    :goto_2
    new-instance v4, Lmiui/app/screenelement/MiAdvancedView;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v4, v5, v6, v1}, Lmiui/app/screenelement/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    .line 141
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/MiAdvancedView;->setFocusable(Z)V

    .line 142
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 115
    .end local v1           #globalThread:Lmiui/app/screenelement/RenderThread;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3       #root:Lorg/w3c/dom/Element;
    :cond_3
    :try_start_2
    const-string v4, "update_interval"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    :goto_3
    :try_start_3
    new-instance v4, Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 120
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget v5, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mTargetDensity:I

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;->setTargetDensity(I)V

    .line 121
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const/high16 v5, 0x447a

    iget v6, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lmiui/app/screenelement/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 122
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/app/screenelement/ScreenElementRoot;->load()Z
    :try_end_3
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 125
    .end local v3           #root:Lorg/w3c/dom/Element;
    :catch_1
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #root:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/NumberFormatException;
    const v4, 0xea60

    :try_start_4
    iput v4, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I
    :try_end_4
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 136
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #root:Lorg/w3c/dom/Element;
    .restart local v1       #globalThread:Lmiui/app/screenelement/RenderThread;
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 177
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 40
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
    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v2, "pause"

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->invalidate()V

    .line 53
    :cond_1
    return-void

    .line 47
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
    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v2, "resume"

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    .line 68
    :cond_2
    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onResume()V

    .line 153
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onPause()V

    .line 160
    :cond_0
    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Lmiui/app/screenelement/MiAdvancedView;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    goto :goto_0
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 72
    return-void
.end method
