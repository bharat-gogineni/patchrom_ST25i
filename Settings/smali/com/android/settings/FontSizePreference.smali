.class public Lcom/android/settings/FontSizePreference;
.super Landroid/preference/TwoStatePreference;
.source "FontSizePreference.java"


# instance fields
.field private mPreviewSize:I

.field private mRowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    .line 16
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizePreference;->setLayoutResource(I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 28
    const v2, 0x7f080083

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 29
    .local v0, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {p0}, Lcom/android/settings/FontSizePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 31
    iget v2, p0, Lcom/android/settings/FontSizePreference;->mRowHeight:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 32
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    .local v1, textView:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #textView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 35
    .restart local v1       #textView:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "rowHeight"
    .parameter "previewSize"

    .prologue
    .line 20
    iput p1, p0, Lcom/android/settings/FontSizePreference;->mRowHeight:I

    .line 21
    iput p2, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    .line 22
    return-void
.end method
