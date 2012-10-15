.class public Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;
.super Ljava/lang/Object;
.source "OnlineLoadingStatusBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mLoadingFailedId:I

.field private mLoadingInProcessId:I

.field private final mRetryClick:Landroid/view/View$OnClickListener;

.field private final mStatusBar:Landroid/view/View;

.field private final mStatusHintTextView:Landroid/widget/TextView;

.field private final mStatusProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "a"
    .parameter "id"
    .parameter "retryClick"

    .prologue
    .line 21
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "container"
    .parameter "retryClick"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    .line 27
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    .line 28
    iput-object p2, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mRetryClick:Landroid/view/View$OnClickListener;

    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mRetryClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadInProcess()V

    .line 74
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mRetryClick:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setLoadFailed()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 61
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingFailedId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    return-void
.end method

.method public setLoadInProcess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingInProcessId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public setLoadSuccess()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public setLoadingHintTextId(II)V
    .locals 0
    .parameter "loadingInProcessId"
    .parameter "loadingFailedId"

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingInProcessId:I

    .line 34
    iput p2, p0, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->mLoadingFailedId:I

    .line 35
    return-void
.end method
