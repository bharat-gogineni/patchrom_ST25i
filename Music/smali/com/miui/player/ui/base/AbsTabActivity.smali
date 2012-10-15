.class public abstract Lcom/miui/player/ui/base/AbsTabActivity;
.super Landroid/app/Activity;
.source "AbsTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;,
        Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;

.field protected mCurrentPagePosition:I

.field protected mFragmentsMenuIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPageAdapter:Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;

.field protected mTabFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mFragmentsMenuIds:Ljava/util/List;

    .line 271
    return-void
.end method

.method static changeTabBackground(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 9
    .parameter "context"
    .parameter "actionBar"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    .line 209
    .local v4, stub:Landroid/app/ActionBar$Tab;
    new-instance v6, Lcom/miui/player/ui/base/AbsTabActivity$1;

    invoke-direct {v6}, Lcom/miui/player/ui/base/AbsTabActivity$1;-><init>()V

    invoke-virtual {v4, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 224
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 225
    .local v5, stubView:Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 227
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 228
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 229
    .local v2, p:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    .line 230
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 231
    .local v3, pp:Landroid/view/ViewParent;
    instance-of v6, v3, Lcom/android/internal/widget/MiuiTabLayout;

    if-eqz v6, :cond_0

    .line 232
    move-object v0, v3

    check-cast v0, Lcom/android/internal/widget/MiuiTabLayout;

    move-object v1, v0

    .line 233
    .local v1, mtl:Lcom/android/internal/widget/MiuiTabLayout;
    const v6, 0x7f0200af

    const v7, 0x7f0200b0

    const v8, 0x7f0200b1

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/internal/widget/MiuiTabLayout;->changeBackgroundRes(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v1           #mtl:Lcom/android/internal/widget/MiuiTabLayout;
    .end local v3           #pp:Landroid/view/ViewParent;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 241
    return-void

    .line 239
    .end local v2           #p:Landroid/view/ViewParent;
    :catchall_0
    move-exception v6

    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    throw v6
.end method

.method private createTabFragments()V
    .locals 7

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 80
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 81
    .local v4, transaction:Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->getPagerCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tag-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 84
    .local v0, frag:Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/base/AbsTabActivity;->newTabFragment(I)Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;

    move-result-object v0

    .line 86
    iget-object v5, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 87
    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    check-cast v0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;

    .end local v0           #frag:Landroid/app/Fragment;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 93
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 94
    return-void
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 69
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 70
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-static {p0, v2}, Lcom/miui/player/ui/base/AbsTabActivity;->changeTabBackground(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->getPagerCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/base/AbsTabActivity;->newActionBarTab(Landroid/app/ActionBar;I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 73
    .local v1, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 74
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1           #tab:Landroid/app/ActionBar$Tab;
    :cond_0
    return-void
.end method

.method private initPagerAdapter()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->createPagerAdapter()Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mPageAdapter:Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;

    .line 59
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mPageAdapter:Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 61
    return-void
.end method

.method private selectTab(IZ)V
    .locals 3
    .parameter "position"
    .parameter "updateFragment"

    .prologue
    const/4 v2, 0x1

    .line 137
    iget v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mCurrentPagePosition:I

    if-ne p1, v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    iget v1, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mCurrentPagePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->onActiveStateChanged(Z)V

    .line 142
    iput p1, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mCurrentPagePosition:I

    .line 144
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 145
    if-eqz p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->invalidateOptionsMenu()V

    .line 150
    iget-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    iget v1, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mCurrentPagePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->onActiveStateChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected createPagerAdapter()Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/base/AbsTabActivity$MyPagerAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/List;)V

    return-object v0
.end method

.method protected abstract getPagerCount()I
.end method

.method protected abstract initializeViewPager()Landroid/support/v4/view/ViewPager;
.end method

.method protected abstract newActionBarTab(Landroid/app/ActionBar;I)Landroid/app/ActionBar$Tab;
.end method

.method protected abstract newTabFragment(I)Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->initializeViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 52
    invoke-direct {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->initActionBar()V

    .line 53
    invoke-direct {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->initPagerAdapter()V

    .line 54
    invoke-direct {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->createTabFragments()V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mFragmentsMenuIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 99
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;

    .line 100
    .local v0, f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mFragmentsMenuIds:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->getAllMenuIdList(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v0           #f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 126
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;

    .line 128
    .local v0, f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    invoke-virtual {v0}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->handleOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 133
    .end local v0           #f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    :goto_1
    return v2

    .line 126
    .restart local v0       #f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0           #f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 258
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 262
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 266
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/base/AbsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 267
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 268
    invoke-direct {p0, p1, v2}, Lcom/miui/player/ui/base/AbsTabActivity;->selectTab(IZ)V

    .line 269
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mTabFragments:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;

    .line 109
    .local v0, f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    invoke-virtual {v0}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    invoke-virtual {v0, p1}, Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;->prepareOptionMenu(Landroid/view/Menu;)V

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/base/AbsTabActivity;->mFragmentsMenuIds:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 113
    .local v3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 114
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 115
    .local v4, menuId:I
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 121
    .end local v0           #f:Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4           #menuId:I
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 245
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/base/AbsTabActivity;->selectTab(IZ)V

    .line 250
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 254
    return-void
.end method
