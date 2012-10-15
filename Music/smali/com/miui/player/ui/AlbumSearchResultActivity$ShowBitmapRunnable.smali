.class Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;
.super Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowBitmapRunnable"
.end annotation


# instance fields
.field private final mLoadingView:Landroid/view/View;

.field private final mUrl:Ljava/lang/String;

.field private final mView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "v"
    .parameter "loadingView"
    .parameter "url"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mView:Landroid/widget/ImageView;

    .line 202
    iput-object p3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mLoadingView:Landroid/view/View;

    .line 203
    iput-object p4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mUrl:Ljava/lang/String;

    .line 204
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 209
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v3}, Lcom/miui/player/ui/AlbumSearchResultActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mLoadingView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 216
    .local v1, result:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 217
    check-cast v0, Landroid/graphics/Bitmap;

    .line 219
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v3, v3, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, tag:Ljava/lang/Object;
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
