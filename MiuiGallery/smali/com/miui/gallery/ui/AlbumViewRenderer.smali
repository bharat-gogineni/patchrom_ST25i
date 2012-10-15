.class public Lcom/miui/gallery/ui/AlbumViewRenderer;
.super Lcom/miui/gallery/ui/SlotViewWithTitle;
.source "AlbumViewRenderer.java"


# static fields
.field protected static mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

.field public static sGridDrawer:Lcom/miui/gallery/ui/GridDrawer;


# instance fields
.field protected mFastScroll:Z

.field protected mLastCacheEnd:I

.field protected mLastCacheStart:I

.field protected mLastCenter:I

.field protected mLastEnd:I

.field protected mLastIfDown:Z

.field protected mLastStart:I

.field protected mRenderStopped:Z

.field protected mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

.field protected mSize:I

.field protected mStillDown:Z

.field protected renderStopCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/ui/AlbumViewRenderer;->sGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    .line 34
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    .line 23
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mLastStart:I

    .line 24
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mLastEnd:I

    .line 25
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mLastCenter:I

    .line 27
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mLastCacheStart:I

    .line 28
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mLastCacheEnd:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mLastIfDown:Z

    .line 30
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mStillDown:Z

    .line 31
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mRenderStopped:Z

    .line 32
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->renderStopCount:I

    .line 33
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mSize:I

    .line 35
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mFastScroll:Z

    .line 19
    invoke-static {p1, p0}, Lcom/miui/gallery/ui/AlbumShowManager;->getInstance(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/AlbumShowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    .line 20
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumShowManager;->resetCache()V

    .line 59
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->onTouch(Landroid/view/MotionEvent;)Z

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 65
    :pswitch_0
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mStillDown:Z

    goto :goto_0

    .line 68
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mStillDown:Z

    .line 70
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mRenderStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumShowManager;->isShowDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "EXTRA"

    const-string v1, "CALL INVALIDATE"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mMoreAnimation:Z

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewRenderer;->invalidate()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected renderCore(Lcom/miui/gallery/ui/GLCanvas;FZZ)V
    .locals 4
    .parameter "canvas"
    .parameter "interpolate"
    .parameter "paperActive"
    .parameter "more"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumShowManager;->isShowDetails()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mFastScroll:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/gallery/ui/AlbumViewRenderer;->renderShowRegion(Lcom/miui/gallery/ui/GLCanvas;ZZ)Z

    move-result v0

    or-int/2addr p4, v0

    .line 107
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewRenderer;->invalidate()V

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mMoreAnimation:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 110
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mRenderStopped:Z

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/UserInteractionListener;->onUserInteractionEnd()V

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mFastScroll:Z

    if-eqz v0, :cond_2

    .line 116
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mFastScroll:Z

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumShowManager;->isShowDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0, p1, v1, p3}, Lcom/miui/gallery/ui/AlbumViewRenderer;->renderShowRegion(Lcom/miui/gallery/ui/GLCanvas;ZZ)Z

    .line 124
    :cond_2
    iput-boolean p4, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mMoreAnimation:Z

    .line 125
    iget v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mScrollY:I

    int-to-float v0, v0

    invoke-interface {p1, v3, v0, v3}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 126
    return-void

    :cond_3
    move v0, v2

    .line 106
    goto :goto_0
.end method

.method protected renderItemNew(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/AlbumDisplayItem;ZZ)Z
    .locals 7
    .parameter "canvas"
    .parameter "renderItem"
    .parameter "showDetails"
    .parameter "paperActive"

    .prologue
    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 41
    sget-object v0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v1, p2, Lcom/miui/gallery/ui/AlbumDisplayItem;->x:I

    int-to-float v1, v1

    iget v2, p2, Lcom/miui/gallery/ui/AlbumDisplayItem;->y:I

    int-to-float v2, v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(FFFFF)V

    .line 42
    if-eqz p4, :cond_1

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPaper:Lcom/miui/gallery/ui/Paper;

    sget-object v1, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    sget-object v2, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v4, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mScrollX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mScrollY:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/miui/gallery/ui/Paper;->getTransform(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;FF)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 49
    :goto_0
    if-eqz p4, :cond_0

    .line 50
    sget-object v0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v0, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->theta:F

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v3, v3, v1}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 52
    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/miui/gallery/ui/AlbumDisplayItem;->render(Lcom/miui/gallery/ui/GLCanvas;Z)Z

    move-result v6

    .line 53
    .local v6, more:Z
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 54
    return v6

    .line 46
    .end local v6           #more:Z
    :cond_1
    sget-object v0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v0, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    sget-object v1, Lcom/miui/gallery/ui/AlbumViewRenderer;->mPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v1, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    invoke-interface {p1, v0, v1, v3}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method protected renderShowRegion(Lcom/miui/gallery/ui/GLCanvas;ZZ)Z
    .locals 3
    .parameter "canvas"
    .parameter "showDetails"
    .parameter "paperActive"

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, more:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mSize:I

    if-lt v0, v2, :cond_1

    .line 94
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v2, v0

    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/miui/gallery/ui/AlbumViewRenderer;->renderItemNew(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/AlbumDisplayItem;ZZ)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 101
    :cond_2
    return v1
.end method

.method public savePositions(Lcom/miui/gallery/ui/PositionRepository;)V
    .locals 5
    .parameter "repository"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PositionRepository;->clear()V

    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v1, v2, v0

    .line 84
    .local v1, item:Lcom/miui/gallery/ui/AlbumDisplayItem;
    if-nez v1, :cond_0

    .line 82
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->position:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v3, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->x:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mScrollX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 86
    iget-object v2, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->position:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v3, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->y:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumViewRenderer;->mScrollY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 87
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDisplayItem;->getIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->position:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {p1, v2, v3}, Lcom/miui/gallery/ui/PositionRepository;->putPosition(Ljava/lang/Long;Lcom/miui/gallery/ui/PositionRepository$Position;)V

    goto :goto_1

    .line 89
    .end local v1           #item:Lcom/miui/gallery/ui/AlbumDisplayItem;
    :cond_1
    return-void
.end method
