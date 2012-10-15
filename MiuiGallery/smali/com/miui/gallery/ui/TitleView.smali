.class public Lcom/miui/gallery/ui/TitleView;
.super Ljava/lang/Object;
.source "TitleView.java"


# instance fields
.field mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "viewGroupId"

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/ui/TitleView;->mViewGroup:Landroid/view/ViewGroup;

    .line 15
    iget-object v0, p0, Lcom/miui/gallery/ui/TitleView;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "mViewGroup should not be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void

    :cond_0
    move v0, v1

    .line 15
    goto :goto_0
.end method


# virtual methods
.method public setCount(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 19
    iget-object v1, p0, Lcom/miui/gallery/ui/TitleView;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 26
    iget-object v1, p0, Lcom/miui/gallery/ui/TitleView;->mViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b005e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    :cond_0
    return-void
.end method
