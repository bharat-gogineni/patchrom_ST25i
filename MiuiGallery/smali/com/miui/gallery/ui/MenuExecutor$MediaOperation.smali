.class Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

.field private final mOperation:I

.field final synthetic this$0:Lcom/miui/gallery/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter "operation"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;",
            "Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 456
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput p2, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 458
    iput-object p3, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 459
    iput-object p4, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

    .line 460
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 10
    .parameter "jc"

    .prologue
    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, index:I
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    #getter for: Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {v7}, Lcom/miui/gallery/ui/MenuExecutor;->access$300(Lcom/miui/gallery/ui/MenuExecutor;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v4

    .line 465
    .local v4, manager:Lcom/miui/gallery/data/DataManager;
    const/4 v5, 0x1

    .line 467
    .local v5, result:I
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/Path;

    .line 468
    .local v1, id:Lcom/miui/gallery/data/Path;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 469
    const/4 v5, 0x3

    .line 479
    .end local v1           #id:Lcom/miui/gallery/data/Path;
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    #getter for: Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z
    invoke-static {v7}, Lcom/miui/gallery/ui/MenuExecutor;->access$600(Lcom/miui/gallery/ui/MenuExecutor;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 480
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 481
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    const/4 v8, 0x0

    #setter for: Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z
    invoke-static {v7, v8}, Lcom/miui/gallery/ui/MenuExecutor;->access$602(Lcom/miui/gallery/ui/MenuExecutor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 487
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/miui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v5, v8}, Lcom/miui/gallery/ui/MenuExecutor;->access$700(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    move v2, v3

    .line 489
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_1
    const/4 v7, 0x0

    return-object v7

    .line 472
    .end local v2           #index:I
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #id:Lcom/miui/gallery/data/Path;
    .restart local v3       #index:I
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    iget v8, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mOperation:I

    #calls: Lcom/miui/gallery/ui/MenuExecutor;->execute(Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z
    invoke-static {v7, v4, p1, v8, v1}, Lcom/miui/gallery/ui/MenuExecutor;->access$400(Lcom/miui/gallery/ui/MenuExecutor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 473
    const/4 v5, 0x2

    .line 475
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_3
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/miui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v3, v8}, Lcom/miui/gallery/ui/MenuExecutor;->access$500(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 483
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Lcom/miui/gallery/data/Path;
    .end local v3           #index:I
    .restart local v2       #index:I
    :catch_0
    move-exception v6

    .line 484
    .local v6, th:Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    const-string v7, "MenuExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to execute operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 487
    iget-object v7, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/miui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v5, v8}, Lcom/miui/gallery/ui/MenuExecutor;->access$700(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    goto :goto_1

    .end local v6           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_3
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    iget-object v9, p0, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;->mListener:Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/miui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v8, v5, v9}, Lcom/miui/gallery/ui/MenuExecutor;->access$700(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    throw v7

    .end local v2           #index:I
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    :catchall_1
    move-exception v7

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_3

    .line 483
    .end local v2           #index:I
    .restart local v3       #index:I
    :catch_1
    move-exception v6

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_2
.end method
