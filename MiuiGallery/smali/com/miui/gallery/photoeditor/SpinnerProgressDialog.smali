.class public Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;
.super Landroid/app/Dialog;
.source "SpinnerProgressDialog.java"


# static fields
.field private static dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

.field private static toolbar:Landroid/view/ViewGroup;


# instance fields
.field private final enabledTools:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 74
    sget-object v0, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->toolbar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0012

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->enabledTools:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Landroid/widget/ProgressBar;

    sget-object v1, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->toolbar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method public static dismissDialog()V
    .locals 3

    .prologue
    .line 63
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    if-eqz v2, :cond_1

    .line 64
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dismiss()V

    .line 66
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    iget-object v2, v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->enabledTools:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 67
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 69
    .end local v1           #view:Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    .line 71
    :cond_1
    return-void
.end method

.method public static initialize(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "toolbar"

    .prologue
    .line 42
    sput-object p0, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->toolbar:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method

.method public static showDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    if-nez v2, :cond_1

    .line 48
    new-instance v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    invoke-direct {v2}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;-><init>()V

    sput-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    .line 49
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->setCancelable(Z)V

    .line 50
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->show()V

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->toolbar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 53
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->toolbar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dialog:Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;

    iget-object v2, v2, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->enabledTools:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    sget-object v0, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->toolbar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
