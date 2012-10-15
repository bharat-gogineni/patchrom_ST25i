.class public Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;
.super Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;
.source "ResourceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ResourceSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoadMoreResourceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ResourceSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ResourceSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;-><init>(Lmiui/widget/AsyncAdapter;)V

    return-void
.end method


# virtual methods
.method protected loadMoreData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;
    .locals 12
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 162
    iget-boolean v6, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->upwards:Z

    if-eqz v6, :cond_1

    .line 163
    const/4 v2, 0x0

    .line 179
    :cond_0
    :goto_0
    return-object v2

    .line 165
    :cond_1
    const/4 v2, 0x0

    .line 166
    .local v2, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/Resource;>;"
    new-instance v4, Lmiui/app/resourcebrowser/util/DownloadFileTask;

    invoke-direct {v4}, Lmiui/app/resourcebrowser/util/DownloadFileTask;-><init>()V

    .line 167
    .local v4, task:Lmiui/app/resourcebrowser/util/DownloadFileTask;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/thememanager/ResourceSearchAdapter;->access$000(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&start=%s&count=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, url:Ljava/lang/String;
    new-instance v0, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;-><init>()V

    .line 169
    .local v0, entry:Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;
    invoke-virtual {v0, v5}, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;->setUrl(Ljava/lang/String;)V

    .line 170
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mListFolder:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/thememanager/ResourceSearchAdapter;->access$100(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;->setPath(Ljava/lang/String;)V

    .line 171
    new-array v6, v11, [Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    aput-object v0, v6, v10

    invoke-virtual {v4, v6}, Lmiui/app/resourcebrowser/util/DownloadFileTask;->doInForeground([Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;)Ljava/util/List;

    move-result-object v3

    .line 172
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;>;"
    const/4 v1, 0x0

    .line 173
    .local v1, filePath:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 174
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    invoke-virtual {v6}, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_2
    if-eqz v1, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mParser:Lmiui/app/resourcebrowser/service/ResourceDataParser;
    invoke-static {v6}, Lcom/android/thememanager/ResourceSearchAdapter;->access$300(Lcom/android/thememanager/ResourceSearchAdapter;)Lmiui/app/resourcebrowser/service/ResourceDataParser;

    move-result-object v6

    iget-object v7, p0, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;->this$0:Lcom/android/thememanager/ResourceSearchAdapter;

    #getter for: Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/thememanager/ResourceSearchAdapter;->access$200(Lcom/android/thememanager/ResourceSearchAdapter;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lmiui/app/resourcebrowser/service/ResourceDataParser;->readResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method
