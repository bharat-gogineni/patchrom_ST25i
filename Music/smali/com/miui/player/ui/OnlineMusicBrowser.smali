.class public Lcom/miui/player/ui/OnlineMusicBrowser;
.super Lcom/miui/player/ui/base/AbsTabActivity;
.source "OnlineMusicBrowser.java"


# static fields
.field static final TAB_TEXT_IDS:[I


# instance fields
.field private mRecommendFragment:Lcom/miui/player/ui/fragment/RecommendFragment;

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/OnlineMusicBrowser;->TAB_TEXT_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x79t 0x0t 0x9t 0x7ft
        0x7at 0x0t 0x9t 0x7ft
        0x7bt 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/player/ui/base/AbsTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPagerCount()I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/miui/player/ui/OnlineMusicBrowser;->TAB_TEXT_IDS:[I

    array-length v0, v0

    return v0
.end method

.method protected initializeViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineMusicBrowser;->setContentView(I)V

    .line 54
    const v0, 0x7f0c0082

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineMusicBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected newActionBarTab(Landroid/app/ActionBar;I)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "actionBar"
    .parameter "position"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 66
    .local v0, tab:Landroid/app/ActionBar$Tab;
    sget-object v1, Lcom/miui/player/ui/OnlineMusicBrowser;->TAB_TEXT_IDS:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 67
    return-object v0
.end method

.method protected newTabFragment(I)Lcom/miui/player/ui/base/AbsTabActivity$AbsTabFragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no fragment for position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    new-instance v0, Lcom/miui/player/ui/fragment/RecommendFragment;

    invoke-direct {v0}, Lcom/miui/player/ui/fragment/RecommendFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mRecommendFragment:Lcom/miui/player/ui/fragment/RecommendFragment;

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mRecommendFragment:Lcom/miui/player/ui/fragment/RecommendFragment;

    .line 79
    :goto_0
    return-object v0

    .line 77
    :pswitch_1
    new-instance v0, Lcom/miui/player/ui/fragment/BillListFragment;

    invoke-direct {v0}, Lcom/miui/player/ui/fragment/BillListFragment;-><init>()V

    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v0, Lcom/miui/player/ui/fragment/ChannelListFragment;

    invoke-direct {v0}, Lcom/miui/player/ui/fragment/ChannelListFragment;-><init>()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mRecommendFragment:Lcom/miui/player/ui/fragment/RecommendFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mRecommendFragment:Lcom/miui/player/ui/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/RecommendFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mRecommendFragment:Lcom/miui/player/ui/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/RecommendFragment;->hideSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/base/AbsTabActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 39
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/OnlineMusicBrowser;->setVolumeControlStream(I)V

    .line 40
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/AbsTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryImage(Landroid/graphics/Bitmap;)V

    .line 45
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBrowser;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/OnlineMusicBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 48
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/AbsTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 111
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBrowser;->finish()V

    goto :goto_0

    .line 114
    :sswitch_1
    invoke-static {p0}, Lcom/miui/player/service/SleepModeManager;->toggleSleepMode(Landroid/app/Activity;)V

    goto :goto_0

    .line 117
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/MusicSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/OnlineMusicBrowser;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :sswitch_3
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->quitMediaPlay(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBrowser;->finish()V

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x12 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/16 v2, 0xf

    const/4 v3, 0x0

    .line 99
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    const/16 v0, 0x62

    const v1, 0x7f090008

    invoke-interface {p1, v3, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 101
    const/16 v0, 0xe

    const/16 v1, 0x63

    const v2, 0x7f090013

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 102
    const/16 v0, 0x12

    const/16 v1, 0x64

    const v2, 0x7f090010

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/AbsTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
