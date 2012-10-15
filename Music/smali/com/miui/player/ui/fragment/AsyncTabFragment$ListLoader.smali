.class Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AsyncTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AsyncTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "D:",
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<TE;>;>",
        "Landroid/content/AsyncTaskLoader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ui/fragment/AsyncTabFragment",
            "<TE;TD;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/fragment/AsyncTabFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/fragment/AsyncTabFragment",
            "<TE;TD;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader<TE;TD;>;"
    .local p1, fragment:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    invoke-virtual {p1}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/player/plugin/onlinemusic2/MetaList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader<TE;TD;>;"
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/fragment/AsyncTabFragment;

    .line 103
    .local v0, fragment:Lcom/miui/player/ui/fragment/AsyncTabFragment;,"Lcom/miui/player/ui/fragment/AsyncTabFragment<TE;TD;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/AsyncTabFragment;->loadInBackground()Lcom/miui/player/plugin/onlinemusic2/MetaList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    .local p0, this:Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;,"Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader<TE;TD;>;"
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$ListLoader;->loadInBackground()Lcom/miui/player/plugin/onlinemusic2/MetaList;

    move-result-object v0

    return-object v0
.end method
