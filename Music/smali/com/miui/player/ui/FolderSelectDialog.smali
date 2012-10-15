.class public Lcom/miui/player/ui/FolderSelectDialog;
.super Landroid/preference/DialogPreference;
.source "FolderSelectDialog.java"


# instance fields
.field final mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

.field private final mSummaryOff:Ljava/lang/CharSequence;

.field private final mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object v1, Lcom/miui/player/R$styleable;->PreferenceCommon:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSummaryOn:Ljava/lang/CharSequence;

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSummaryOff:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-static {p1}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/player/util/FolderProvider;->getAllFolderStatus(Landroid/content/Context;)[Lcom/miui/player/util/FolderProvider$FolderStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    .line 36
    invoke-direct {p0}, Lcom/miui/player/ui/FolderSelectDialog;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSummaryOn:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/FolderSelectDialog;->setSummary(Ljava/lang/CharSequence;)V

    .line 37
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/FolderSelectDialog;->setDialogLayoutResource(I)V

    .line 38
    return-void

    .line 32
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private isChecked()Z
    .locals 5

    .prologue
    .line 87
    iget-object v4, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    if-eqz v4, :cond_1

    .line 88
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    .local v0, arr$:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 89
    .local v1, fs:Lcom/miui/player/util/FolderProvider$FolderStatus;
    iget-boolean v4, v1, Lcom/miui/player/util/FolderProvider$FolderStatus;->mSelected:Z

    if-nez v4, :cond_0

    .line 90
    const/4 v4, 0x1

    .line 95
    .end local v0           #arr$:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    .end local v1           #fs:Lcom/miui/player/util/FolderProvider$FolderStatus;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 88
    .restart local v0       #arr$:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    .restart local v1       #fs:Lcom/miui/player/util/FolderProvider$FolderStatus;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0           #arr$:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    .end local v1           #fs:Lcom/miui/player/util/FolderProvider$FolderStatus;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isPersistent()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 69
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    invoke-virtual {v1, v0, v2}, Lcom/miui/player/util/FolderProvider;->updateFolderItemSelected(Landroid/content/Context;[Lcom/miui/player/util/FolderProvider$FolderStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {v0}, Lcom/miui/player/util/PlaylistRecoverer;->instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/util/PlaylistRecoverer;->markForceRecover()V

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/ui/FolderSelectDialog;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSummaryOn:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/FolderSelectDialog;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 79
    return-void

    .line 75
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/FolderSelectDialog;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 9
    .parameter "builder"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 43
    const v8, 0x7f090032

    invoke-virtual {p1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 45
    iget-object v2, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    .line 46
    .local v2, folders:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    array-length v8, v2

    new-array v6, v8, [Ljava/lang/CharSequence;

    .line 47
    .local v6, names:[Ljava/lang/CharSequence;
    array-length v8, v2

    new-array v1, v8, [Z

    .line 48
    .local v1, checkedItems:[Z
    const/4 v3, 0x0

    .line 49
    .local v3, i:I
    move-object v0, v2

    .local v0, arr$:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 50
    .local v7, status:Lcom/miui/player/util/FolderProvider$FolderStatus;
    iget-object v8, v7, Lcom/miui/player/util/FolderProvider$FolderStatus;->mFolderPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/player/ui/UIHelper;->getDisplayFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 51
    iget-boolean v8, v7, Lcom/miui/player/util/FolderProvider$FolderStatus;->mSelected:Z

    aput-boolean v8, v1, v3

    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    .end local v7           #status:Lcom/miui/player/util/FolderProvider$FolderStatus;
    :cond_0
    new-instance v8, Lcom/miui/player/ui/FolderSelectDialog$1;

    invoke-direct {v8, p0}, Lcom/miui/player/ui/FolderSelectDialog$1;-><init>(Lcom/miui/player/ui/FolderSelectDialog;)V

    invoke-virtual {p1, v6, v1, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    return-void
.end method
