.class public Lcom/android/settings/display/ScreenTimeoutDialogActivity;
.super Landroid/app/Activity;
.source "ScreenTimeoutDialogActivity.java"


# instance fields
.field private mCurrentTimeOut:J

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private createTimeOutDialog()V
    .locals 4

    .prologue
    .line 68
    iget-wide v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, clickedIndex:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0271

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/display/ScreenTimeoutDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity$2;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    new-instance v2, Lcom/android/settings/display/ScreenTimeoutDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity$3;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    return-void
.end method

.method private disableUnusableTimeouts()V
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    .line 41
    const-string v12, "device_policy"

    invoke-virtual {p0, v12}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 43
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 44
    .local v3, maxTimeout:J
    :goto_0
    cmp-long v10, v3, v10

    if-nez v10, :cond_2

    .line 65
    :cond_0
    :goto_1
    return-void

    .end local v3           #maxTimeout:J
    :cond_1
    move-wide v3, v10

    .line 43
    goto :goto_0

    .line 47
    .restart local v3       #maxTimeout:J
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 48
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    .line 49
    .local v9, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v10, v9

    if-ge v2, v10, :cond_4

    .line 52
    aget-object v10, v9, v2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 53
    .local v7, timeout:J
    cmp-long v10, v7, v3

    if-gtz v10, :cond_3

    .line 54
    aget-object v10, v1, v2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    aget-object v10, v9, v2

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 58
    .end local v7           #timeout:J
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    array-length v11, v1

    if-ne v10, v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    array-length v11, v9

    if-eq v10, v11, :cond_0

    .line 59
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    .line 61
    iget-wide v10, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    cmp-long v10, v10, v3

    if-lez v10, :cond_0

    .line 62
    iput-wide v3, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    goto :goto_1
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 106
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    .end local v0           #i:I
    :goto_1
    return v0

    .line 107
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    .line 36
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->disableUnusableTimeouts()V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->createTimeOutDialog()V

    .line 38
    return-void
.end method
