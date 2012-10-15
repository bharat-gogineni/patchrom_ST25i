.class Lcom/android/thememanager/WallpaperDetailActivity$10;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Lmiui/app/resourcebrowser/util/ImageCacheDecoder$ImageDecodingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/WallpaperDetailActivity;->getImageDecodingListener()Lmiui/app/resourcebrowser/util/ImageCacheDecoder$ImageDecodingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/WallpaperDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDecodingResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .parameter "localPath"
    .parameter "onlinePath"

    .prologue
    .line 552
    if-eqz p1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->isVisiableImagePath(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2100(Lcom/android/thememanager/WallpaperDetailActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap()V
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2200(Lcom/android/thememanager/WallpaperDetailActivity;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2400(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const v1, 0x7f0a0049

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleDownloadResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "localPath"
    .parameter "onlinePath"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/resource/Resource;
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1900(Lcom/android/thememanager/WallpaperDetailActivity;)Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v1

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->getOnlinePreviewUrl(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2000(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 538
    .local v0, currentResource:Z
    if-eqz p1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->isVisiableImagePath(Ljava/lang/String;)Z
    invoke-static {v1, p2}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2100(Lcom/android/thememanager/WallpaperDetailActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap()V
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2200(Lcom/android/thememanager/WallpaperDetailActivity;)V

    .line 542
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2300(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const v3, 0x60c0018

    invoke-virtual {v2, v3}, Lcom/android/thememanager/WallpaperDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2300(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    if-eqz v0, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$10;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const v2, 0x60c0020

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
