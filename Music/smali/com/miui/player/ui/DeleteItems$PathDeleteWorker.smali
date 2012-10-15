.class Lcom/miui/player/ui/DeleteItems$PathDeleteWorker;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Lcom/miui/player/ui/DeleteItems$DeleteWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathDeleteWorker"
.end annotation


# instance fields
.field private final mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/miui/player/ui/DeleteItems$PathDeleteWorker;->mPathList:Ljava/util/ArrayList;

    .line 152
    return-void
.end method


# virtual methods
.method public delete(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems$PathDeleteWorker;->mPathList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/miui/player/ui/DeleteItems;->deleteTrackByPathList(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method
