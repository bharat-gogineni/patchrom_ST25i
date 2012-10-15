.class public Lcom/android/mms/ui/FestivalFragment;
.super Landroid/app/Fragment;
.source "FestivalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDisclaimerListener:Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;

.field private mDownloadingView:Landroid/view/View;

.field private mFirstVisible:Z

.field private mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPickerMode:Z

.field private mPref:Landroid/content/SharedPreferences;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FestivalFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FestivalFragment;)Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FestivalFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mDownloadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FestivalFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private checkForUpdate(Z)V
    .locals 9
    .parameter "forceUpdate"

    .prologue
    const/4 v8, 0x0

    .line 74
    iget-object v4, p0, Lcom/android/mms/ui/FestivalFragment;->mPref:Landroid/content/SharedPreferences;

    const-string v5, "update_timestamp"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 75
    .local v2, updateTimestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    .local v0, time:J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/FestivalFragment;->mDownloadingView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 81
    new-instance v4, Lcom/android/mms/ui/FestivalFragment$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/FestivalFragment$1;-><init>(Lcom/android/mms/ui/FestivalFragment;)V

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/FestivalFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 128
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 129
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mDisclaimerListener:Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mDisclaimerListener:Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;

    invoke-interface {v0}, Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;->onRefuseDisclaim()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 140
    iget-boolean v0, p0, Lcom/android/mms/ui/FestivalFragment;->mPickerMode:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/PickerActivity;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/PickerActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 51
    const v0, 0x7f040010

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mRootView:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/PickerActivity;

    if-eqz v0, :cond_0

    .line 54
    iput-boolean v2, p0, Lcom/android/mms/ui/FestivalFragment;->mPickerMode:Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListView:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->setListViewTouchPadding(Landroid/widget/AbsListView;)V

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mDownloadingView:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mPref:Landroid/content/SharedPreferences;

    .line 68
    iput-boolean v2, p0, Lcom/android/mms/ui/FestivalFragment;->mFirstVisible:Z

    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 175
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 109
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/FestivalSmsList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v2, "category_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-boolean v0, p0, Lcom/android/mms/ui/FestivalFragment;->mPickerMode:Z

    if-eqz v0, :cond_2

    .line 117
    const-string v0, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/16 v0, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/FestivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FestivalFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->requery()V

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/FestivalFragment;->mListAdapter:Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalSmsCategoryListAdapter;->close()V

    .line 170
    return-void
.end method

.method public onVisibleInPager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-boolean v1, p0, Lcom/android/mms/ui/FestivalFragment;->mFirstVisible:Z

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0, v3}, Lcom/android/mms/ui/FestivalFragment;->checkForUpdate(Z)V

    .line 155
    iput-boolean v3, p0, Lcom/android/mms/ui/FestivalFragment;->mFirstVisible:Z

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "confirm_miui_disclaimer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MIUI_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, i:Landroid/content/Intent;
    const-string v1, "stop_package_name"

    iget-object v2, p0, Lcom/android/mms/ui/FestivalFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/FestivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public refreash()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FestivalFragment;->checkForUpdate(Z)V

    .line 179
    return-void
.end method

.method public setDisclaimerListener(Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;)V
    .locals 0
    .parameter "disclaimerListener"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/mms/ui/FestivalFragment;->mDisclaimerListener:Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;

    .line 184
    return-void
.end method
