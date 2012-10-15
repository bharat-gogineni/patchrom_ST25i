.class public Lcom/miui/player/ui/AlbumSearchResultActivity;
.super Landroid/app/Activity;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumGridView:Landroid/widget/GridView;

.field mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSavePath:Ljava/lang/String;

.field mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/AlbumSearchResultActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;

    .line 331
    return-void
.end method

.method static doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;Landroid/os/Handler;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;)Z
    .locals 2
    .parameter "strUrl"
    .parameter "provider"
    .parameter "itemInfo"
    .parameter "handler"
    .parameter "runSync"

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 354
    new-instance v0, Lcom/miui/player/ui/AlbumSearchResultActivity$1;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/miui/player/ui/AlbumSearchResultActivity$1;-><init>(Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    .line 377
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method notifyDownload()V
    .locals 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 267
    .local v1, myIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, i:Landroid/content/Intent;
    const-string v2, "album"

    const-string v3, "album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v2, "artist"

    const-string v3, "artist"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v2, "raw_album"

    const-string v3, "raw_album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v2, "raw_artist"

    const-string v3, "raw_artist"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 74
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    .line 77
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "save_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    iget-object v0, v0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    iget-object v0, v0, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V

    .line 83
    :cond_1
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    .line 84
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;

    iget-object v2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    iget-object v2, v2, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->getProvider(Landroid/content/Context;)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Ljava/util/List;Lcom/miui/player/plugin/onlineimage/ImageProvider;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 98
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    return-void
.end method
