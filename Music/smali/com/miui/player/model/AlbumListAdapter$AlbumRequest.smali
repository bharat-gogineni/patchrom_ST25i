.class Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;
.super Lmiui/cache/PoolElement;
.source "AlbumListAdapter.java"

# interfaces
.implements Lmiui/cache/RequestManager$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/cache/PoolElement",
        "<",
        "Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;",
        ">;",
        "Lmiui/cache/RequestManager$Request",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mAlbumHeight:I

.field mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

.field mAlbumWidth:I

.field mContext:Landroid/content/Context;

.field mImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mKey:Ljava/lang/String;

.field mRemoveKey:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lmiui/cache/PoolElement;-><init>()V

    return-void
.end method

.method static asKey(Lcom/miui/player/meta/AlbumInfo;)Ljava/lang/String;
    .locals 4
    .parameter "info"

    .prologue
    .line 339
    iget-object v1, p0, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    const-string v3, "album"

    invoke-static {v1, v2, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, keyStr:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public computAsync()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 287
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

    iget-wide v1, v1, Lcom/miui/player/meta/AlbumInfo;->mAlbumId:J

    iget-object v3, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

    iget-object v3, v3, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

    iget-object v4, v4, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

    iget-object v5, v5, Lcom/miui/player/meta/AlbumInfo;->mAlbumArt:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumWidth:I

    iget v7, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumHeight:I

    invoke-static/range {v0 .. v7}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuick(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic computAsync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->computAsync()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveKey()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mRemoveKey:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getRemoveKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->getRemoveKey()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(IILcom/miui/player/meta/AlbumInfo;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "albumInfo"
    .parameter "context"
    .parameter "imageView"

    .prologue
    .line 271
    iput p1, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumWidth:I

    .line 272
    iput p2, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumHeight:I

    .line 273
    iput-object p3, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

    .line 274
    iput-object p4, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mContext:Landroid/content/Context;

    .line 275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 276
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->asKey(Lcom/miui/player/meta/AlbumInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mKey:Ljava/lang/String;

    .line 277
    invoke-static {p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mRemoveKey:Ljava/lang/Integer;

    .line 278
    return-void
.end method

.method public isRemovable()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 320
    iget-object v3, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 321
    .local v1, view:Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v2

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needCache()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public onCompleted(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .parameter "value"
    .parameter "finalValue"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 299
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 309
    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->sPool:Landroid/util/Pool;

    invoke-interface {v2, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 311
    :cond_1
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->onCompleted(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public onRemoved()V
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 350
    return-void
.end method
