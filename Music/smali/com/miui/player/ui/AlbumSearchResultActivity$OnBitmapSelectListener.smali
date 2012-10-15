.class Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnBitmapSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, group:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 281
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v6, v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v7}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->getProvider(Landroid/content/Context;)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v3

    .line 282
    .local v3, provider:Lcom/miui/player/plugin/onlineimage/ImageProvider;
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v6, v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    iget-object v6, v6, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    .line 283
    .local v2, info:Lcom/miui/player/plugin/onlineimage/ImageItemInfo;
    iget-object v5, v2, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;->mURL:Ljava/lang/String;

    .line 284
    .local v5, url:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v6, v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 285
    .local v4, sbm:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v4, :cond_0

    .line 286
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 289
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_1

    .line 291
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v9, v9, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v6}, Lcom/miui/player/ui/AlbumSearchResultActivity;->notifyDownload()V

    .line 296
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v6}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V

    .line 315
    :goto_1
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 298
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const-string v8, ""

    iget-object v9, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const v10, 0x7f090076

    invoke-virtual {v9, v10}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 301
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v6, v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 302
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v6, v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v7, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;

    invoke-direct {v7, p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;)V

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 311
    iget-object v6, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v6, v6, Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;

    iget-object v8, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {v7, v8}, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    invoke-static {v5, v3, v2, v6, v7}, Lcom/miui/player/ui/AlbumSearchResultActivity;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;Landroid/os/Handler;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;)Z

    goto :goto_1
.end method
