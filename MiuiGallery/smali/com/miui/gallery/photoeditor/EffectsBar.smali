.class public Lcom/miui/gallery/photoeditor/EffectsBar;
.super Landroid/widget/LinearLayout;
.source "EffectsBar.java"


# instance fields
.field private activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

.field private effectToolPanel:Landroid/view/ViewGroup;

.field private effectsGallery:Landroid/view/View;

.field private effectsMenu:Lcom/miui/gallery/photoeditor/EffectsMenu;

.field private filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/EffectsBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/EffectsBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/EffectsBar;->createEffectsGallery(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/photoeditor/EffectsBar;)Lcom/miui/gallery/photoeditor/actions/EffectAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/photoeditor/EffectsBar;Lcom/miui/gallery/photoeditor/actions/EffectAction;)Lcom/miui/gallery/photoeditor/actions/EffectAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/photoeditor/EffectsBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/EffectsBar;->exitEffectsGallery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/photoeditor/EffectsBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/EffectsBar;->createEffectToolPanel()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/photoeditor/EffectsBar;)Lcom/miui/gallery/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/photoeditor/EffectsBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/photoeditor/EffectsBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/photoeditor/EffectsBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private createEffectToolPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040023

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->name()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/photoeditor/EffectsBar;->addView(Landroid/view/View;I)V

    .line 113
    return-void
.end method

.method private createEffectsGallery(I)V
    .locals 6
    .parameter "effectsId"

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040028

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const v4, 0x7f0b001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 76
    .local v2, scrollView:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    .local v0, effects:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/photoeditor/actions/EffectAction;

    invoke-direct {p0, v3}, Lcom/miui/gallery/photoeditor/EffectsBar;->setupEffectListener(Lcom/miui/gallery/photoeditor/actions/EffectAction;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v2, v5, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 82
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/miui/gallery/photoeditor/EffectsBar;->addView(Landroid/view/View;I)V

    .line 83
    return-void
.end method

.method private exitActiveEffect(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->showDialog()V

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    new-instance v1, Lcom/miui/gallery/photoeditor/EffectsBar$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/EffectsBar$3;-><init>(Lcom/miui/gallery/photoeditor/EffectsBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->end(Ljava/lang/Runnable;)V

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private exitEffectsGallery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    .local v0, scrollView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    .end local v0           #scrollView:Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 124
    const/4 v1, 0x1

    .line 126
    :cond_1
    return v1
.end method

.method private setupEffectListener(Lcom/miui/gallery/photoeditor/actions/EffectAction;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 86
    new-instance v0, Lcom/miui/gallery/photoeditor/EffectsBar$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/photoeditor/EffectsBar$2;-><init>(Lcom/miui/gallery/photoeditor/EffectsBar;Lcom/miui/gallery/photoeditor/actions/EffectAction;)V

    invoke-virtual {p1, v0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->setListener(Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public exit(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsMenu:Lcom/miui/gallery/photoeditor/EffectsMenu;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/EffectsMenu;->clearSelected()V

    .line 163
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v0, 0x1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/EffectsBar;->exitEffectsGallery()Z

    move-result v0

    .line 168
    .local v0, exited:Z
    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public initialize(Lcom/miui/gallery/photoeditor/FilterStack;)V
    .locals 2
    .parameter "filterStack"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    .line 51
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/EffectsMenu;

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsMenu:Lcom/miui/gallery/photoeditor/EffectsMenu;

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar;->effectsMenu:Lcom/miui/gallery/photoeditor/EffectsMenu;

    new-instance v1, Lcom/miui/gallery/photoeditor/EffectsBar$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/EffectsBar$1;-><init>(Lcom/miui/gallery/photoeditor/EffectsBar;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/EffectsMenu;->setOnToggleListener(Lcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;)V

    .line 70
    return-void
.end method
