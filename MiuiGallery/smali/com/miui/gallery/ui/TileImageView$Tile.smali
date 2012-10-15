.class Lcom/miui/gallery/ui/TileImageView$Tile;
.super Lcom/miui/gallery/ui/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field mDecodedTile:Landroid/graphics/Bitmap;

.field mNext:Lcom/miui/gallery/ui/TileImageView$Tile;

.field mTileLevel:I

.field volatile mTileState:I

.field mX:I

.field mY:I

.field final synthetic this$0:Lcom/miui/gallery/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/TileImageView;III)V
    .locals 1
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->this$0:Lcom/miui/gallery/ui/TileImageView;

    invoke-direct {p0}, Lcom/miui/gallery/ui/UploadedTexture;-><init>()V

    .line 589
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 592
    iput p2, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    .line 593
    iput p3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    .line 594
    iput p4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    .line 595
    return-void
.end method


# virtual methods
.method decode()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 605
    const/16 v2, 0x100

    .line 606
    .local v2, tileLength:I
    iget v4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    shl-int v0, v3, v4

    .line 608
    .local v0, borderLength:I
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->this$0:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;
    invoke-static {v4}, Lcom/miui/gallery/ui/TileImageView;->access$400(Lcom/miui/gallery/ui/TileImageView;)Lcom/miui/gallery/ui/TileImageView$Model;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    iget v6, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v6, v0

    iget v7, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v7, v0

    invoke-interface {v4, v5, v6, v7, v2}, Lcom/miui/gallery/ui/TileImageView$Model;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    :goto_1
    return v3

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, t:Ljava/lang/Throwable;
    const-string v4, "TileImageView"

    const-string v5, "fail to decode tile"

    invoke-static {v4, v5, v1}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 613
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getParentTile()Lcom/miui/gallery/ui/TileImageView$Tile;
    .locals 5

    .prologue
    .line 633
    iget v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->this$0:Lcom/miui/gallery/ui/TileImageView;

    iget v4, v4, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 637
    :goto_0
    return-object v3

    .line 634
    :cond_0
    const/16 v3, 0xfe

    iget v4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 635
    .local v0, size:I
    iget v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 636
    .local v1, x:I
    iget v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 637
    .local v2, y:I
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->this$0:Lcom/miui/gallery/ui/TileImageView;

    iget v4, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    #calls: Lcom/miui/gallery/ui/TileImageView;->getTile(III)Lcom/miui/gallery/ui/TileImageView$Tile;
    invoke-static {v3, v1, v2, v4}, Lcom/miui/gallery/ui/TileImageView;->access$500(Lcom/miui/gallery/ui/TileImageView;III)Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 600
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 618
    iget v1, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 619
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 620
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 621
    iput v2, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 622
    return-object v0

    .line 618
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 642
    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->this$0:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/TileImageView;->mLevel:I
    invoke-static {v3}, Lcom/miui/gallery/ui/TileImageView;->access$600(Lcom/miui/gallery/ui/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->this$0:Lcom/miui/gallery/ui/TileImageView;

    iget v3, v3, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 626
    iput p1, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    .line 627
    iput p2, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    .line 628
    iput p3, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    .line 629
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TileImageView$Tile;->invalidateContent()V

    .line 630
    return-void
.end method
