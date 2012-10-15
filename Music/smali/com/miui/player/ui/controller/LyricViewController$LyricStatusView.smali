.class Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;
.super Ljava/lang/Object;
.source "LyricViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricStatusView"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/View;

.field private final mNoLyricIndicator:Landroid/view/View;

.field private final mStatusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const v0, 0x7f0c0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mContainer:Landroid/view/View;

    .line 390
    const v0, 0x7f0c0032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mStatusText:Landroid/widget/TextView;

    .line 391
    const v0, 0x7f0c0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mNoLyricIndicator:Landroid/view/View;

    .line 392
    return-void
.end method


# virtual methods
.method public setIndicatorVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 401
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mNoLyricIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void

    .line 400
    .end local v0           #visibility:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 396
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 397
    return-void

    .line 395
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
