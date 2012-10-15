.class Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;Lcom/miui/gallery/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 2
    .parameter "indexHint"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 514
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    :goto_0
    return v0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 510
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 518
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget v2, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    .line 519
    .local v0, item:Lcom/miui/gallery/data/MediaObject;
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v1, v1, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 521
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->size()I

    move-result v0

    return v0
.end method
