.class Lcom/miui/gallery/app/GalleryActionBar$1;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$clusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryActionBar$1;->val$clusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;

    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;->doCluster(I)V

    .line 237
    return-void
.end method
