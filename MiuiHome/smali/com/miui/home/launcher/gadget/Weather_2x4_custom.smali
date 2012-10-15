.class public Lcom/miui/home/launcher/gadget/Weather_2x4_custom;
.super Lcom/miui/home/launcher/gadget/WeatherBase;
.source "Weather_2x4_custom.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCityId:Ljava/lang/String;

.field private mCustomView:Lmiui/app/screenelement/MiAdvancedView;

.field private mElementContext:Lmiui/app/screenelement/ScreenContext;

.field private mIs24:Z

.field private mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

.field private mPackageFilePath:Ljava/lang/String;

.field private mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field private mVarCityId:Lmiui/app/screenelement/util/IndexedStringVariable;

.field private mVarIs24:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private resManager:Lmiui/app/screenelement/LifecycleResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/WeatherBase;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mIs24:Z

    .line 217
    new-instance v0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom$1;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_custom;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    .line 41
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mPackageFilePath:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->setWillNotDraw(Z)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/Weather_2x4_custom;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->updateCity()V

    return-void
.end method

.method private updateCity()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mVarCityId:Lmiui/app/screenelement/util/IndexedStringVariable;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mPid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v1, "next_city"

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mPid:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCityId:Ljava/lang/String;

    .line 215
    return-void
.end method


# virtual methods
.method protected getTypeId()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onAdded()V

    .line 203
    return-void
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 47
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onCreate()V

    .line 48
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-instance v0, Lmiui/app/screenelement/LifecycleResourceManager;

    new-instance v1, Lmiui/app/screenelement/util/ZipResourceLoader;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mPackageFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    const-wide/32 v2, 0xdbba0

    const-wide/32 v4, 0x5265c00

    invoke-direct/range {v0 .. v5}, Lmiui/app/screenelement/LifecycleResourceManager;-><init>(Lmiui/app/screenelement/ResourceLoader;JJ)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->resManager:Lmiui/app/screenelement/LifecycleResourceManager;

    .line 53
    new-instance v0, Lmiui/app/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->resManager:Lmiui/app/screenelement/LifecycleResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    .line 56
    :try_start_0
    new-instance v0, Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElementRoot;->load()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-nez v0, :cond_0

    .line 109
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v10

    .line 59
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v10           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v1, "button1"

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v6

    check-cast v6, Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 67
    .local v6, button1:Lmiui/app/screenelement/elements/ButtonScreenElement;
    if-eqz v6, :cond_1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    invoke-virtual {v6, v0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v1, "button2"

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v7

    check-cast v7, Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 73
    .local v7, button2:Lmiui/app/screenelement/elements/ButtonScreenElement;
    if-eqz v7, :cond_2

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    invoke-virtual {v7, v0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v1, "button3"

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v8

    check-cast v8, Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 79
    .local v8, button3:Lmiui/app/screenelement/elements/ButtonScreenElement;
    if-eqz v8, :cond_3

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    invoke-virtual {v8, v0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v1, "button4"

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v9

    check-cast v9, Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 85
    .local v9, button4:Lmiui/app/screenelement/elements/ButtonScreenElement;
    if-eqz v9, :cond_4

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mListener:Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;

    invoke-virtual {v9, v0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 89
    :cond_4
    new-instance v0, Lmiui/app/screenelement/util/IndexedStringVariable;

    const-string v1, "city_id"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mVarCityId:Lmiui/app/screenelement/util/IndexedStringVariable;

    .line 91
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "is24"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mVarIs24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    .line 94
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThread()Lmiui/app/screenelement/RenderThread;

    move-result-object v11

    .line 95
    .local v11, globalThread:Lmiui/app/screenelement/RenderThread;
    invoke-virtual {v11}, Lmiui/app/screenelement/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    :try_start_1
    invoke-virtual {v11}, Lmiui/app/screenelement/RenderThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :cond_5
    :goto_2
    new-instance v0, Lmiui/app/screenelement/MiAdvancedView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v0, v1, v2, v11}, Lmiui/app/screenelement/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/RenderThread;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/MiAdvancedView;->setFocusable(Z)V

    .line 104
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {p0, v0, v12}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 98
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onDeleted()V

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 209
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 147
    :cond_0
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onEditDisable()V

    .line 193
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onEditNormal()V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onPause()V

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v2, "pause"

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->invalidate()V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onPause()V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->resManager:Lmiui/app/screenelement/LifecycleResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/LifecycleResourceManager;->checkCache()V

    .line 163
    return-void

    .line 155
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
    .line 167
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v2, "resume"

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCustomView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onResume()V

    .line 176
    :cond_1
    return-void

    .line 171
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
    .line 180
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onStart()V

    .line 181
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThread()Lmiui/app/screenelement/RenderThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onStop()V

    .line 187
    invoke-static {}, Lmiui/app/screenelement/RenderThread;->globalThread()Lmiui/app/screenelement/RenderThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/RenderThread;->setPaused(Z)V

    .line 188
    return-void
.end method

.method protected updateCurTime()V
    .locals 5

    .prologue
    .line 112
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->updateCurTime()V

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->getCurrentCityName()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, cityName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->updateCity(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->getCurrentCityName()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mCityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mPid:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->updateCity()V

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 126
    .local v1, is24Format:Z
    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mIs24:Z

    if-eq v2, v1, :cond_2

    .line 127
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mVarIs24:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v1, :cond_3

    const-wide/high16 v2, 0x3ff0

    :goto_0
    invoke-virtual {v4, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    .line 128
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    const-string v3, "next_city"

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 130
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mIs24:Z

    .line 132
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->requestUpdate()V

    .line 133
    return-void

    .line 127
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
