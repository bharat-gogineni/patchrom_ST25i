.class Lcom/miui/player/model/MetaAdapter$ImageRequest;
.super Ljava/lang/Object;
.source "MetaAdapter.java"

# interfaces
.implements Lmiui/cache/RequestManager$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/MetaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/cache/RequestManager$Request",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private final mImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "url"
    .parameter "v"
    .parameter "drawable"

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mContext:Landroid/content/Context;

    .line 187
    iput-object p1, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mUrl:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 189
    iput-object p3, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    return-void
.end method


# virtual methods
.method public computAsync()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/player/network/OnlineMusicProxy;->requestBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 196
    sget v1, Lcom/miui/player/model/MetaAdapter;->sAlbumWidth:I

    sget v2, Lcom/miui/player/model/MetaAdapter;->sAlbumHeight:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiui/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    :cond_0
    invoke-static {v0}, Lcom/miui/player/meta/AlbumManager;->createFastDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic computAsync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/miui/player/model/MetaAdapter$ImageRequest;->computAsync()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/miui/player/model/MetaAdapter$ImageRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveKey()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 208
    const/high16 v0, -0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoveKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/miui/player/model/MetaAdapter$ImageRequest;->getRemoveKey()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public needCache()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public onCompleted(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "value"
    .parameter "finalValue"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    .local v0, v:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 225
    if-eqz p1, :cond_1

    .end local p1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_0
    return-void

    .line 225
    .restart local p1
    :cond_1
    iget-object p1, p0, Lcom/miui/player/model/MetaAdapter$ImageRequest;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/model/MetaAdapter$ImageRequest;->onCompleted(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public onRemoved()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method
