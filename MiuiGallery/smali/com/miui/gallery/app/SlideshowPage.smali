.class public Lcom/miui/gallery/app/SlideshowPage;
.super Lcom/miui/gallery/app/ActivityState;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/SlideshowPage$SequentialSource;,
        Lcom/miui/gallery/app/SlideshowPage$ShuffleSource;,
        Lcom/miui/gallery/app/SlideshowPage$Slide;,
        Lcom/miui/gallery/app/SlideshowPage$Model;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mModel:Lcom/miui/gallery/app/SlideshowPage$Model;

.field private mPendingSlide:Lcom/miui/gallery/app/SlideshowPage$Slide;

.field private mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field private mSlideshowView:Lcom/miui/gallery/ui/SlideshowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/miui/gallery/app/SlideshowPage$Slide;

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    .line 84
    new-instance v0, Lcom/miui/gallery/app/SlideshowPage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/SlideshowPage$1;-><init>(Lcom/miui/gallery/app/SlideshowPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/SlideshowPage;)Lcom/miui/gallery/ui/SlideshowView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/miui/gallery/ui/SlideshowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/app/SlideshowPage;->showPendingBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/SlideshowPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/app/SlideshowPage;->loadNextBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/gallery/app/SlideshowPage;Lcom/miui/gallery/app/SlideshowPage$Slide;)Lcom/miui/gallery/app/SlideshowPage$Slide;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/miui/gallery/app/SlideshowPage$Slide;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/SlideshowPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/data/MediaSet;I)Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/miui/gallery/app/SlideshowPage;->findMediaItem(Lcom/miui/gallery/data/MediaSet;I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private static findMediaItem(Lcom/miui/gallery/data/MediaSet;I)Lcom/miui/gallery/data/MediaItem;
    .locals 6
    .parameter "mediaSet"
    .parameter "index"

    .prologue
    .line 214
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    .line 216
    .local v4, subset:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 217
    .local v0, count:I
    if-ge p1, v0, :cond_0

    .line 218
    invoke-static {v4, p1}, Lcom/miui/gallery/app/SlideshowPage;->findMediaItem(Lcom/miui/gallery/data/MediaSet;I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v5

    .line 223
    .end local v0           #count:I
    .end local v4           #subset:Lcom/miui/gallery/data/MediaSet;
    :goto_1
    return-object v5

    .line 220
    .restart local v0       #count:I
    .restart local v4       #subset:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    sub-int/2addr p1, v0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v0           #count:I
    .end local v4           #subset:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 223
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/data/MediaItem;

    goto :goto_1
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 184
    const-string v7, "random-order"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 187
    .local v5, random:Z
    const-string v7, "media-set-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, mediaPath:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/miui/gallery/app/FilterUtils;->newFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 189
    iget-object v7, p0, Lcom/miui/gallery/app/SlideshowPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    .line 191
    .local v3, mediaSet:Lcom/miui/gallery/data/MediaSet;
    if-eqz v5, :cond_0

    .line 192
    const-string v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 193
    .local v6, repeat:Z
    new-instance v7, Lcom/miui/gallery/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/miui/gallery/app/SlideshowPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    new-instance v9, Lcom/miui/gallery/app/SlideshowPage$ShuffleSource;

    invoke-direct {v9, v3, v6}, Lcom/miui/gallery/app/SlideshowPage$ShuffleSource;-><init>(Lcom/miui/gallery/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/miui/gallery/app/SlideshowDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryContext;Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;ILcom/miui/gallery/data/Path;)V

    iput-object v7, p0, Lcom/miui/gallery/app/SlideshowPage;->mModel:Lcom/miui/gallery/app/SlideshowPage$Model;

    .line 195
    iget-object v7, p0, Lcom/miui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v8, "photo-index"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/miui/gallery/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 205
    :goto_0
    return-void

    .line 197
    .end local v6           #repeat:Z
    :cond_0
    const-string v7, "photo-index"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, index:I
    const-string v7, "media-item-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, itemPath:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 200
    .local v4, path:Lcom/miui/gallery/data/Path;
    :cond_1
    const-string v7, "repeat"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 201
    .restart local v6       #repeat:Z
    new-instance v7, Lcom/miui/gallery/app/SlideshowDataAdapter;

    iget-object v8, p0, Lcom/miui/gallery/app/SlideshowPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    new-instance v9, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;

    invoke-direct {v9, v3, v6}, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;-><init>(Lcom/miui/gallery/data/MediaSet;Z)V

    invoke-direct {v7, v8, v9, v0, v4}, Lcom/miui/gallery/app/SlideshowDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryContext;Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;ILcom/miui/gallery/data/Path;)V

    iput-object v7, p0, Lcom/miui/gallery/app/SlideshowPage;->mModel:Lcom/miui/gallery/app/SlideshowPage$Model;

    .line 203
    iget-object v7, p0, Lcom/miui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v8, "photo-index"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v11, v7}, Lcom/miui/gallery/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/miui/gallery/ui/SlideshowView;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SlideshowView;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/miui/gallery/ui/SlideshowView;

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/miui/gallery/ui/SlideshowView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/SlideshowPage;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 211
    return-void
.end method

.method private loadNextBitmap()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mModel:Lcom/miui/gallery/app/SlideshowPage$Model;

    new-instance v1, Lcom/miui/gallery/app/SlideshowPage$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/SlideshowPage$3;-><init>(Lcom/miui/gallery/app/SlideshowPage;)V

    invoke-interface {v0, v1}, Lcom/miui/gallery/app/SlideshowPage$Model;->nextSlide(Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    .line 134
    return-void
.end method

.method private showPendingBitmap()V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/miui/gallery/app/SlideshowPage$Slide;

    .line 141
    .local v0, slide:Lcom/miui/gallery/app/SlideshowPage$Slide;
    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/miui/gallery/app/SlideshowPage;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/miui/gallery/ui/SlideshowView;

    iget-object v2, v0, Lcom/miui/gallery/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/miui/gallery/app/SlideshowPage$Slide;->item:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/SlideshowView;->next(Landroid/graphics/Bitmap;I)V

    .line 150
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowPage;->mResultIntent:Landroid/content/Intent;

    const-string v3, "media-item-path"

    iget-object v4, v0, Lcom/miui/gallery/app/SlideshowPage$Slide;->item:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photo-index"

    iget v4, v0, Lcom/miui/gallery/app/SlideshowPage$Slide;->index:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/SlideshowPage;->setStateResult(ILandroid/content/Intent;)V

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowPage;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/settings/PreferenceHelper;->getSlideshowInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 107
    iget v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mFlags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mFlags:I

    .line 108
    new-instance v0, Lcom/miui/gallery/settings/PreferenceHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 109
    new-instance v0, Lcom/miui/gallery/app/SlideshowPage$2;

    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/SlideshowPage$2;-><init>(Lcom/miui/gallery/app/SlideshowPage;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    .line 123
    invoke-direct {p0}, Lcom/miui/gallery/app/SlideshowPage;->initializeViews()V

    .line 124
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/SlideshowPage;->initializeData(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/miui/gallery/app/SlideshowPage;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mModel:Lcom/miui/gallery/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/SlideshowPage$Model;->pause()V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mSlideshowView:Lcom/miui/gallery/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlideshowView;->release()V

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mModel:Lcom/miui/gallery/app/SlideshowPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/SlideshowPage$Model;->resume()V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage;->mPendingSlide:Lcom/miui/gallery/app/SlideshowPage$Slide;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/miui/gallery/app/SlideshowPage;->showPendingBitmap()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/SlideshowPage;->loadNextBitmap()V

    goto :goto_0
.end method
