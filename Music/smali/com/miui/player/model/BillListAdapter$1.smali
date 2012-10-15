.class Lcom/miui/player/model/BillListAdapter$1;
.super Ljava/lang/Object;
.source "BillListAdapter.java"

# interfaces
.implements Lcom/miui/player/model/BillListAdapter$BillResponser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/BillListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/BillListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/model/BillListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/player/model/BillListAdapter$1;->this$0:Lcom/miui/player/model/BillListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public respose(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 60
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;>;"
    iget-object v0, p0, Lcom/miui/player/model/BillListAdapter$1;->this$0:Lcom/miui/player/model/BillListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/BillListAdapter;->respose(Ljava/util/List;)V

    .line 61
    return-void
.end method
