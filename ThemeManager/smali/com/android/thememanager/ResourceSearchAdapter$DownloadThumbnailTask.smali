.class public Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;
.super Lmiui/app/resourcebrowser/util/DownloadFileTask;
.source "ResourceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ResourceSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadThumbnailTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ResourceSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ResourceSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/util/DownloadFileTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 256
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v7, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    .line 260
    .local v0, entry:Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadedCount:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/thememanager/ResourceSearchAdapter;->access$400(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 261
    .local v2, previousCount:Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 262
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 264
    :cond_2
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadedCount:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/thememanager/ResourceSearchAdapter;->access$400(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/thememanager/ResourceSearchAdapter;->access$500(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-virtual {v3}, Lcom/android/thememanager/ResourceSearchAdapter;->notifyDataSetChanged()V

    .line 269
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/thememanager/ResourceSearchAdapter;->access$500(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/thememanager/ResourceSearchAdapter;->access$500(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;
    check-cast v0, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    .restart local v0       #entry:Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;
    goto :goto_1

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    new-instance v4, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    iget-object v5, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-direct {v4, v5}, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;-><init>(Lcom/android/thememanager/ResourceSearchAdapter;)V

    #setter for: Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;
    invoke-static {v3, v4}, Lcom/android/thememanager/ResourceSearchAdapter;->access$602(Lcom/android/thememanager/ResourceSearchAdapter;Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;)Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    .line 275
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;
    invoke-static {v3}, Lcom/android/thememanager/ResourceSearchAdapter;->access$600(Lcom/android/thememanager/ResourceSearchAdapter;)Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    move-result-object v3

    new-array v4, v7, [Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
