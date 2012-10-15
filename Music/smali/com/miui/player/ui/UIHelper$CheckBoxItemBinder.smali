.class public Lcom/miui/player/ui/UIHelper$CheckBoxItemBinder;
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
    name = "CheckBoxItemBinder"
.end annotation


# instance fields
.field public final mCheckBoxId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "checkBoxId"

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput p1, p0, Lcom/miui/player/ui/UIHelper$CheckBoxItemBinder;->mCheckBoxId:I

    .line 623
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;ZZ)V
    .locals 3
    .parameter "view"
    .parameter "isSelected"
    .parameter "isMultiChoice"

    .prologue
    const/4 v2, 0x0

    .line 628
    iget v1, p0, Lcom/miui/player/ui/UIHelper$CheckBoxItemBinder;->mCheckBoxId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 629
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz p3, :cond_0

    .line 630
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 631
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 632
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 633
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 634
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
