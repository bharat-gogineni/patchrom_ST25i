.class Lcom/miui/player/ui/fragment/SuggestionSearchFragment$SearchSuggestionAdapter;
.super Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;
.source "SuggestionSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/SuggestionSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchSuggestionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter",
        "<",
        "Ljava/lang/String;",
        "Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment$SearchSuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    move-object v0, p2

    .line 87
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment$SearchSuggestionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    :cond_0
    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/SuggestionSearchFragment$SearchSuggestionAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v2, Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;

    invoke-virtual {v2, p1}, Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object v0
.end method

.method protected onDataChanged()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
