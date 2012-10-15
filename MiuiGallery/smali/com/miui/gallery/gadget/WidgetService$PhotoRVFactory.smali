.class Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/gadget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoRVFactory"
.end annotation


# instance fields
.field private final mAlbumPath:Ljava/lang/String;

.field private final mApp:Lcom/miui/gallery/app/GalleryApp;

.field private final mAppWidgetId:I

.field private mSource:Lcom/miui/gallery/gadget/WidgetSource;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;IILjava/lang/String;)V
    .locals 0
    .parameter "app"
    .parameter "id"
    .parameter "type"
    .parameter "albumPath"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/miui/gallery/app/GalleryApp;

    .line 94
    iput p2, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    .line 95
    iput p3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mType:I

    .line 96
    iput-object p4, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/miui/gallery/gadget/WidgetSource;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 145
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0b0017

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 146
    return-object v0
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "position"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    invoke-interface {v2, p1}, Lcom/miui/gallery/gadget/WidgetSource;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 161
    :goto_0
    monitor-exit p0

    return-object v1

    .line 154
    :cond_0
    :try_start_1
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040008

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 157
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f0b0019

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 158
    const v2, 0x7f0b0019

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    invoke-interface {v4, p1}, Lcom/miui/gallery/gadget/WidgetSource;->getContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #views:Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v2, 0x7f0b001a

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 206
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    iget v5, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 102
    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v2

    .line 103
    .local v2, path:Lcom/miui/gallery/data/Path;
    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    .line 104
    .local v0, manager:Lcom/miui/gallery/data/DataManager;
    invoke-virtual {v0, v2}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSet;

    .line 105
    .local v1, mediaSet:Lcom/miui/gallery/data/MediaSet;
    if-nez v1, :cond_0

    new-instance v3, Lcom/miui/gallery/gadget/WidgetService$EmptySource;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/miui/gallery/gadget/WidgetService$EmptySource;-><init>(Lcom/miui/gallery/gadget/WidgetService$1;)V

    :goto_0
    iput-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    .line 113
    .end local v0           #manager:Lcom/miui/gallery/data/DataManager;
    .end local v1           #mediaSet:Lcom/miui/gallery/data/MediaSet;
    .end local v2           #path:Lcom/miui/gallery/data/Path;
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    invoke-interface {v3, p0}, Lcom/miui/gallery/gadget/WidgetSource;->setContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 114
    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v5, 0x7f0b001a

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 117
    return-void

    .line 105
    .restart local v0       #manager:Lcom/miui/gallery/data/DataManager;
    .restart local v1       #mediaSet:Lcom/miui/gallery/data/MediaSet;
    .restart local v2       #path:Lcom/miui/gallery/data/Path;
    :cond_0
    new-instance v3, Lcom/miui/gallery/gadget/MediaSetSource;

    invoke-direct {v3, v1}, Lcom/miui/gallery/gadget/MediaSetSource;-><init>(Lcom/miui/gallery/data/MediaSet;)V

    goto :goto_0

    .line 109
    .end local v0           #manager:Lcom/miui/gallery/data/DataManager;
    .end local v1           #mediaSet:Lcom/miui/gallery/data/MediaSet;
    .end local v2           #path:Lcom/miui/gallery/data/Path;
    :cond_1
    iget v5, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mType:I

    if-ne v5, v3, :cond_2

    :goto_2
    const-string v5, "widget type is not correct"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v3, Lcom/miui/gallery/gadget/LocalPhotoSource;

    iget-object v4, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    goto :goto_1

    :cond_2
    move v3, v4

    .line 109
    goto :goto_2
.end method

.method public onDataSetChanged()V
    .locals 5

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 167
    const-string v3, "GalleryAppWidgetService"

    const-string v4, "onDataSetChanged() in main thread"

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    if-nez v3, :cond_2

    .line 199
    :cond_0
    :goto_2
    return-void

    .line 169
    .end local v1           #index:I
    :cond_1
    const-string v3, "GalleryAppWidgetService"

    const-string v4, "onDataSetChanged() NOT in main thread"

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .restart local v1       #index:I
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    invoke-interface {v3}, Lcom/miui/gallery/gadget/WidgetSource;->reload()V

    .line 182
    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    instance-of v3, v3, Lcom/miui/gallery/gadget/MediaSetSource;

    if-eqz v3, :cond_0

    .line 186
    iget-object v2, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    check-cast v2, Lcom/miui/gallery/gadget/MediaSetSource;

    .line 187
    .local v2, source:Lcom/miui/gallery/gadget/MediaSetSource;
    invoke-virtual {v2}, Lcom/miui/gallery/gadget/MediaSetSource;->hasInvalidSource()Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    const-string v3, "GalleryAppWidgetService"

    const-string v4, "PhotoRVFactory.onDataSetChanged(): reload() succeeded!"

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    :cond_3
    const-string v3, "GalleryAppWidgetService"

    const-string v4, "PhotoRVFactory.onDataSetChanged(): sleep and re-try"

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-wide/16 v3, 0x5dc

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/miui/gallery/gadget/WidgetSource;->close()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/miui/gallery/gadget/WidgetSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
