.class public abstract Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;
.super Landroid/widget/BaseAdapter;
.source "AsyncTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AsyncTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<TT;>;>",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter<TT;TD;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 136
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter<TT;TD;>;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinemusic2/MetaList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter<TT;TD;>;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    invoke-virtual {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/MetaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 146
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter<TT;TD;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final hasContent()Z
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter<TT;TD;>;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinemusic2/MetaList;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onDataChanged()V
.end method

.method public updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter<TT;TD;>;"
    .local p1, data:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"TD;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;Z)Z

    move-result v0

    return v0
.end method

.method public updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;Z)Z
    .locals 1
    .parameter
    .parameter "notifyIfChanged"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter<TT;TD;>;"
    .local p1, data:Lcom/miui/player/plugin/onlinemusic2/MetaList;,"TD;"
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    if-eq v0, p1, :cond_1

    .line 113
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    .line 114
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->onDataChanged()V

    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->notifyDataSetChanged()V

    .line 120
    :cond_0
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
