.class public Lcom/miui/player/ui/controller/LyricViewController;
.super Lcom/miui/player/ui/controller/MediaPlaybackController;
.source "LyricViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;,
        Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;,
        Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;,
        Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;
    }
.end annotation


# instance fields
.field private final mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

.field final mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

.field final mContext:Landroid/content/Context;

.field private mLastLyricStatus:I

.field private mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

.field private final mLyricCancelClickListener:Landroid/view/View$OnClickListener;

.field private final mLyricModifyCommit:Landroid/view/View;

.field private final mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

.field private final mLyricSaveClickListener:Landroid/view/View$OnClickListener;

.field private mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

.field final mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

.field final mLyricViewWrap:Landroid/view/View;

.field private final mTimeIndicator:Lcom/miui/player/ui/controller/TimeIndicatorController;

.field private final mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Lcom/miui/player/ui/controller/AlbumViewController;Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 6
    .parameter "container"
    .parameter "status"
    .parameter "albumController"
    .parameter "seekListener"
    .parameter "lyricClick"
    .parameter "lyricSaveClick"
    .parameter "lyricCancelClick"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/player/ui/controller/MediaPlaybackController;-><init>()V

    .line 42
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    .line 52
    iput-object p6, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricSaveClickListener:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p7, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricCancelClickListener:Landroid/view/View$OnClickListener;

    .line 54
    const v3, 0x7f0c0023

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    .line 58
    iput-object p2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    .line 60
    const v3, 0x7f0c0020

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    .line 61
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v3, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const v4, 0x7f0c002c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/player/ui/view/ExtendScrollView;

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    .line 63
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/ExtendScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 64
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/ExtendScrollView;->setFadingEdgeLength(I)V

    .line 65
    new-instance v3, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    .line 67
    new-instance v3, Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v3, v4}, Lcom/miui/player/ui/controller/LyricMovementController;-><init>(Lcom/miui/player/ui/view/ExtendScrollView;)V

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    .line 68
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v3, p5}, Lcom/miui/player/ui/controller/LyricMovementController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v3, Lcom/miui/player/ui/controller/TimeIndicatorController;

    invoke-direct {v3, p1, p4}, Lcom/miui/player/ui/controller/TimeIndicatorController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;)V

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mTimeIndicator:Lcom/miui/player/ui/controller/TimeIndicatorController;

    .line 71
    new-instance v3, Lcom/miui/player/ui/controller/ToolBarController;

    invoke-direct {v3, p1, p0}, Lcom/miui/player/ui/controller/ToolBarController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/LyricViewController;)V

    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    .line 73
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const v4, 0x7f0c002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, lyricNowplayingLine:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    .local v0, lyricLineParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    .local v2, resources:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricViewController;->getLyricNowplayingMarginTop()I

    move-result v3

    const v4, 0x7f070003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f07002d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 78
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method private clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iput-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 231
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController;->resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V

    .line 232
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->clearText()V

    .line 233
    return-void
.end method

.method private getLyricNowplayingMarginTop()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->getLyricNowplayingMarginTop()I

    move-result v0

    return v0
.end method

.method private updateLyric()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 307
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const-string v9, "display_lyric"

    invoke-static {v8, v9}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v7

    .line 312
    :cond_1
    const/4 v4, 0x0

    .line 313
    .local v4, statusChanged:Z
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v8, :cond_2

    .line 314
    iget v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget v9, v9, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    if-eq v8, v9, :cond_3

    move v4, v6

    .line 315
    :goto_1
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget v8, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    iput v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    .line 318
    :cond_2
    iget v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    if-eqz v8, :cond_4

    move v7, v4

    .line 320
    goto :goto_0

    :cond_3
    move v4, v7

    .line 314
    goto :goto_1

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 324
    .local v2, oldLyric:Lcom/miui/player/meta/LyricParser$Lyric;
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v5, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackName:Ljava/lang/String;

    .line 325
    .local v5, tr:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v0, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    .line 326
    .local v0, ar:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v3, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackPath:Ljava/lang/String;

    .line 327
    .local v3, path:Ljava/lang/String;
    invoke-static {v5, v0, v3}, Lcom/miui/player/meta/MetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 329
    .local v1, lyricFile:Ljava/io/File;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 330
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 331
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/miui/player/meta/LyricParser$Lyric;->getOpenTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    invoke-virtual {v2}, Lcom/miui/player/meta/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 334
    iput-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 343
    :cond_5
    :goto_2
    if-nez v4, :cond_6

    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eq v2, v8, :cond_0

    :cond_6
    move v7, v6

    goto :goto_0

    .line 336
    :cond_7
    invoke-static {v1}, Lcom/miui/player/meta/LyricParser;->parseLyric(Ljava/io/File;)Lcom/miui/player/meta/LyricParser$Lyric;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 337
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v8, :cond_5

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method


# virtual methods
.method public cancelModifyLyricProgress()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->resetHeaderOffset()V

    .line 298
    :cond_0
    return-void
.end method

.method changeLyric()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-nez v3, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricViewController;->clearAll()V

    .line 279
    :goto_0
    return v1

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/LyricMovementController;->resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, hint:I
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget v3, v3, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    packed-switch v3, :pswitch_data_0

    .line 270
    :cond_1
    :goto_1
    :pswitch_0
    if-lez v0, :cond_3

    .line 271
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/LyricMovementController;->clearText()V

    .line 272
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setVisible(Z)V

    .line 273
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setStatusText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    const v4, 0x7f09008b

    if-eq v0, v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setIndicatorVisible(Z)V

    :goto_2
    move v1, v2

    .line 279
    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const-string v4, "display_lyric"

    invoke-static {v3, v4}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    const v0, 0x7f09008b

    goto :goto_1

    .line 251
    :pswitch_2
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const-string v4, "display_lyric"

    invoke-static {v3, v4}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    const v0, 0x7f09008a

    goto :goto_1

    .line 258
    :pswitch_3
    const v0, 0x7f090005

    .line 259
    goto :goto_1

    .line 261
    :pswitch_4
    const v0, 0x7f09008c

    .line 262
    goto :goto_1

    .line 264
    :pswitch_5
    const v0, 0x7f09008b

    .line 265
    goto :goto_1

    .line 267
    :pswitch_6
    const v0, 0x7f09008a

    goto :goto_1

    .line 276
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setVisible(Z)V

    goto :goto_2

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dirty(I)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, contentChanged:Z
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 204
    :cond_0
    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 205
    const/4 v0, 0x1

    .line 206
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v2}, Lcom/miui/player/ui/controller/ToolBarController;->updateDetailInfo()V

    .line 211
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 212
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/LyricMovementController;->resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V

    .line 215
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_1
    return v1

    .line 207
    :cond_4
    if-ne p1, v1, :cond_1

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public doUpdate()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v3}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->isActivityPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricViewController;->clearAll()V

    .line 178
    const/4 v2, 0x0

    .line 197
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/AlbumViewController;->update()V

    .line 182
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricViewController;->updateLyric()Z

    move-result v1

    .line 184
    .local v1, lyricChanged:Z
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->isForced()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->changeLyric()Z

    move-result v2

    goto :goto_0

    .line 191
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v3, v2}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 192
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 193
    .local v0, fadeOut:Landroid/view/animation/Animation;
    new-instance v3, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;-><init>(Lcom/miui/player/ui/controller/LyricViewController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v3, v0}, Lcom/miui/player/ui/view/ExtendScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public existLyric()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v5, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const-string v6, "display_lyric"

    invoke-static {v5, v6}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v4

    .line 90
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v0, v5, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    .line 95
    .local v0, ar:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v3, v5, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackName:Ljava/lang/String;

    .line 96
    .local v3, tr:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v2, v5, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackPath:Ljava/lang/String;

    .line 98
    .local v2, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    :cond_2
    invoke-static {v3, v0, v2}, Lcom/miui/player/meta/MetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 100
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isEqualizerEnabled()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/ToolBarController;->isEqualizerEnabled()Z

    move-result v0

    return v0
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(J)V

    .line 286
    :cond_0
    return-void
.end method

.method public refreshProgress(JJFZZZ)V
    .locals 9
    .parameter "pos"
    .parameter "dur"
    .parameter "bufferedPer"
    .parameter "isPlaying"
    .parameter "isBuffering"
    .parameter "forceRefreshTotal"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mTimeIndicator:Lcom/miui/player/ui/controller/TimeIndicatorController;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/miui/player/ui/controller/TimeIndicatorController;->refresh(JJFZZZ)V

    .line 414
    return-void
.end method

.method public refreshToolbar()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/ToolBarController;->refresh()V

    .line 426
    return-void
.end method

.method public saveLyric()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->save()Z

    .line 292
    :cond_0
    return-void
.end method

.method public setLyricAlphaWithAnim(F)V
    .locals 4
    .parameter "alpha"

    .prologue
    .line 132
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v2}, Lcom/miui/player/ui/view/ExtendScrollView;->getAlpha()F

    move-result v1

    .line 133
    .local v1, start:F
    sub-float v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 134
    new-instance v0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;

    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;-><init>(Lcom/miui/player/ui/controller/LyricViewController;Landroid/view/View;FF)V

    .line 135
    .local v0, aa:Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v2}, Lcom/miui/player/ui/view/ExtendScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->setDuration(J)V

    .line 136
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/view/ExtendScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    .end local v0           #aa:Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;
    :cond_0
    return-void
.end method

.method public setLyricMode(I)V
    .locals 1
    .parameter "lryicMode"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/controller/LyricMovementController;->setLyricMode(I)V

    .line 129
    return-void
.end method

.method public setVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    .local v1, save:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, cancel:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 111
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricSaveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->changeLyric()Z

    .line 221
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    return-void
.end method

.method public unregisterToolBar()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/ToolBarController;->unregister()V

    .line 422
    return-void
.end method
