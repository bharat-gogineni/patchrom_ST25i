.class Lcom/miui/gallery/app/StorageExplorerPage$2;
.super Ljava/lang/Object;
.source "StorageExplorerPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPage;
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
    .line 708
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage$2;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$2;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$2;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/miui/gallery/app/StorageExplorerPage;->access$700(Lcom/miui/gallery/app/StorageExplorerPage;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->onDelete(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->access$800(Lcom/miui/gallery/app/StorageExplorerPage;Ljava/util/ArrayList;)V

    .line 713
    return-void
.end method
