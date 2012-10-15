.class Lcom/miui/player/ui/DeleteItems$ComposedDeleteWorker;
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
    name = "ComposedDeleteWorker"
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/ui/DeleteItems$DeleteWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/DeleteItems$ComposedDeleteWorker;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/player/ui/DeleteItems$DeleteWorker;)V
    .locals 1
    .parameter "worker"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems$ComposedDeleteWorker;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public delete(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    .local v0, c:J
    const/4 v2, 0x0

    .line 121
    .local v2, count:I
    iget-object v5, p0, Lcom/miui/player/ui/DeleteItems$ComposedDeleteWorker;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/ui/DeleteItems$DeleteWorker;

    .line 122
    .local v4, worker:Lcom/miui/player/ui/DeleteItems$DeleteWorker;
    if-eqz v4, :cond_0

    .line 123
    invoke-interface {v4, p1}, Lcom/miui/player/ui/DeleteItems$DeleteWorker;->delete(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 127
    .end local v4           #worker:Lcom/miui/player/ui/DeleteItems$DeleteWorker;
    :cond_1
    sget-object v5, Lcom/miui/player/ui/DeleteItems;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Consume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    return v2
.end method
