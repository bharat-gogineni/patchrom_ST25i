.class Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;
.super Ljava/lang/Object;
.source "MultiChoiceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/MultiChoiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectionBar"
.end annotation


# instance fields
.field private final mPopupMenu:Landroid/widget/PopupMenu;

.field private final mSelectionBar:Landroid/view/View;

.field private final mSelectionMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "l"

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const v0, 0x7f030022

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mSelectionBar:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mSelectionBar:Landroid/view/View;

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mSelectionMsg:Landroid/widget/TextView;

    .line 311
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mSelectionMsg:Landroid/widget/TextView;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 312
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mSelectionMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 319
    return-void
.end method

.method public getSelectionBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mSelectionBar:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 342
    return-void
.end method

.method public setItemTitle(II)V
    .locals 4
    .parameter "id"
    .parameter "titleResId"

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 331
    .local v1, menu:Landroid/view/Menu;
    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 332
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v3, v2, v3, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->mSelectionMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method
