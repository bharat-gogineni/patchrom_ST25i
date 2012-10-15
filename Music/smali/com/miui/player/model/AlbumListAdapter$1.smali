.class final Lcom/miui/player/model/AlbumListAdapter$1;
.super Ljava/lang/Object;
.source "AlbumListAdapter.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/PoolableManager",
        "<",
        "Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/miui/player/model/AlbumListAdapter$1;->newInstance()Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;

    invoke-direct {v0}, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/AlbumListAdapter$1;->onAcquired(Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;)V

    return-void
.end method

.method public onAcquired(Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 362
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/AlbumListAdapter$1;->onReleased(Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;)V

    return-void
.end method

.method public onReleased(Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;)V
    .locals 2
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 366
    iput v1, p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumWidth:I

    .line 367
    iput v1, p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumHeight:I

    .line 368
    iput-object v0, p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mAlbumInfo:Lcom/miui/player/meta/AlbumInfo;

    .line 369
    iput-object v0, p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mContext:Landroid/content/Context;

    .line 370
    iput-object v0, p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 371
    iput-object v0, p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mKey:Ljava/lang/String;

    .line 372
    iput-object v0, p1, Lcom/miui/player/model/AlbumListAdapter$AlbumRequest;->mRemoveKey:Ljava/lang/Integer;

    .line 373
    return-void
.end method
