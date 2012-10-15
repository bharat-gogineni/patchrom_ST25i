.class public Lcom/android/thememanager/view/ComponentCategoryView;
.super Landroid/widget/LinearLayout;
.source "ComponentCategoryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;
    }
.end annotation


# instance fields
.field private mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/ComponentCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/thememanager/view/ComponentCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/view/ComponentCategoryView;)Lcom/android/thememanager/view/FixedHeightGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/view/ComponentCategoryView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 45
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/ComponentCategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mTitle:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/ComponentCategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/view/FixedHeightGridView;

    iput-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/FixedHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 79
    return-void
.end method

.method public setComponentItems(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, componentFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->init()V

    .line 62
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/FixedHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GridView has been set adater."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    new-instance v1, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;

    invoke-virtual {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;-><init>(Lcom/android/thememanager/view/ComponentCategoryView;Landroid/content/Context;Ljava/util/List;Lcom/android/thememanager/view/FixedHeightGridView;)V

    invoke-virtual {v0, v1}, Lcom/android/thememanager/view/FixedHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    new-instance v1, Lcom/android/thememanager/view/ComponentCategoryView$1;

    invoke-direct {v1, p0}, Lcom/android/thememanager/view/ComponentCategoryView$1;-><init>(Lcom/android/thememanager/view/ComponentCategoryView;)V

    invoke-virtual {v0, v1}, Lcom/android/thememanager/view/FixedHeightGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->init()V

    .line 52
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    return-void
.end method
