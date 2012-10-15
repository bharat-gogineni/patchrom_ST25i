.class Lcom/miui/gallery/app/StorageExplorerPage$3;
.super Ljava/lang/Object;
.source "StorageExplorerPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 789
    const-class v0, Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gallery/app/StorageExplorerPage$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/miui/gallery/app/StorageExplorerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage$3;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 793
    .local v0, path:Ljava/lang/String;
    sget-boolean v1, Lcom/miui/gallery/app/StorageExplorerPage$3;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$3;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    const/4 v2, 0x0

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V
    invoke-static {v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->access$900(Lcom/miui/gallery/app/StorageExplorerPage;Z)V

    .line 795
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$3;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1000(Lcom/miui/gallery/app/StorageExplorerPage;Ljava/lang/String;)V

    .line 796
    return-void
.end method
