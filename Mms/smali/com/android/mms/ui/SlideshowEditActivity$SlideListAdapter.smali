.class Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field private final mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "slideshow"

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 364
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    .line 365
    iput p2, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mResource:I

    .line 366
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 367
    iput-object p3, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 368
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;I)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "resource"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 377
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideListItemView;

    .line 382
    .local v3, slideListItemView:Lcom/android/mms/ui/SlideListItemView;
    const v5, 0x7f1000ce

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 383
    .local v4, text:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a00fa

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, p1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 386
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v5

    div-int/lit16 v0, v5, 0x3e8

    .line 387
    .local v0, dur:I
    const v5, 0x7f1000cf

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #text:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 388
    .restart local v4       #text:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0001

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v1, Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v5, v3, v6}, Lcom/android/mms/ui/SlideshowPresenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .local v1, presenter:Lcom/android/mms/ui/Presenter;
    move-object v5, v1

    .line 392
    check-cast v5, Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 393
    invoke-virtual {v1}, Lcom/android/mms/ui/Presenter;->present()V

    .line 395
    return-object v3
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 372
    iget v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mResource:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->createViewFromResource(ILandroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
