.class final Lcom/miui/gallery/data/ClusterAlbum$1;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/miui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/miui/gallery/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buf:[Lcom/miui/gallery/data/MediaItem;


# direct methods
.method constructor <init>([Lcom/miui/gallery/data/MediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/gallery/data/ClusterAlbum$1;->val$buf:[Lcom/miui/gallery/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/miui/gallery/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum$1;->val$buf:[Lcom/miui/gallery/data/MediaItem;

    aput-object p2, v0, p1

    .line 85
    return-void
.end method
