.class public Lcom/miui/player/ui/controller/SearchBarController;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/SearchBarController$SearchListener;,
        Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;
    }
.end annotation


# instance fields
.field protected final mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

.field protected final mImageViewAction:Landroid/widget/ImageView;

.field final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field protected final mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

.field protected final mSearchBar:Landroid/view/View;

.field protected final mSearchInput:Landroid/widget/EditText;

.field protected final mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/fragment/SuggestionSearchFragment;Lcom/miui/player/ui/controller/SearchBarController$SearchListener;Ljava/lang/String;)V
    .locals 2
    .parameter "container"
    .parameter "fragment"
    .parameter "l"
    .parameter "initSearch"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 40
    iput-object p1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    .line 41
    iput-object p2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    .line 42
    invoke-virtual {p2, p0}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->setOnSuggestionClickListener(Lcom/miui/player/ui/fragment/SuggestionSearchFragment$OnSuggestionClickListener;)V

    .line 44
    iput-object p3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mImageViewAction:Landroid/widget/ImageView;

    .line 47
    new-instance v0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    .line 48
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mImageViewAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchAction:Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-direct {p0}, Lcom/miui/player/ui/controller/SearchBarController;->initInputEditor()V

    .line 53
    return-void
.end method

.method private initInputEditor()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 68
    new-instance v0, Lcom/miui/player/ui/controller/SearchBarController$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/SearchBarController$1;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    .line 87
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/player/ui/controller/SearchBarController$2;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/SearchBarController$2;-><init>(Lcom/miui/player/ui/controller/SearchBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method public hide()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    invoke-virtual {v3}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    invoke-virtual {v3}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 118
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 119
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 120
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 121
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    invoke-interface {v3, v2}, Lcom/miui/player/ui/controller/SearchBarController$SearchListener;->onSuggestionVisibleChanged(Z)V

    .line 124
    :cond_0
    const/4 v2, 0x1

    .line 127
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_1
    return v2
.end method

.method public onSuggestionClick(Ljava/lang/String;)V
    .locals 2
    .parameter "suggestion"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 158
    return-void
.end method

.method searchAction()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 135
    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    invoke-interface {v1, v0}, Lcom/miui/player/ui/controller/SearchBarController$SearchListener;->doSearch(Ljava/lang/String;)V

    .line 142
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/SearchBarController;->hide()Z

    .line 143
    return-void
.end method

.method public show()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    invoke-virtual {v3}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    invoke-virtual {v3}, Lcom/miui/player/ui/fragment/SuggestionSearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 103
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 104
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mFragment:Lcom/miui/player/ui/fragment/SuggestionSearchFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 105
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 106
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/miui/player/ui/controller/SearchBarController;->mSearchListener:Lcom/miui/player/ui/controller/SearchBarController$SearchListener;

    invoke-interface {v3, v2}, Lcom/miui/player/ui/controller/SearchBarController$SearchListener;->onSuggestionVisibleChanged(Z)V

    .line 112
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
