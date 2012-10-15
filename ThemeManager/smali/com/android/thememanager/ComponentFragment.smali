.class public Lcom/android/thememanager/ComponentFragment;
.super Lmiui/app/resourcebrowser/BaseFragment;
.source "ComponentFragment.java"


# static fields
.field private static final ComponentCategoryTitles:[I

.field private static final ComponentFlags:[[Ljava/lang/Long;


# instance fields
.field private mCates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/thememanager/view/ComponentCategoryView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 26
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/thememanager/ComponentFragment;->ComponentCategoryTitles:[I

    .line 30
    new-array v0, v5, [[Ljava/lang/Long;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Long;

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    const-wide/16 v2, 0x100

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-wide/16 v3, 0x200

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Long;

    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-wide/16 v2, 0x80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    const-wide/16 v2, 0x800

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/thememanager/ComponentFragment;->ComponentFlags:[[Ljava/lang/Long;

    return-void

    .line 26
    :array_0
    .array-data 0x4
        0xet 0x0t 0xat 0x7ft
        0xft 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/app/resourcebrowser/BaseFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/ComponentFragment;->mCates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/thememanager/ComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v4, linear:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    const/high16 v7, 0x4120

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v10, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v1, v7

    .line 55
    .local v1, bottomPadding:I
    invoke-virtual {v4, v9, v9, v9, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v7, Lcom/android/thememanager/ComponentFragment;->ComponentCategoryTitles:[I

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 58
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v6, validComponentFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v7, Lcom/android/thememanager/ComponentFragment;->ComponentFlags:[[Ljava/lang/Long;

    aget-object v7, v7, v3

    invoke-static {v6, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceFont()Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    const-wide/16 v7, 0x10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceAudioEffect()Z

    move-result v7

    if-nez v7, :cond_1

    .line 64
    const-wide/32 v7, 0x8000

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_2
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/thememanager/view/ComponentCategoryView;

    .line 71
    .local v2, cate:Lcom/android/thememanager/view/ComponentCategoryView;
    sget-object v7, Lcom/android/thememanager/ComponentFragment;->ComponentCategoryTitles:[I

    aget v7, v7, v3

    invoke-virtual {v2, v7}, Lcom/android/thememanager/view/ComponentCategoryView;->setTitle(I)V

    .line 73
    invoke-virtual {v2, v6}, Lcom/android/thememanager/view/ComponentCategoryView;->setComponentItems(Ljava/util/List;)V

    .line 74
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v7, p0, Lcom/android/thememanager/ComponentFragment;->mCates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v2           #cate:Lcom/android/thememanager/view/ComponentCategoryView;
    .end local v6           #validComponentFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    new-instance v5, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/thememanager/ComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v5, root:Landroid/widget/ScrollView;
    invoke-virtual {v5, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 81
    return-object v5
.end method

.method public onFragmentCreateOptionsMenu(Landroid/view/Menu;)Ljava/util/List;
    .locals 3
    .parameter "menu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 94
    const v0, 0x7f0a0005

    .line 95
    .local v0, menuId:I
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-object v1
.end method

.method public onFragmentOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/thememanager/ComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->backupCurrentTheme(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lmiui/app/resourcebrowser/BaseFragment;->onResume()V

    .line 87
    iget-object v2, p0, Lcom/android/thememanager/ComponentFragment;->mCates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/thememanager/view/ComponentCategoryView;

    .line 88
    .local v1, v:Lcom/android/thememanager/view/ComponentCategoryView;
    invoke-virtual {v1}, Lcom/android/thememanager/view/ComponentCategoryView;->refresh()V

    goto :goto_0

    .line 90
    .end local v1           #v:Lcom/android/thememanager/view/ComponentCategoryView;
    :cond_0
    return-void
.end method
