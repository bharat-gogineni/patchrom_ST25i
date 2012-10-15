.class public Lcom/miui/gallery/ui/AlbumSetSlidingWindow;
.super Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumSetView$ModelListener;


# instance fields
.field private mShowType:I

.field private mShowTypeVersion:J


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetView$Model;II)V
    .locals 0
    .parameter "activity"
    .parameter "labelSpec"
    .parameter "drawer"
    .parameter "source"
    .parameter "cacheSize"
    .parameter "showType"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;I)V

    .line 31
    invoke-interface {p4, p0}, Lcom/miui/gallery/ui/AlbumSetView$Model;->setModelListener(Lcom/miui/gallery/ui/AlbumSetView$ModelListener;)V

    .line 32
    iput p6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowType:I

    .line 33
    return-void
.end method

.method private notifySlotChanged(II)V
    .locals 5
    .parameter "slotIndex"
    .parameter "showType"

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowType:I

    if-eq v0, p2, :cond_0

    .line 39
    const-string v0, "AlbumSetSlidingWindow"

    const-string v1, "show type changed: index%s album needn\'t show on page"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->handleSlotChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeShowType(I)V
    .locals 0
    .parameter "showType"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->freeAll()V

    .line 65
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowType:I

    .line 66
    return-void
.end method

.method public onSizeChanged(IIJ)V
    .locals 2
    .parameter "size"
    .parameter "totalMediaObjectCount"
    .parameter "showTypeVersion"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowTypeVersion:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 50
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;->onSizeChanged(II)V

    .line 53
    :cond_1
    return-void
.end method

.method public onWindowContentChanged(II)V
    .locals 1
    .parameter "index"
    .parameter "showType"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->notifySlotChanged(II)V

    goto :goto_0
.end method
