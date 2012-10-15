.class final Lcom/miui/gallery/StorageExplorer/AppHelper$1;
.super Ljava/lang/Object;
.source "AppHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/StorageExplorer/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$metas:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/miui/gallery/StorageExplorer/FileBucket;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$bucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->delete()V

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$bucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    .end local v0           #i:I
    :cond_1
    return-void

    .line 206
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AppHelper$1;->val$metas:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v1, v1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    goto :goto_1
.end method
