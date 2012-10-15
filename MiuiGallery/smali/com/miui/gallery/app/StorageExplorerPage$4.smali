.class Lcom/miui/gallery/app/StorageExplorerPage$4;
.super Ljava/lang/Object;
.source "StorageExplorerPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/StorageExplorerPage;->onDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/StorageExplorerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage$4;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$4;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1100(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->notifyDataSetChanged()V

    .line 851
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$4;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$000(Lcom/miui/gallery/app/StorageExplorerPage;)V

    .line 852
    return-void
.end method
