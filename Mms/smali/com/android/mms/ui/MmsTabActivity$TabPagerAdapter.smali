.class Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MmsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/android/mms/ui/MmsTabActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsTabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 413
    invoke-virtual {p1}, Lcom/android/mms/ui/MmsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 414
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 461
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 470
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lcom/android/mms/ui/MmsTabActivity$TabState;->values()[Lcom/android/mms/ui/MmsTabActivity$TabState;

    move-result-object v1

    array-length v0, v1

    .line 419
    .local v0, count:I
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #calls: Lcom/android/mms/ui/MmsTabActivity;->shouldShowFestival()Z
    invoke-static {v1}, Lcom/android/mms/ui/MmsTabActivity;->access$200(Lcom/android/mms/ui/MmsTabActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    add-int/lit8 v0, v0, -0x1

    .line 422
    :cond_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MmsTabActivity;->access$300(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/ConversationFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 429
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    .line 438
    :goto_0
    return v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MmsTabActivity;->access$400(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/BookmarkFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 432
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #getter for: Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;
    invoke-static {v0}, Lcom/android/mms/ui/MmsTabActivity;->access$500(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/FestivalFragment;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 435
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    .line 438
    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    #calls: Lcom/android/mms/ui/MmsTabActivity;->getFragment(I)Landroid/app/Fragment;
    invoke-static {v1, p2}, Lcom/android/mms/ui/MmsTabActivity;->access$600(Lcom/android/mms/ui/MmsTabActivity;I)Landroid/app/Fragment;

    move-result-object v0

    .line 451
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 452
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 474
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

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 484
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 443
    return-void
.end method
