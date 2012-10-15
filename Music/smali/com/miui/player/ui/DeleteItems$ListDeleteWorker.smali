.class Lcom/miui/player/ui/DeleteItems$ListDeleteWorker;
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
    name = "ListDeleteWorker"
.end annotation


# instance fields
.field private final mList:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0
    .parameter "list"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/miui/player/ui/DeleteItems$ListDeleteWorker;->mList:[J

    .line 138
    return-void
.end method


# virtual methods
.method public delete(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems$ListDeleteWorker;->mList:[J

    invoke-static {p1, v0}, Lcom/miui/player/ui/DeleteItems;->deleteTracks(Landroid/content/Context;[J)I

    move-result v0

    return v0
.end method
