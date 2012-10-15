.class public abstract Lcom/miui/gallery/ui/IconDrawer;
.super Lcom/miui/gallery/ui/SelectionDrawer;
.source "IconDrawer.java"


# instance fields
.field private final mCameraIcon:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mDarkStrip:Lcom/miui/gallery/ui/NinePatchTexture;

.field private final mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mFrameNewPressed:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mFramePressed:Lcom/miui/gallery/ui/ResourceTexture;

.field private mIndicatorHeight:I

.field private mIndicatorRightMargin:I

.field private mIndicatorTopMargin:I

.field private mIndicatorWidth:I

.field private final mLocalSetIcon:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mMtpIcon:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mPanoramaBorder:Lcom/miui/gallery/ui/NinePatchTexture;

.field private final mVideoOverlay:Lcom/miui/gallery/ui/Texture;

.field private final mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/ui/SelectionDrawer;-><init>()V

    .line 50
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020054

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mLocalSetIcon:Lcom/miui/gallery/ui/ResourceTexture;

    .line 51
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020053

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mCameraIcon:Lcom/miui/gallery/ui/ResourceTexture;

    .line 52
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020056

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mMtpIcon:Lcom/miui/gallery/ui/ResourceTexture;

    .line 53
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020072

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    .line 54
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f02005e

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    .line 55
    new-instance v0, Lcom/miui/gallery/ui/NinePatchTexture;

    const v1, 0x7f02006e

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mPanoramaBorder:Lcom/miui/gallery/ui/NinePatchTexture;

    .line 56
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020058

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFramePressed:Lcom/miui/gallery/ui/ResourceTexture;

    .line 57
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020057

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewPressed:Lcom/miui/gallery/ui/ResourceTexture;

    .line 58
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f02002c

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

    .line 59
    new-instance v0, Lcom/miui/gallery/ui/NinePatchTexture;

    const v1, 0x7f02003b

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mDarkStrip:Lcom/miui/gallery/ui/NinePatchTexture;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ResourceTexture;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorWidth:I

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ResourceTexture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorHeight:I

    .line 63
    invoke-static {p1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v0

    iget v0, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->selectIndicatorRightMargin:I

    iput v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorRightMargin:I

    .line 64
    invoke-static {p1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v0

    iget v0, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->selectIndicatorTopMargin:I

    iput v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorTopMargin:I

    .line 65
    return-void
.end method


# virtual methods
.method public drawFocus(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 0
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 147
    return-void
.end method

.method protected drawLabelBackground(Lcom/miui/gallery/ui/GLCanvas;III)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "drawLabelBackground"

    .prologue
    .line 123
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    neg-int v0, p2

    div-int/lit8 v2, v0, 0x2

    .line 127
    .local v2, x:I
    add-int/lit8 v0, p3, 0x1

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v0, p4

    .line 128
    .local v3, y:I
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mDarkStrip:Lcom/miui/gallery/ui/NinePatchTexture;

    move-object v0, p1

    move v4, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/IconDrawer;->drawFrame(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/NinePatchTexture;IIII)V

    goto :goto_0
.end method

.method protected drawMediaTypeOverlay(Lcom/miui/gallery/ui/GLCanvas;IZIIII)V
    .locals 6
    .parameter "canvas"
    .parameter "mediaType"
    .parameter "isPanorama"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 92
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/IconDrawer;->drawVideoOverlay(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 95
    :cond_0
    return-void
.end method

.method protected drawPressedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFramePressed:Lcom/miui/gallery/ui/ResourceTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 134
    return-void
.end method

.method protected drawSelectedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewPressed:Lcom/miui/gallery/ui/ResourceTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 140
    add-int v0, p2, p4

    iget v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorRightMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorWidth:I

    sub-int v2, v0, v1

    .line 141
    .local v2, iconX:I
    iget v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorTopMargin:I

    add-int v3, p3, v0

    .line 142
    .local v3, iconY:I
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

    iget v4, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorWidth:I

    iget v5, p0, Lcom/miui/gallery/ui/IconDrawer;->mIndicatorHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 143
    return-void
.end method

.method protected drawVideoOverlay(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 14
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 101
    move/from16 v0, p5

    int-to-float v1, v0

    iget-object v2, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v2}, Lcom/miui/gallery/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 102
    .local v13, scale:F
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v1}, Lcom/miui/gallery/ui/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 103
    .local v5, w:I
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v1}, Lcom/miui/gallery/ui/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 104
    .local v6, h:I
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/Texture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 106
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v11, v1, 0x6

    .line 107
    .local v11, side:I
    iget-object v7, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    neg-int v1, v11

    div-int/lit8 v9, v1, 0x2

    neg-int v1, v11

    div-int/lit8 v10, v1, 0x2

    move-object v8, p1

    move v12, v11

    invoke-interface/range {v7 .. v12}, Lcom/miui/gallery/ui/Texture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 108
    return-void
.end method

.method public prepareDrawing()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
