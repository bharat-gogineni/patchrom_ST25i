.class public Lcom/android/mms/ui/PickerActivity;
.super Landroid/app/Activity;
.source "PickerActivity.java"


# static fields
.field public static PICK_TYPE_FESTIVAL:I

.field public static PICK_TYPE_KEY:Ljava/lang/String;

.field public static PICK_TYPE_PHRASE:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

.field private mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

.field private mPickType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "pick_type"

    sput-object v0, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_KEY:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_PHRASE:I

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_FESTIVAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f1000b3

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f04003b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/PickerActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/mms/ui/PickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mActionBar:Landroid/app/ActionBar;

    .line 30
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/android/mms/ui/PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_KEY:Ljava/lang/String;

    sget v4, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_PHRASE:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/PickerActivity;->mPickType:I

    .line 34
    invoke-virtual {p0}, Lcom/android/mms/ui/PickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 35
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 37
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "FestivalFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/FestivalFragment;

    iput-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    .line 39
    const-string v2, "BookmarkFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BookmarkFragment;

    iput-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    .line 42
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Lcom/android/mms/ui/FestivalFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/FestivalFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    .line 44
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    const-string v3, "FestivalFragment"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    if-nez v2, :cond_1

    .line 48
    new-instance v2, Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/BookmarkFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    .line 49
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    const-string v3, "BookmarkFragment"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 52
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/PickerActivity;->mPickType:I

    sget v3, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_PHRASE:I

    if-ne v2, v3, :cond_3

    .line 53
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f0a011b

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 54
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 61
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 62
    return-void

    .line 55
    :cond_3
    iget v2, p0, Lcom/android/mms/ui/PickerActivity;->mPickType:I

    sget v3, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_FESTIVAL:I

    if-ne v2, v3, :cond_2

    .line 56
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f0a011c

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 57
    iget-object v2, p0, Lcom/android/mms/ui/PickerActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/PickerActivity;->finish()V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 65
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/PickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/PickerActivity;->finish()V

    .line 67
    return-void
.end method
