.class Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;
.super Landroid/content/AsyncTaskLoader;
.source "BillListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/BillListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BillDetailLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
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

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "ids"
    .parameter "size"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 105
    iput-object p2, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;->mBillIds:[Ljava/lang/String;

    .line 106
    iput p3, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;->mSize:I

    .line 107
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;->mBillIds:[Ljava/lang/String;

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/player/ui/fragment/BillListFragment$BillDetailLoader;->mSize:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->requestBillDetail(Landroid/content/Context;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
