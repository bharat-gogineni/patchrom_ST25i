.class public Lcom/miui/gallery/app/PickerActivity;
.super Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;
.source "PickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0022

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->finish()V

    .line 80
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-boolean v1, p0, Lcom/miui/gallery/app/PickerActivity;->mIsDialog:Z

    if-eqz v1, :cond_0

    .line 42
    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/GLRootView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 50
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b00c9

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PickerActivity;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->finish()V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivityWithBar;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected requestFeatures()V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/miui/gallery/app/PickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 59
    .local v0, mIsDialog:Z
    if-nez v0, :cond_0

    .line 60
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PickerActivity;->requestWindowFeature(I)Z

    .line 61
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PickerActivity;->requestWindowFeature(I)Z

    .line 64
    :cond_0
    const v1, 0x7f040010

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PickerActivity;->setContentView(I)V

    .line 65
    return-void
.end method
