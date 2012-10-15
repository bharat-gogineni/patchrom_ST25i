.class public abstract Lcom/miui/gallery/photoeditor/actions/EffectAction;
.super Landroid/widget/LinearLayout;
.source "EffectAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;,
        Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;
    }
.end annotation


# instance fields
.field protected factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

.field private filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

.field private lastFilterChangedCallback:Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

.field private listener:Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;

.field private pushedFilter:Z

.field private tooltip:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/actions/EffectAction;)Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->listener:Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 114
    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->pushedFilter:Z

    .line 117
    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

    .line 119
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 120
    return-void
.end method


# virtual methods
.method public begin(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;)V
    .locals 3
    .parameter "filterStack"
    .parameter "factory"

    .prologue
    const/4 v2, 0x0

    .line 78
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    .line 79
    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->doBegin()V

    .line 88
    return-void
.end method

.method protected abstract doBegin()V
.end method

.method protected abstract doEnd()V
.end method

.method public end(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnableOnODone"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->doEnd()V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

    #getter for: Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->done:Z
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->access$100(Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

    new-instance v1, Lcom/miui/gallery/photoeditor/actions/EffectAction$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/actions/EffectAction$2;-><init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V

    #setter for: Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->access$202(Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public name()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected notifyDone()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->listener:Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->listener:Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;->onDone()V

    .line 126
    :cond_0
    return-void
.end method

.method protected notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V
    .locals 2
    .parameter "filter"
    .parameter "output"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/filters/Filter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/photoeditor/FilterStack;->pushFilter(Lcom/miui/gallery/photoeditor/filters/Filter;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->pushedFilter:Z

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 135
    new-instance v0, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;-><init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;Lcom/miui/gallery/photoeditor/actions/EffectAction$1;)V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->topFilterChanged(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    .line 138
    :cond_1
    return-void
.end method

.method public setListener(Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->listener:Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;

    .line 61
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction;->listener:Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/miui/gallery/photoeditor/actions/EffectAction$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/photoeditor/actions/EffectAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;)V

    goto :goto_0
.end method
