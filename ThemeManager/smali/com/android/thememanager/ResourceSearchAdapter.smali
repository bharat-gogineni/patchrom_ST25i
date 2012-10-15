.class public Lcom/android/thememanager/ResourceSearchAdapter;
.super Lmiui/app/resourcebrowser/ResourceAdapter;
.source "ResourceSearchAdapter.java"

# interfaces
.implements Lmiui/app/resourcebrowser/service/online/OnlineProtocolConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;,
        Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;,
        Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;
    }
.end annotation


# instance fields
.field private mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

.field private mDownloadedCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyword:Ljava/lang/String;

.field private mListFolder:Ljava/lang/String;

.field private mParser:Lmiui/app/resourcebrowser/service/ResourceDataParser;

.field private mService:Lmiui/app/resourcebrowser/service/online/OnlineService;

.field private mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field protected mVisitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mVisitors:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadedCount:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lmiui/app/resourcebrowser/service/online/OnlineService;->getInstance()Lmiui/app/resourcebrowser/service/online/OnlineService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mService:Lmiui/app/resourcebrowser/service/online/OnlineService;

    .line 55
    invoke-static {}, Lmiui/app/resourcebrowser/service/ResourceJSONDataParser;->getInstance()Lmiui/app/resourcebrowser/service/ResourceJSONDataParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mParser:Lmiui/app/resourcebrowser/service/ResourceDataParser;

    .line 64
    invoke-direct {p0, p2}, Lcom/android/thememanager/ResourceSearchAdapter;->initParams(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V
    .locals 4
    .parameter "fragment"
    .parameter "metaData"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceAdapter;-><init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mVisitors:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadedCount:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lmiui/app/resourcebrowser/service/online/OnlineService;->getInstance()Lmiui/app/resourcebrowser/service/online/OnlineService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mService:Lmiui/app/resourcebrowser/service/online/OnlineService;

    .line 55
    invoke-static {}, Lmiui/app/resourcebrowser/service/ResourceJSONDataParser;->getInstance()Lmiui/app/resourcebrowser/service/ResourceJSONDataParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mParser:Lmiui/app/resourcebrowser/service/ResourceDataParser;

    .line 59
    invoke-direct {p0, p2}, Lcom/android/thememanager/ResourceSearchAdapter;->initParams(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mListFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/ResourceSearchAdapter;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/thememanager/ResourceSearchAdapter;)Lmiui/app/resourcebrowser/service/ResourceDataParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mParser:Lmiui/app/resourcebrowser/service/ResourceDataParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadedCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/thememanager/ResourceSearchAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/thememanager/ResourceSearchAdapter;)Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/thememanager/ResourceSearchAdapter;Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;)Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    return-object p1
.end method

.method private downloadThumbnail(Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 240
    if-eqz p1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadedCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 242
    .local v0, previousCount:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    invoke-virtual {v1}, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 245
    :cond_1
    new-instance v1, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    invoke-direct {v1, p0}, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;-><init>(Lcom/android/thememanager/ResourceSearchAdapter;)V

    iput-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    .line 246
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mDownloadThumbnailTask:Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/thememanager/ResourceSearchAdapter$DownloadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    .end local v0           #previousCount:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private initParams(Landroid/os/Bundle;)V
    .locals 7
    .parameter "metaData"

    .prologue
    const-wide/16 v5, -0x1

    .line 68
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 69
    .local v0, resourceType:J
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v2

    .line 70
    .local v2, titleId:I
    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    .line 71
    const v2, 0x7f0a0023

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mTitle:Ljava/lang/String;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v5, "miui.app.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSetCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mListFolder:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method protected generateVisitors([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "folders"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, visitors:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor<Lmiui/app/resourcebrowser/resource/Resource;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 120
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/thememanager/ResourceSearchAdapter;->getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-object v1
.end method

.method protected getDownloadableFlag(Lmiui/app/resourcebrowser/resource/Resource;)I
    .locals 2
    .parameter "resourceItem"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceAdapter;->getDownloadableFlag(Lmiui/app/resourcebrowser/resource/Resource;)I

    move-result v0

    .line 186
    .local v0, downloadableFlag:I
    const v1, 0x602003a

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/Resource;->getOnlinePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :cond_0
    return v0
.end method

.method protected getLoadDataTask()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">.Async",
            "LoadDataTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, tasks:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter<Lmiui/app/resourcebrowser/resource/Resource;>.AsyncLoadDataTask;>;"
    new-instance v1, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;

    invoke-direct {v1, p0}, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;-><init>(Lcom/android/thememanager/ResourceSearchAdapter;)V

    .line 89
    .local v1, task:Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchAdapter;->getRegisterAsyncTaskObserver()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/os/AsyncTaskObserver;

    invoke-virtual {v1, v4}, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;->addObserver(Lmiui/os/AsyncTaskObserver;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchAdapter;->getVisitors()Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, visitors:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor<Lmiui/app/resourcebrowser/resource/Resource;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 92
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    invoke-virtual {v1, v4}, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadResourceTask;->addVisitor(Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v2
.end method

.method protected getLoadMoreDataTask()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">.Async",
            "LoadMoreDataTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, tasks:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter<Lmiui/app/resourcebrowser/resource/Resource;>.AsyncLoadMoreDataTask;>;"
    new-instance v0, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;

    invoke-direct {v0, p0}, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;-><init>(Lcom/android/thememanager/ResourceSearchAdapter;)V

    .line 152
    .local v0, task:Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchAdapter;->getRegisterAsyncTaskObserver()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/os/AsyncTaskObserver;

    invoke-virtual {v0, v2}, Lcom/android/thememanager/ResourceSearchAdapter$AsyncLoadMoreResourceTask;->addObserver(Lmiui/os/AsyncTaskObserver;)V

    .line 153
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v1
.end method

.method protected getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;
    .locals 3
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, result:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    iget v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSetCategory:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 128
    new-instance v0, Lmiui/app/resourcebrowser/service/local/ImageResourceFolder;

    .end local v0           #result:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lmiui/app/resourcebrowser/service/local/ImageResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 134
    .restart local v0       #result:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/service/local/ResourceFolder;->setKeyword(Ljava/lang/String;)V

    .line 135
    return-object v0

    .line 129
    :cond_0
    iget v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSetCategory:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 130
    new-instance v0, Lmiui/app/resourcebrowser/service/local/AudioResourceFolder;

    .end local v0           #result:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lmiui/app/resourcebrowser/service/local/AudioResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .restart local v0       #result:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Lcom/android/thememanager/ThemeResourceFolder;

    .end local v0           #result:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/thememanager/ThemeResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .restart local v0       #result:Lmiui/app/resourcebrowser/service/local/ResourceFolder;
    goto :goto_0
.end method

.method protected getVisitors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mVisitors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mVisitors:Ljava/util/List;

    .line 114
    :goto_0
    return-object v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v2, "miui.app.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, folders:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/thememanager/ResourceSearchAdapter;->generateVisitors([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mVisitors:Ljava/util/List;

    .line 114
    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mVisitors:Ljava/util/List;

    goto :goto_0
.end method

.method protected bridge synthetic isValidKey(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    check-cast p2, Lmiui/app/resourcebrowser/resource/Resource;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/thememanager/ResourceSearchAdapter;->isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/resource/Resource;I)Z

    move-result v0

    return v0
.end method

.method protected isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/resource/Resource;I)Z
    .locals 9
    .parameter "key"
    .parameter "data"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 221
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, localPath:Ljava/lang/String;
    invoke-virtual {p2, p3}, Lmiui/app/resourcebrowser/resource/Resource;->getOnlineThumbnail(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, onlinePath:Ljava/lang/String;
    new-instance v0, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;-><init>()V

    .line 224
    .local v0, entry:Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;
    invoke-virtual {v0, v2}, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;->setPath(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v3}, Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;->setUrl(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    invoke-direct {p0, v0}, Lcom/android/thememanager/ResourceSearchAdapter;->downloadThumbnail(Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;)V

    .line 235
    :goto_0
    return v4

    .line 230
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p2}, Lmiui/app/resourcebrowser/resource/Resource;->getFileModifiedTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 232
    invoke-direct {p0, v0}, Lcom/android/thememanager/ResourceSearchAdapter;->downloadThumbnail(Lmiui/app/resourcebrowser/util/DownloadFileTask$DownloadFileEntry;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceAdapter;->isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/resource/Resource;I)Z

    move-result v4

    goto :goto_0
.end method

.method protected loadCacheData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;
    .locals 9
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
    .line 194
    iget-boolean v4, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->upwards:Z

    if-nez v4, :cond_0

    iget v4, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    if-eqz v4, :cond_2

    .line 195
    :cond_0
    const/4 v2, 0x0

    .line 204
    :cond_1
    :goto_0
    return-object v2

    .line 197
    :cond_2
    const/4 v2, 0x0

    .line 198
    .local v2, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/Resource;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&start=%s&count=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mListFolder:Ljava/lang/String;

    invoke-static {v4, v3}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, filePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    iget-object v4, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mParser:Lmiui/app/resourcebrowser/service/ResourceDataParser;

    iget-object v5, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v5}, Lmiui/app/resourcebrowser/service/ResourceDataParser;->readResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method protected postLoadData(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/Resource;>;"
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/resource/ResourceSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    invoke-virtual {v0, v4}, Lmiui/app/resourcebrowser/resource/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/DataGroup;

    invoke-virtual {v0}, Lmiui/widget/DataGroup;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    invoke-virtual {v0, v4}, Lmiui/app/resourcebrowser/resource/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/DataGroup;

    invoke-virtual {v0, v4}, Lmiui/widget/DataGroup;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/resourcebrowser/resource/Resource;

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mContext:Landroid/app/Activity;

    const v2, 0x60c0014

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mTitle:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/resource/Resource;->setDividerTitle(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method protected postLoadMoreData(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/Resource;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/resource/ResourceSet;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    invoke-virtual {v0, v3}, Lmiui/app/resourcebrowser/resource/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/DataGroup;

    invoke-virtual {v0}, Lmiui/widget/DataGroup;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    invoke-virtual {v0, v3}, Lmiui/app/resourcebrowser/resource/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/DataGroup;

    invoke-virtual {v0, v4}, Lmiui/widget/DataGroup;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/resourcebrowser/resource/Resource;

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mContext:Landroid/app/Activity;

    const v2, 0x60c0015

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mTitle:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/resource/Resource;->setDividerTitle(Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/ResourceSearchAdapter;->notifyDataSetChanged()V

    .line 214
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mFragment:Lmiui/app/resourcebrowser/BaseFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mFragment:Lmiui/app/resourcebrowser/BaseFragment;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BaseFragment;->isVisiableForUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mContext:Landroid/app/Activity;

    const v1, 0x60c0020

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    :cond_2
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 3
    .parameter "keyword"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mKeyword:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mService:Lmiui/app/resourcebrowser/service/online/OnlineService;

    iget-object v1, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmiui/app/resourcebrowser/service/online/OnlineService;->getSearchListUrl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mUrl:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "miui.app.resourcebrowser.LIST_URL"

    iget-object v2, p0, Lcom/android/thememanager/ResourceSearchAdapter;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
