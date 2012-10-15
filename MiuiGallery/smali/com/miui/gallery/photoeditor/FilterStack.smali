.class public Lcom/miui/gallery/photoeditor/FilterStack;
.super Ljava/lang/Object;
.source "FilterStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/photoeditor/FilterStack$StackListener;
    }
.end annotation


# instance fields
.field private final appliedStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final buffers:[Lcom/miui/gallery/photoeditor/Photo;

.field private outputTopFilter:Z

.field private volatile paused:Z

.field private final photoView:Lcom/miui/gallery/photoeditor/PhotoView;

.field private queuedTopFilterChange:Ljava/lang/Runnable;

.field private final redoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/miui/gallery/photoeditor/Photo;

.field private final stackListener:Lcom/miui/gallery/photoeditor/FilterStack$StackListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/photoeditor/PhotoView;Lcom/miui/gallery/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V
    .locals 4
    .parameter "photoView"
    .parameter "stackListener"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/gallery/photoeditor/Photo;

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    .line 57
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    .line 58
    iput-object p2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->stackListener:Lcom/miui/gallery/photoeditor/FilterStack$StackListener;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    const-string v3, "applied_stack"

    invoke-direct {p0, p3, v3}, Lcom/miui/gallery/photoeditor/FilterStack;->getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    const-string v3, "redo_stack"

    invoke-direct {p0, p3, v3}, Lcom/miui/gallery/photoeditor/FilterStack;->getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 62
    iput-boolean v1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->outputTopFilter:Z

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {p2, v0, v1}, Lcom/miui/gallery/photoeditor/FilterStack$StackListener;->onStackChanged(ZZ)V

    .line 65
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 63
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/FilterStack;)Lcom/miui/gallery/photoeditor/FilterStack$StackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->stackListener:Lcom/miui/gallery/photoeditor/FilterStack$StackListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/FilterStack;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/filters/Filter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack;->pushFilterInternal(Lcom/miui/gallery/photoeditor/filters/Filter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/FilterStack;->stackChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/FilterStack;->invalidateTopFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/photoeditor/FilterStack;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->outputTopFilter:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/photoeditor/FilterStack;)Lcom/miui/gallery/photoeditor/Photo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/Photo;)Lcom/miui/gallery/photoeditor/Photo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/photoeditor/FilterStack;)[Lcom/miui/gallery/photoeditor/Photo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/photoeditor/FilterStack;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack;->getOutBufferIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/photoeditor/FilterStack;)Lcom/miui/gallery/photoeditor/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/FilterStack;->invalidate()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack;->callbackDone(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/photoeditor/FilterStack;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    return-object v0
.end method

.method private callbackDone(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v1, Lcom/miui/gallery/photoeditor/FilterStack$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack$1;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method private getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "savedState"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getOutBufferIndex(I)I
    .locals 1
    .parameter "filterIndex"

    .prologue
    .line 131
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private invalidate()V
    .locals 7

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/miui/gallery/photoeditor/Photo;->clear()V

    .line 87
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v5}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v6}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/gallery/photoeditor/Photo;->create(II)Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 92
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/miui/gallery/photoeditor/FilterStack;->reallocateBuffer(I)V

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;

    .line 96
    .local v1, photo:Lcom/miui/gallery/photoeditor/Photo;
    iget-boolean v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->outputTopFilter:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 97
    .local v2, size:I
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    iget-boolean v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->paused:Z

    if-nez v3, :cond_3

    .line 98
    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/FilterStack;->runFilter(I)Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v1

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    .end local v2           #size:I
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 101
    .restart local v2       #size:I
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-boolean v4, p0, Lcom/miui/gallery/photoeditor/FilterStack;->outputTopFilter:Z

    invoke-virtual {v3, v1, v4}, Lcom/miui/gallery/photoeditor/PhotoView;->setPhoto(Lcom/miui/gallery/photoeditor/Photo;Z)V

    .line 103
    .end local v1           #photo:Lcom/miui/gallery/photoeditor/Photo;
    .end local v2           #size:I
    :cond_4
    return-void
.end method

.method private invalidateTopFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput-boolean v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->outputTopFilter:Z

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->runFilter(I)Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/PhotoView;->setPhoto(Lcom/miui/gallery/photoeditor/Photo;Z)V

    .line 110
    :cond_0
    return-void
.end method

.method private pushFilterInternal(Lcom/miui/gallery/photoeditor/filters/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->outputTopFilter:Z

    .line 192
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/FilterStack;->stackChanged()V

    .line 193
    return-void
.end method

.method private reallocateBuffer(I)V
    .locals 4
    .parameter "target"

    .prologue
    .line 78
    xor-int/lit8 v0, p1, 0x1

    .line 79
    .local v0, other:I
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/gallery/photoeditor/Photo;->create(II)Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v2

    aput-object v2, v1, p1

    .line 80
    return-void
.end method

.method private runFilter(I)Lcom/miui/gallery/photoeditor/Photo;
    .locals 4
    .parameter "filterIndex"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack;->getOutBufferIndex(I)I

    move-result v1

    .line 114
    .local v1, out:I
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    xor-int/lit8 v3, v1, 0x1

    aget-object v0, v2, v3

    .line 115
    .local v0, input:Lcom/miui/gallery/photoeditor/Photo;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/miui/gallery/photoeditor/Photo;->matchDimension(Lcom/miui/gallery/photoeditor/Photo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/Photo;->clear()V

    .line 118
    invoke-direct {p0, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->reallocateBuffer(I)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/photoeditor/filters/Filter;

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/miui/gallery/photoeditor/filters/Filter;->process(Lcom/miui/gallery/photoeditor/Photo;Lcom/miui/gallery/photoeditor/Photo;)V

    .line 121
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;

    aget-object v2, v2, v1

    .line 123
    :goto_1
    return-object v2

    .line 114
    .end local v0           #input:Lcom/miui/gallery/photoeditor/Photo;
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;

    goto :goto_0

    .line 123
    .restart local v0       #input:Lcom/miui/gallery/photoeditor/Photo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private stackChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 147
    iget-object v4, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 148
    .local v1, canUndo:Z
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 149
    .local v0, canRedo:Z
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v3, Lcom/miui/gallery/photoeditor/FilterStack$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/gallery/photoeditor/FilterStack$2;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;ZZ)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void

    .end local v0           #canRedo:Z
    .end local v1           #canUndo:Z
    :cond_0
    move v1, v3

    .line 147
    goto :goto_0

    .restart local v1       #canUndo:Z
    :cond_1
    move v0, v3

    .line 148
    goto :goto_1
.end method


# virtual methods
.method public getOutputBitmap(Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v1, Lcom/miui/gallery/photoeditor/FilterStack$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack$3;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->paused:Z

    .line 257
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/PhotoView;->flush()V

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v1, Lcom/miui/gallery/photoeditor/FilterStack$9;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/FilterStack$9;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/PhotoView;->onPause()V

    .line 272
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/PhotoView;->onResume()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->paused:Z

    .line 277
    return-void
.end method

.method public pushFilter(Lcom/miui/gallery/photoeditor/filters/Filter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v1, Lcom/miui/gallery/photoeditor/FilterStack$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack$5;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/filters/Filter;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public redo(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v1, Lcom/miui/gallery/photoeditor/FilterStack$7;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack$7;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public saveStacks(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 73
    const-string v0, "applied_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    const-string v0, "redo_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    return-void
.end method

.method public setPhotoSource(Landroid/graphics/Bitmap;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "bitmap"
    .parameter "callback"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v1, Lcom/miui/gallery/photoeditor/FilterStack$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/photoeditor/FilterStack$4;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;Landroid/graphics/Bitmap;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public topFilterChanged(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 242
    :cond_0
    new-instance v0, Lcom/miui/gallery/photoeditor/FilterStack$8;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack$8;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public undo(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    new-instance v1, Lcom/miui/gallery/photoeditor/FilterStack$6;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/FilterStack$6;-><init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method
