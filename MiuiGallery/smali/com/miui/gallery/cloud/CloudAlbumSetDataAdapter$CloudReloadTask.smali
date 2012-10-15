.class public Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;
.super Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;
.source "CloudAlbumSetDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CloudReloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;

    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)V

    return-void
.end method


# virtual methods
.method protected createZeroSizeCallable(I)Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;
    .locals 2
    .parameter "totalMediaObjectCount"

    .prologue
    .line 45
    new-instance v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;

    invoke-direct {v0, v1, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)V

    return-object v0
.end method

.method protected getTotalMediaObjectCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->access$100(Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    return v0
.end method

.method protected prepareResultDBGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, resultGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBGroup;>;"
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;->this$0:Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->access$000(Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getAllAlbums()Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    .local v0, cloudAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 54
    new-instance v4, Lcom/miui/gallery/cloud/CloudGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/cloud/CloudMediaSet;

    invoke-direct {v4, v3}, Lcom/miui/gallery/cloud/CloudGroup;-><init>(Lcom/miui/gallery/cloud/CloudMediaSet;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-object v2
.end method
