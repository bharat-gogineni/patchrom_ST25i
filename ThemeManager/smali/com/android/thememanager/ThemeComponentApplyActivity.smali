.class public Lcom/android/thememanager/ThemeComponentApplyActivity;
.super Landroid/app/Activity;
.source "ThemeComponentApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;
    }
.end annotation


# instance fields
.field private mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

.field private mComponentNumText:Landroid/widget/TextView;

.field private mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

.field private mResourceState:Lcom/android/thememanager/util/ThemeResourceState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeComponentApplyActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getSelectComponentFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/ThemeComponentApplyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->needRemoveAllOldTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/ThemeComponentApplyActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setComponentGridViewClickable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/thememanager/ThemeComponentApplyActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->updateComponentNumber()V

    return-void
.end method

.method private getGridComponentShowingFlags()J
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 160
    iget-object v5, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    iget v4, v5, Lcom/android/thememanager/util/ThemeResourceState;->uiVersion:I

    .line 161
    .local v4, uiVersion:I
    iget-object v5, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    iget-wide v2, v5, Lcom/android/thememanager/util/ThemeResourceState;->componentFlags:J

    .line 162
    .local v2, detailFlags:J
    cmp-long v5, v2, v7

    if-nez v5, :cond_0

    .line 163
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllComponentsCombineFlag()J

    move-result-wide v2

    .line 166
    :cond_0
    iget-object v5, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    iget-wide v5, v5, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 167
    const-wide/32 v5, 0x10000000

    or-long/2addr v2, v5

    .line 170
    :cond_1
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceFont()Z

    move-result v5

    if-nez v5, :cond_2

    .line 171
    const-wide/16 v5, -0x11

    and-long/2addr v2, v5

    .line 173
    :cond_2
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceAudioEffect()Z

    move-result v5

    if-nez v5, :cond_3

    .line 174
    const-wide/32 v5, -0x8001

    and-long/2addr v2, v5

    .line 177
    :cond_3
    const-wide/16 v0, 0x1

    .local v0, component:J
    :goto_0
    const-wide/32 v5, 0x20000

    cmp-long v5, v0, v5

    if-gtz v5, :cond_5

    .line 178
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v5

    sget v6, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    invoke-static {v4, v5, v6}, Lmiui/app/resourcebrowser/util/ResourceHelper;->isCompatiblePlatformVersion(III)Z

    move-result v5

    if-nez v5, :cond_4

    .line 180
    xor-long v5, v0, v7

    and-long/2addr v2, v5

    .line 177
    :cond_4
    const/4 v5, 0x1

    shl-long/2addr v0, v5

    goto :goto_0

    .line 184
    :cond_5
    return-wide v2
.end method

.method private getOperationHandler(Lmiui/app/resourcebrowser/view/ResourceOperationView;)Lcom/android/thememanager/util/ThemeOperationHandler;
    .locals 2
    .parameter "v"

    .prologue
    .line 110
    new-instance v0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;

    iget-object v1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/android/thememanager/ThemeComponentApplyActivity$1;-><init>(Lcom/android/thememanager/ThemeComponentApplyActivity;Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/util/ThemeResourceState;)V

    return-object v0
.end method

.method private getSelectComponentFlags()J
    .locals 5

    .prologue
    const-wide/16 v1, -0x1

    .line 211
    iget-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v3}, Lcom/android/thememanager/view/FixedHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    .line 212
    .local v0, adapter:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;
    iget-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    iget-wide v3, v3, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->isSelectAllComponent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->getSelectComponentFlag()J

    move-result-wide v1

    goto :goto_0
.end method

.method private needRemoveAllOldTheme()Z
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    iget-wide v0, v0, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/FixedHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->needRemoveAllOldTheme()Z

    move-result v0

    goto :goto_0
.end method

.method private setComponentGridViewClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/FixedHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->setClickable(Z)V

    .line 189
    return-void
.end method

.method private setupComponentGridView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 147
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/view/FixedHeightGridView;

    iput-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    .line 149
    iget-object v6, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    new-instance v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getGridComponentShowingFlags()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->isLocalResource()Z

    move-result v4

    iget-object v5, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;-><init>(Lcom/android/thememanager/ThemeComponentApplyActivity;JZLcom/android/thememanager/view/FixedHeightGridView;)V

    invoke-virtual {v6, v0}, Lcom/android/thememanager/view/FixedHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v0, v7}, Lcom/android/thememanager/view/FixedHeightGridView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/thememanager/view/FixedHeightGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/thememanager/view/FixedHeightGridView;->setNumColumns(I)V

    .line 155
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v0, v7}, Lcom/android/thememanager/view/FixedHeightGridView;->setVisibility(I)V

    .line 156
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->updateComponentNumber()V

    .line 157
    return-void
.end method

.method private setupUI()V
    .locals 3

    .prologue
    .line 97
    const v2, 0x60b008f

    invoke-virtual {p0, v2}, Lcom/android/thememanager/ThemeComponentApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/app/resourcebrowser/view/ResourceOperationView;

    .line 98
    .local v1, v:Lmiui/app/resourcebrowser/view/ResourceOperationView;
    invoke-direct {p0, v1}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getOperationHandler(Lmiui/app/resourcebrowser/view/ResourceOperationView;)Lcom/android/thememanager/util/ThemeOperationHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    .line 99
    new-instance v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;-><init>()V

    .line 100
    .local v0, para:Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;
    const v2, 0x60201ac

    iput v2, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->magicBtnSrcId:I

    .line 101
    const v2, 0x60201a9

    iput v2, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->deleteBtnSrcId:I

    .line 102
    const v2, 0x60201b7

    iput v2, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->operationViewBgId:I

    .line 103
    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v1, v2, v0}, Lmiui/app/resourcebrowser/view/ResourceOperationView;->init(Lmiui/app/resourcebrowser/view/ResourceOperationHandler;Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;)V

    .line 106
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setupComponentGridView()V

    .line 107
    return-void
.end method

.method private updateComponentNumber()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 192
    const v4, 0x7f070008

    invoke-virtual {p0, v4}, Lcom/android/thememanager/ThemeComponentApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentNumText:Landroid/widget/TextView;

    .line 193
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Lcom/android/thememanager/view/FixedHeightGridView;

    invoke-virtual {v4}, Lcom/android/thememanager/view/FixedHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    .line 194
    .local v0, adapter:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->getSelectComponentFlag()J

    move-result-wide v2

    .line 195
    .local v2, selectFlags:J
    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v1

    .line 196
    .local v1, componentNum:I
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v4}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->isLocalResource()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentNumText:Landroid/widget/TextView;

    const v5, 0x7f0a0032

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentNumText:Landroid/widget/TextView;

    const v5, 0x7f0a0033

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 66
    invoke-virtual {p0, v0, v0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->overridePendingTransition(II)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_theme_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/util/ThemeResourceState;

    iput-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    .line 50
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/util/ThemeResourceState;

    iget-object v1, v1, Lcom/android/thememanager/util/ThemeResourceState;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setupUI()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivityOnDestroyEvent()V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->finish()V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivityOnPauseEvent()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivityOnResumeEvent()V

    .line 81
    return-void
.end method
