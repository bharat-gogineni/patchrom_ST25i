.class public Lcom/android/thememanager/ThemeResourceTabActivity;
.super Lmiui/app/resourcebrowser/ResourceTabActivity;
.source "ThemeResourceTabActivity.java"


# instance fields
.field private mResourceType:J

.field private mSearchView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 66
    invoke-static {p1, p2, p0}, Lcom/android/thememanager/UIHelper;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 67
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    .line 68
    invoke-super {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceTabActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getActionBarTabs()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActionBar$Tab;>;"
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 75
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0a003b

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0a003c

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0a003d

    invoke-virtual {p0, v3}, Lcom/android/thememanager/ThemeResourceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-object v1
.end method

.method protected initTabFragment(I)Lmiui/app/resourcebrowser/BaseFragment;
    .locals 1
    .parameter "tabPosition"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-direct {v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;-><init>()V

    .line 92
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 88
    new-instance v0, Lcom/android/thememanager/OnlineThemeResourceListFragment;

    invoke-direct {v0}, Lcom/android/thememanager/OnlineThemeResourceListFragment;-><init>()V

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 90
    new-instance v0, Lcom/android/thememanager/ComponentFragment;

    invoke-direct {v0}, Lcom/android/thememanager/ComponentFragment;-><init>()V

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 32
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    invoke-static {v3, v4}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v2

    .line 38
    .local v2, titleId:I
    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mResourceType:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 39
    const v2, 0x7f0a0023

    .line 41
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 43
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mSearchView:Landroid/widget/ImageView;

    .line 44
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mSearchView:Landroid/widget/ImageView;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mSearchView:Landroid/widget/ImageView;

    const/16 v4, 0x12

    invoke-virtual {v3, v7, v7, v4, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 46
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mSearchView:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/thememanager/ThemeResourceTabActivity$1;

    invoke-direct {v4, p0}, Lcom/android/thememanager/ThemeResourceTabActivity$1;-><init>(Lcom/android/thememanager/ThemeResourceTabActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 53
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 54
    .local v1, params:Landroid/app/ActionBar$LayoutParams;
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 56
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/thememanager/ThemeResourceTabActivity$2;

    invoke-direct {v4, p0}, Lcom/android/thememanager/ThemeResourceTabActivity$2;-><init>(Lcom/android/thememanager/ThemeResourceTabActivity;)V

    const-wide/16 v5, 0x320

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, appData:Landroid/os/Bundle;
    const-string v1, "META_DATA"

    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    const-string v1, "META_DATA_FOR_LOCAL"

    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    const-string v1, "META_DATA_FOR_ONLINE"

    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceTabActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/android/thememanager/ThemeResourceTabActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 102
    const/4 v1, 0x1

    return v1
.end method
