.class public Lcom/miui/player/ui/UIHelper$MaskItemBinder;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/UIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaskItemBinder"
.end annotation


# instance fields
.field private final mCheckBoxId:I

.field private final mMaskId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "checkBoxId"
    .parameter "maskId"

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput p1, p0, Lcom/miui/player/ui/UIHelper$MaskItemBinder;->mCheckBoxId:I

    .line 599
    iput p2, p0, Lcom/miui/player/ui/UIHelper$MaskItemBinder;->mMaskId:I

    .line 600
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;ZZ)V
    .locals 4
    .parameter "view"
    .parameter "isSelected"
    .parameter "isMultiChoice"

    .prologue
    const/4 v3, 0x0

    .line 604
    iget v2, p0, Lcom/miui/player/ui/UIHelper$MaskItemBinder;->mCheckBoxId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 605
    .local v0, checkBox:Landroid/view/View;
    iget v2, p0, Lcom/miui/player/ui/UIHelper$MaskItemBinder;->mMaskId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 607
    .local v1, checkMask:Landroid/view/View;
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 608
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 609
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 612
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
