.class public Lcom/android/thememanager/view/WallpaperView;
.super Landroid/view/View;
.source "WallpaperView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;,
        Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
    }
.end annotation


# instance fields
.field private mContainingBitmapNeedHeight:I

.field private mContainingBitmapNeedWidth:I

.field private mCurrentVisiableArea:Landroid/graphics/Rect;

.field private mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

.field private mNextWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

.field private mPreviousWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

.field private mScreenSize:Landroid/graphics/Point;

.field private mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

.field private mThumbnailMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-direct {v0, p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;-><init>(Lcom/android/thememanager/view/WallpaperView;)V

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mPreviousWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    .line 33
    new-instance v0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-direct {v0, p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;-><init>(Lcom/android/thememanager/view/WallpaperView;)V

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    .line 35
    new-instance v0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-direct {v0, p0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;-><init>(Lcom/android/thememanager/view/WallpaperView;)V

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mNextWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    .line 53
    return-void
.end method

.method static synthetic access$1000(Lcom/android/thememanager/view/WallpaperView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/thememanager/view/WallpaperView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/thememanager/view/WallpaperView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mScreenSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/view/WallpaperView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/thememanager/view/WallpaperView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView;->resetWallpaperShowingState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/thememanager/view/WallpaperView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/thememanager/view/WallpaperView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/thememanager/view/WallpaperView;)Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/thememanager/view/WallpaperView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/thememanager/view/WallpaperView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z

    return p1
.end method

.method private getDefaultVisiableArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-boolean v2, p0, Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView;->getThumbnailModeVerticalPadding()I

    move-result v0

    .line 115
    .local v0, verticalPadding:I
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .end local v0           #verticalPadding:I
    :cond_0
    move v0, v1

    .line 114
    goto :goto_0
.end method

.method private getThumbnailModeVerticalPadding()I
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-virtual {v1}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->getThumbnailHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getWallpaperBitmap(I)Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
    .locals 1
    .parameter "pos"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, w:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
    if-gez p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mPreviousWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    .line 83
    :goto_0
    return-object v0

    .line 78
    :cond_0
    if-lez p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mNextWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    goto :goto_0
.end method

.method private resetWallpaperShowingState()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mPreviousWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->reset()V

    .line 221
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->reset()V

    .line 222
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mNextWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->reset()V

    .line 223
    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView;->getDefaultVisiableArea()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    .line 224
    return-void
.end method


# virtual methods
.method public autoSwitchCurreentWallpaper()V
    .locals 8

    .prologue
    .line 157
    iget-object v5, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 158
    .local v3, moveOffset:I
    if-nez v3, :cond_0

    .line 209
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 163
    .local v2, moveDistance:I
    iget-object v5, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 165
    .local v4, width:I
    move v1, v2

    .line 166
    .local v1, makeAnimDistance:I
    neg-int v5, v3

    div-int v0, v5, v2

    .line 167
    .local v0, makeAnimDirection:I
    int-to-float v5, v2

    int-to-float v6, v4

    const/high16 v7, 0x3e80

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    if-lez v3, :cond_1

    iget-object v5, p0, Lcom/android/thememanager/view/WallpaperView;->mPreviousWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    iget-object v5, v5, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/thememanager/view/WallpaperView;->mPreviousWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    iget-boolean v5, v5, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showIndeterminateBitmap:Z

    if-nez v5, :cond_2

    :cond_1
    if-gez v3, :cond_3

    iget-object v5, p0, Lcom/android/thememanager/view/WallpaperView;->mNextWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    iget-object v5, v5, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/thememanager/view/WallpaperView;->mNextWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    iget-boolean v5, v5, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showIndeterminateBitmap:Z

    if-eqz v5, :cond_3

    .line 172
    :cond_2
    sub-int v1, v4, v2

    .line 173
    div-int v0, v3, v2

    .line 176
    :cond_3
    new-instance v5, Lcom/android/thememanager/view/WallpaperView$1;

    invoke-direct {v5, p0}, Lcom/android/thememanager/view/WallpaperView$1;-><init>(Lcom/android/thememanager/view/WallpaperView;)V

    mul-int v6, v0, v1

    invoke-virtual {v5, v6}, Lcom/android/thememanager/view/WallpaperView$1;->start(I)V

    goto :goto_0
.end method

.method public getUserGivenId(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/WallpaperView;->getWallpaperBitmap(I)Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    move-result-object v0

    #getter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->id:I
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$100(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)I

    move-result v0

    return v0
.end method

.method public hasBeenInitied()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public horizontalMove(I)V
    .locals 2
    .parameter "distanceX"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 214
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 215
    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView;->invalidate()V

    .line 217
    :cond_0
    return-void
.end method

.method public isThumbnailScanMode()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView;->getDefaultVisiableArea()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x0

    if-lez v2, :cond_1

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v1, previousArea:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 134
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 135
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 136
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 137
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mPreviousWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-virtual {v2, p1, v1}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 140
    .end local v1           #previousArea:Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v3}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 142
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0}, Lcom/android/thememanager/view/WallpaperView;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 144
    .local v0, nextArea:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 145
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 146
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 147
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentVisiableArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 148
    iget-object v2, p0, Lcom/android/thememanager/view/WallpaperView;->mNextWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-virtual {v2, p1, v0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 150
    .end local v0           #nextArea:Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/thememanager/ThemeHelper;->getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 121
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v2}, Lcom/android/thememanager/view/WallpaperView;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method public regeisterSwitchListener(Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/thememanager/view/WallpaperView;->mSwitchListener:Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    .line 57
    return-void
.end method

.method public reset()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/high16 v3, -0x8000

    const/4 v1, 0x0

    .line 104
    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/thememanager/view/WallpaperView;->setBitmapInfo(ILandroid/graphics/Bitmap;IZZ)V

    .line 105
    const/4 v5, 0x1

    move-object v4, p0

    move-object v6, v2

    move v7, v3

    move v8, v1

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/thememanager/view/WallpaperView;->setBitmapInfo(ILandroid/graphics/Bitmap;IZZ)V

    .line 106
    const/4 v5, -0x1

    move-object v4, p0

    move-object v6, v2

    move v7, v3

    move v8, v1

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/thememanager/view/WallpaperView;->setBitmapInfo(ILandroid/graphics/Bitmap;IZZ)V

    .line 107
    return-void
.end method

.method public setBitmapInfo(ILandroid/graphics/Bitmap;IZZ)V
    .locals 1
    .parameter "pos"
    .parameter "b"
    .parameter "userGivenId"
    .parameter "showIndeterminate"
    .parameter "showDeterminateFg"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/WallpaperView;->getWallpaperBitmap(I)Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    move-result-object v0

    .line 88
    .local v0, w:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
    invoke-virtual {v0, p2}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iput-boolean p4, v0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showIndeterminateBitmap:Z

    .line 90
    #setter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showDeterminateFgImage:Z
    invoke-static {v0, p5}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$002(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;Z)Z

    .line 91
    #setter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->id:I
    invoke-static {v0, p3}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$102(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;I)I

    .line 92
    return-void
.end method

.method public setContainingBitmapSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedWidth:I

    .line 65
    iput p2, p0, Lcom/android/thememanager/view/WallpaperView;->mContainingBitmapNeedHeight:I

    .line 67
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mScreenSize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mScreenSize:Landroid/graphics/Point;

    .line 69
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mScreenSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 70
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mScreenSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/thememanager/view/WallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 72
    :cond_0
    return-void
.end method

.method public setScanMode(Z)V
    .locals 4
    .parameter "showThumbnail"

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z

    if-eq p1, v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/android/thememanager/view/WallpaperView;->getThumbnailModeVerticalPadding()I

    move-result v0

    .line 234
    .local v0, verticalMoveOffset:I
    iget-boolean v1, p0, Lcom/android/thememanager/view/WallpaperView;->mThumbnailMode:Z

    if-eqz v1, :cond_0

    .line 235
    neg-int v0, v0

    .line 237
    :cond_0
    if-nez v0, :cond_2

    .line 267
    .end local v0           #verticalMoveOffset:I
    :cond_1
    :goto_0
    return-void

    .line 241
    .restart local v0       #verticalMoveOffset:I
    :cond_2
    new-instance v1, Lcom/android/thememanager/view/WallpaperView$2;

    invoke-direct {v1, p0}, Lcom/android/thememanager/view/WallpaperView$2;-><init>(Lcom/android/thememanager/view/WallpaperView;)V

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/thememanager/view/WallpaperView$2;->start(III)V

    goto :goto_0
.end method

.method public showingDeterminateFg(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/thememanager/view/WallpaperView;->getWallpaperBitmap(I)Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    move-result-object v0

    .line 100
    .local v0, w:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;
    iget-object v1, v0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->determinateBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    #getter for: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->showDeterminateFgImage:Z
    invoke-static {v0}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$000(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateCurrentWallpaperShowingArea(FZ)V
    .locals 1
    .parameter "movePercentFromCenter"
    .parameter "stopMove"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView;->mCurrentWallpaper:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->udpateShowingArea(FZ)V

    .line 154
    return-void
.end method
