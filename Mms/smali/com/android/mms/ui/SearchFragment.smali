.class public Lcom/android/mms/ui/SearchFragment;
.super Landroid/app/Fragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchFragment$SearchAdapter;,
        Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field mRequestRequery:Ljava/lang/Runnable;

.field private mSearchCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/android/mms/ui/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchFragment$1;-><init>(Lcom/android/mms/ui/SearchFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    .line 176
    new-instance v0, Lcom/android/mms/ui/SearchFragment$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchFragment$2;-><init>(Lcom/android/mms/ui/SearchFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mRequestRequery:Ljava/lang/Runnable;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchFragment;)Lcom/android/mms/ui/SearchFragment$SearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SearchFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 199
    const v2, 0x7f040043

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;

    .line 203
    const v2, 0x7f10001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    .line 204
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 207
    const v2, 0x7f040044

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;

    .line 208
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/SearchFragment;->mSearchCount:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 210
    new-instance v2, Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;-><init>(Lcom/android/mms/ui/SearchFragment;)V

    iput-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    .line 211
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/mms/ui/SearchFragment$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SearchFragment$3;-><init>(Lcom/android/mms/ui/SearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    const v2, 0x7f10001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 224
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->closeCursor()V

    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 231
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 189
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 195
    return-void
.end method

.method public query(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->query(Ljava/lang/String;)V

    .line 235
    return-void
.end method
