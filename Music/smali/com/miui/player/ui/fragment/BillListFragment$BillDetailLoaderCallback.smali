.class Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;
.super Ljava/lang/Object;
.source "BillListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/BillListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BillDetailLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
        "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final mBillIds:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mResponserRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/model/BillListAdapter$BillResponser;",
            ">;"
        }
    .end annotation
.end field

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ILcom/miui/player/model/BillListAdapter$BillResponser;)V
    .locals 1
    .parameter "context"
    .parameter "ids"
    .parameter "size"
    .parameter "br"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mBillIds:[Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mSize:I

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mResponserRef:Ljava/lang/ref/WeakReference;

    .line 73
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mBillIds:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mSize:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;>;"
    iget-object v1, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoaderCallback;->mResponserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/model/BillListAdapter$BillResponser;

    .line 87
    .local v0, br:Lcom/miui/player/model/BillListAdapter$BillResponser;
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p2}, Lcom/miui/player/model/BillListAdapter$BillResponser;->respose(Ljava/util/List;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;>;>;"
    return-void
.end method
