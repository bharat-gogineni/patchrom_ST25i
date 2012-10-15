.class Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumArrayAdapter"
.end annotation


# instance fields
.field private final mImageItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlineimage/ImageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mProvider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Ljava/util/List;Lcom/miui/player/plugin/onlineimage/ImageProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlineimage/ImageItemInfo;",
            ">;",
            "Lcom/miui/player/plugin/onlineimage/ImageProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlineimage/ImageItemInfo;>;"
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    iput-object p2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mImageItemInfos:Ljava/util/List;

    .line 109
    iput-object p3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mProvider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

    .line 110
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mImageItemInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mImageItemInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 129
    move-object v6, p2

    .line 130
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 131
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030006

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 134
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mImageItemInfos:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    iget-object v4, v7, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;->mURL:Ljava/lang/String;

    .line 135
    .local v4, path:Ljava/lang/String;
    const v7, 0x7f0c0015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .local v0, albumImageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .line 138
    .local v2, isCached:Z
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v7, v7, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 139
    .local v5, sbm:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_1

    .line 140
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 141
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    const/4 v2, 0x1

    .line 149
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    const v7, 0x7f0c0016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 151
    .local v3, loadingBar:Landroid/widget/ProgressBar;
    if-nez v2, :cond_4

    .line 152
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 153
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 154
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8, v9, v9}, Lcom/miui/player/meta/AlbumManager;->getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v7, v7, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 145
    .end local v3           #loadingBar:Landroid/widget/ProgressBar;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v7, v7, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v3       #loadingBar:Landroid/widget/ProgressBar;
    :cond_3
    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v8, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mProvider:Lcom/miui/player/plugin/onlineimage/ImageProvider;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mImageItemInfos:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    iget-object v9, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v9, v9, Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;

    iget-object v11, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {v10, v11, v0, v3, v4}, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v4, v8, v7, v9, v10}, Lcom/miui/player/ui/AlbumSearchResultActivity;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;Landroid/os/Handler;Lcom/miui/player/ui/AlbumSearchResultActivity$HttpGetSyncRunnable;)Z

    goto :goto_1

    .line 164
    :cond_4
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method
