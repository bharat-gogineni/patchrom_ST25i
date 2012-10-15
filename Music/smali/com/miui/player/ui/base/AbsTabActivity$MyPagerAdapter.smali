.class public Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AbsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/AbsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionTmp:Landroid/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Ljava/util/List;)V
    .locals 1
    .parameter "fm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, fragments:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 160
    iput-object p1, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 161
    iput-object p2, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragments:Ljava/util/List;

    .line 162
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 190
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 197
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 199
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 180
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;->mTransactionTmp:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 181
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 203
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
