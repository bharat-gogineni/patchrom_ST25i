.class Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask$1;
.super Ljava/lang/Object;
.source "BaseMeta.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->postResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;

    #getter for: Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mListener:Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;
    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->access$200(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;

    #getter for: Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    invoke-static {v1}, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->access$000(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)Lcom/miui/gallery/StorageExplorer/BaseMeta;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask$1;->this$0:Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;

    #getter for: Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->access$100(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;->onAllDataLoaded(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/view/View;)V

    .line 320
    return-void
.end method
