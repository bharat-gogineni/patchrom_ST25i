.class public Lcom/android/settings/FrequentlyFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "FrequentlyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public buildHeaders()V
    .locals 9

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/MiuiSettings;

    .line 75
    .local v7, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-static {v7}, Lcom/android/settings/provider/MiuiSettingsUtil;->getShowKeys(Landroid/content/Context;)[I

    move-result-object v5

    .line 76
    .local v5, indexArr:[I
    if-eqz v5, :cond_1

    .line 77
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 78
    invoke-static {}, Lcom/android/settings/FrequentlySet;->getHeaderIds()[I

    move-result-object v1

    .line 79
    .local v1, headerIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 80
    .local v4, index:I
    if-ltz v4, :cond_0

    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 81
    aget v8, v1, v4

    invoke-virtual {v7, v8, v2}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 79
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v0           #arr$:[I
    .end local v1           #headerIds:[I
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v6           #len$:I
    :cond_1
    invoke-virtual {v7, v2}, Lcom/android/settings/MiuiSettings;->updateHeaderList(Ljava/util/List;)V

    .line 87
    iput-object v2, p0, Lcom/android/settings/FrequentlyFragment;->mHeaders:Ljava/util/List;

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onResume()V

    .line 65
    sget-boolean v0, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateFrequent:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->buildAdapter()V

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateFrequent:Z

    .line 69
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x7f0b0688

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/FrequentlyFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/FrequentlyFragment$1;-><init>(Lcom/android/settings/FrequentlyFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 60
    return-void
.end method
