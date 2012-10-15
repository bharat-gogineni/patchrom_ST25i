.class public Lcom/android/mms/ui/MmsTabActivity;
.super Landroid/app/Activity;
.source "MmsTabActivity.java"

# interfaces
.implements Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsTabActivity$7;,
        Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;,
        Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;,
        Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;,
        Lcom/android/mms/ui/MmsTabActivity$TabState;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/android/mms/ui/MmsTabActivity$TabState;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

.field private mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

.field private mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field private mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

.field private mMmsPageChangeListener:Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

.field private mMmsTabListener:Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

.field private mOldMsgPromptDialog:Landroid/app/AlertDialog;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSearchFragment:Lcom/android/mms/ui/SearchFragment;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;

.field private mWildMsgPromptDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity;->DEFAULT_TAB:Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsTabListener:Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

    .line 59
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsPageChangeListener:Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    .line 72
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity;->DEFAULT_TAB:Lcom/android/mms/ui/MmsTabActivity$TabState;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 753
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsTabActivity$6;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->shouldShowFestival()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/ConversationFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/BookmarkFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/FestivalFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsTabActivity;I)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsTabActivity;->selectTab(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsTabActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->setSearchMode(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;

    return-object v0
.end method

.method private addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V
    .locals 2
    .parameter "tabState"
    .parameter "title"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 351
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 352
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 353
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsTabListener:Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 354
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 355
    return-void
.end method

.method private askDownloadWildMessages()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mms_sync_wild_msg_state"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 224
    .local v4, state:I
    if-eq v4, v9, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 230
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 231
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 234
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 235
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 236
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mms_sync_wild_numbers"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, numbers:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/MmsTabActivity;->mWildMsgPromptDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_2

    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a01cf

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 247
    const v6, 0x7f0a01d0

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/mms/ui/MmsTabActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 248
    const v6, 0x1010355

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 250
    const v6, 0x7f0a0077

    new-instance v7, Lcom/android/mms/ui/MmsTabActivity$4;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsTabActivity$4;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    const v6, 0x7f0a0078

    new-instance v7, Lcom/android/mms/ui/MmsTabActivity$5;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MmsTabActivity$5;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MmsTabActivity;->mWildMsgPromptDialog:Landroid/app/AlertDialog;

    .line 280
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/MmsTabActivity;->mWildMsgPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 281
    iget-object v6, p0, Lcom/android/mms/ui/MmsTabActivity;->mWildMsgPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private askEnableMx()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 105
    const-string v0, "mx_popup_shown"

    .line 106
    .local v0, MX_POPUP_SHOWN:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 108
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v5, "mx_popup_shown"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 109
    .local v3, hasShown:Z
    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mms/transaction/MxActivateService;->isMxEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    new-instance v1, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v1, v7}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    .line 113
    .local v1, b:Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    const v5, 0x7f0a01b5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    .line 114
    const v5, 0x7f0a01d7

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    .line 115
    invoke-virtual {v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v2

    .line 116
    .local v2, dialog:Lmiui/widget/SimpleDialogFragment;
    const v5, 0x7f0a01b7

    new-instance v6, Lcom/android/mms/ui/MmsTabActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/MmsTabActivity$1;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    invoke-virtual {v2, v5, v6}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 124
    const/high16 v5, 0x104

    invoke-virtual {v2, v5, v8}, Lmiui/widget/SimpleDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 126
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "mx_popup_shown"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    .end local v1           #b:Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .end local v2           #dialog:Lmiui/widget/SimpleDialogFragment;
    :cond_0
    return-void
.end method

.method private askUploadOldMessages()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mms_upload_old_msg_state"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 135
    .local v5, state:I
    if-eq v5, v9, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPrivacyModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 141
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 142
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 146
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 147
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mms_upload_old_msg_accounts"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, oldAccounts:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->queryXiaomiAccountName()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, currentAccount:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/MmsTabActivity;->mOldMsgPromptDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_2

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a01d1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 158
    const v7, 0x7f0a01d2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v10

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/mms/ui/MmsTabActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v7, 0x1010355

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 161
    const v7, 0x7f0a0077

    new-instance v8, Lcom/android/mms/ui/MmsTabActivity$2;

    invoke-direct {v8, p0, v2}, Lcom/android/mms/ui/MmsTabActivity$2;-><init>(Lcom/android/mms/ui/MmsTabActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    const v7, 0x7f0a0078

    new-instance v8, Lcom/android/mms/ui/MmsTabActivity$3;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MmsTabActivity$3;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MmsTabActivity;->mOldMsgPromptDialog:Landroid/app/AlertDialog;

    .line 205
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MmsTabActivity;->mOldMsgPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 206
    iget-object v7, p0, Lcom/android/mms/ui/MmsTabActivity;->mOldMsgPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private createActionBar()V
    .locals 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 328
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 329
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 332
    sget-object v2, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v3, 0x7f0a011a

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MmsTabActivity;->addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 333
    sget-object v2, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v3, 0x7f0a011b

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MmsTabActivity;->addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 334
    sget-object v2, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v3, 0x7f0a011c

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MmsTabActivity;->addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 337
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, customSearchView:Landroid/view/View;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 341
    .local v1, layoutParams:Landroid/app/ActionBar$LayoutParams;
    const v2, 0x7f1000be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    .line 342
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 343
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0a0103

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 347
    return-void
.end method

.method private createFragments()V
    .locals 5

    .prologue
    const v4, 0x7f100092

    .line 358
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 360
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 362
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const v2, 0x7f100093

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SearchFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;

    .line 364
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 365
    new-instance v2, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPagerAdapter:Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;

    .line 366
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPagerAdapter:Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 367
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsPageChangeListener:Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 375
    const-string v2, "ConversationFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    .line 377
    const-string v2, "BookmarkFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BookmarkFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    .line 379
    const-string v2, "FestivalFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/FestivalFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    .line 382
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    if-nez v2, :cond_0

    .line 383
    new-instance v2, Lcom/android/mms/ui/ConversationFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/ConversationFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    .line 384
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    const-string v3, "ConversationFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    if-nez v2, :cond_1

    .line 388
    new-instance v2, Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/BookmarkFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    .line 389
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    const-string v3, "BookmarkFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    if-nez v2, :cond_2

    .line 393
    new-instance v2, Lcom/android/mms/ui/FestivalFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/FestivalFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    .line 394
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/FestivalFragment;->setDisclaimerListener(Lcom/android/mms/ui/FestivalFragment$DisclaimerListener;)V

    .line 395
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    const-string v3, "FestivalFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 400
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 401
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 402
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 404
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 405
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 406
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 523
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    .line 528
    :goto_0
    return-object v0

    .line 525
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    goto :goto_0

    .line 527
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    goto :goto_0

    .line 531
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onTabSpecifiedAction(Lcom/android/mms/ui/MmsTabActivity$TabState;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 556
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-ne p1, v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/FestivalFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalFragment;->onVisibleInPager()V

    .line 559
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-eq p1, v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationFragment;->exitEditMode()V

    .line 562
    :cond_1
    return-void
.end method

.method private queryXiaomiAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 212
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private selectTab(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 4
    .parameter "tab"
    .parameter "updateFragment"

    .prologue
    .line 535
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-ne p1, v1, :cond_1

    .line 553
    :goto_0
    return-void

    .line 539
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 541
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    .line 542
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 544
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 547
    :cond_2
    if-eqz p2, :cond_3

    .line 548
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 550
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    .line 552
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->onTabSpecifiedAction(Lcom/android/mms/ui/MmsTabActivity$TabState;)V

    goto :goto_0
.end method

.method private setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 750
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 751
    return-void
.end method

.method private setSearchMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eq v0, p1, :cond_0

    .line 690
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    .line 691
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->updateActionBar()V

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 696
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->setFocusOnSearchView()V

    .line 700
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method private shouldShowFestival()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 306
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_hide_festival"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isZhCnLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 705
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 706
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->setFocusOnSearchView()V

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 710
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 722
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->updateDisplayOptions()V

    .line 723
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 716
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    goto :goto_0
.end method

.method private updateDisplayOptions()V
    .locals 5

    .prologue
    .line 727
    const/16 v0, 0x16

    .line 731
    .local v0, MASK:I
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x16

    .line 734
    .local v1, current:I
    const/4 v2, 0x0

    .line 735
    .local v2, newFlags:I
    iget-boolean v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v3, :cond_0

    .line 736
    or-int/lit8 v2, v2, 0x2

    .line 737
    or-int/lit8 v2, v2, 0x4

    .line 738
    or-int/lit8 v2, v2, 0x10

    .line 740
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 742
    if-eq v1, v2, :cond_1

    .line 744
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x16

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 746
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->moveTaskToBack(Z)Z

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setSearchMode(Z)V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->createActionBar()V

    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->createFragments()V

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->askEnableMx()V

    .line 102
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 566
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 567
    const/4 v0, 0x2

    .line 568
    .local v0, actionEnum:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 569
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 571
    :cond_0
    const v1, 0x7f1000ee

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 572
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 621
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 655
    const/4 v0, 0x0

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 623
    :sswitch_0
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 626
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsTabActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 630
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onSearchRequested()Z

    goto :goto_0

    .line 634
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_FIREWALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 637
    :sswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationFragment;->enterEditMode()V

    goto :goto_0

    .line 642
    :sswitch_5
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/FestivalFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/FestivalFragment;->refreash()V

    goto :goto_0

    .line 648
    :sswitch_6
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onBackPressed()V

    goto :goto_0

    .line 621
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_6
        0x7f1000e0 -> :sswitch_4
        0x7f1000e2 -> :sswitch_1
        0x7f1000ed -> :sswitch_2
        0x7f1000ee -> :sswitch_0
        0x7f1000ef -> :sswitch_3
        0x7f1000f0 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f1000ee

    const v6, 0x7f1000ed

    const v5, 0x7f1000e0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v1, :cond_0

    .line 578
    invoke-static {p1, v7, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 579
    invoke-static {p1, v6, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 580
    const v1, 0x7f1000ef

    invoke-static {p1, v1, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 581
    invoke-static {p1, v5, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 582
    const v1, 0x7f1000e2

    invoke-static {p1, v1, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 583
    const v1, 0x7f1000f0

    invoke-static {p1, v1, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 612
    :goto_0
    return v4

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x609000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 589
    .local v0, bHasAntiSpam:Z
    const v1, 0x7f1000ef

    invoke-static {p1, v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 591
    const v1, 0x7f1000e2

    invoke-static {p1, v1, v4}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 592
    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$7;->$SwitchMap$com$android$mms$ui$MmsTabActivity$TabState:[I

    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 594
    :pswitch_0
    invoke-static {p1, v7, v4}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 595
    invoke-static {p1, v6, v4}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 596
    invoke-static {p1, v5, v4}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 597
    const v1, 0x7f1000f0

    invoke-static {p1, v1, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0

    .line 600
    :pswitch_1
    const v1, 0x7f1000f0

    invoke-static {p1, v1, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 601
    invoke-static {p1, v7, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 602
    invoke-static {p1, v6, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 603
    invoke-static {p1, v5, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0

    .line 606
    :pswitch_2
    const v1, 0x7f1000f0

    invoke-static {p1, v1, v4}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 607
    invoke-static {p1, v7, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 608
    invoke-static {p1, v6, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    .line 609
    invoke-static {p1, v5, v3}, Lcom/android/mms/ui/MessageUtils;->makeMenuItemVisible(Landroid/view/Menu;IZ)Landroid/view/MenuItem;

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRefuseDisclaim()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 686
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    invoke-static {}, Lcom/android/mms/ui/MmsTabActivity$TabState;->values()[Lcom/android/mms/ui/MmsTabActivity$TabState;

    move-result-object v1

    array-length v0, v1

    .line 290
    .local v0, allTabCount:I
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->shouldShowFestival()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 292
    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v2, 0x7f0a011c

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsTabActivity;->addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 300
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 301
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->askUploadOldMessages()V

    .line 302
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->askDownloadWildMessages()V

    .line 303
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->removeTabAt(I)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 661
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setSearchMode(Z)V

    .line 662
    return v0
.end method
