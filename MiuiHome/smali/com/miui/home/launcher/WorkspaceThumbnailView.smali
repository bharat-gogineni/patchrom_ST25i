.class public Lcom/miui/home/launcher/WorkspaceThumbnailView;
.super Lcom/miui/home/launcher/ThumbnailView;
.source "WorkspaceThumbnailView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->enableThumbnailPositionChanging(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->finishCurrentGesture()V

    .line 127
    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 128
    .local v0, screen:Lcom/miui/home/launcher/ThumbnailScreen;
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/ThumbnailScreen;->getThumbnailIndex(II)I

    move-result v1

    .line 131
    .local v1, thumbnailIndex:I
    if-ltz v1, :cond_0

    .line 132
    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    iget v3, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCurrentScreen:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 133
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->onThumbnailClick(I)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 139
    return-void
.end method

.method protected startDeletedAnimation(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 118
    .local v0, screen:Lcom/miui/home/launcher/ThumbnailScreen;
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    rem-int v2, p1, v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/ThumbnailScreen;->startMovingAnimation(III)V

    .line 122
    return-void
.end method

.method protected startSwitchingAnimation(Z)V
    .locals 23
    .parameter "entering"

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    rem-int v14, v1, v2

    .line 64
    .local v14, focusedThumbnailPosition:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 65
    .local v10, currentScreen:Lcom/miui/home/launcher/ThumbnailScreen;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mAnimationDuration:I

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    move/from16 v0, p1

    invoke-virtual {v10, v0, v2, v14, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->startSwitchingAnimation(ZIILandroid/view/animation/Animation$AnimationListener;)V

    .line 72
    if-eqz p1, :cond_2

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 79
    .local v15, interpolator:Landroid/view/animation/Interpolator;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v16

    .line 80
    .local v16, sourceView:Landroid/view/View;
    if-eqz v16, :cond_0

    .line 82
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 83
    .local v9, animation:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v14}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 84
    .local v13, focusedThumbnail:Landroid/view/View;
    const v1, 0x7f070084

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 85
    .local v17, thumbnail:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v22

    .line 86
    .local v22, thumbnailTop:I
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v18

    .line 87
    .local v18, thumbnailLeft:I
    if-nez v17, :cond_3

    const/16 v21, 0x0

    .line 88
    .local v21, thumbnailPaddingTop:I
    :goto_2
    if-nez v17, :cond_4

    const/16 v19, 0x0

    .line 89
    .local v19, thumbnailPaddingLeft:I
    :goto_3
    if-nez v17, :cond_5

    const/16 v20, 0x0

    .line 90
    .local v20, thumbnailPaddingRight:I
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mThumbnailWidth:I

    sub-int v1, v1, v19

    sub-int v1, v1, v20

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v1, v2

    .line 92
    .local v3, scaleRatio:F
    if-eqz p1, :cond_6

    .line 93
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v3

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    :goto_5
    move/from16 v0, v18

    int-to-float v11, v0

    .line 100
    .local v11, deltaX:F
    move/from16 v0, v22

    int-to-float v12, v0

    .line 101
    .local v12, deltaY:F
    if-eqz p1, :cond_7

    .line 102
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    move/from16 v0, v19

    int-to-float v4, v0

    add-float/2addr v4, v11

    const/4 v5, 0x0

    move/from16 v0, v21

    int-to-float v6, v0

    add-float/2addr v6, v12

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 111
    invoke-virtual {v9, v15}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 112
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    .end local v3           #scaleRatio:F
    .end local v9           #animation:Landroid/view/animation/AnimationSet;
    .end local v11           #deltaX:F
    .end local v12           #deltaY:F
    .end local v13           #focusedThumbnail:Landroid/view/View;
    .end local v17           #thumbnail:Landroid/view/View;
    .end local v18           #thumbnailLeft:I
    .end local v19           #thumbnailPaddingLeft:I
    .end local v20           #thumbnailPaddingRight:I
    .end local v21           #thumbnailPaddingTop:I
    .end local v22           #thumbnailTop:I
    :cond_0
    return-void

    .line 65
    .end local v15           #interpolator:Landroid/view/animation/Interpolator;
    .end local v16           #sourceView:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/home/launcher/WorkspaceThumbnailView;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    goto/16 :goto_0

    .line 72
    :cond_2
    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto/16 :goto_1

    .line 87
    .restart local v9       #animation:Landroid/view/animation/AnimationSet;
    .restart local v13       #focusedThumbnail:Landroid/view/View;
    .restart local v15       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v16       #sourceView:Landroid/view/View;
    .restart local v17       #thumbnail:Landroid/view/View;
    .restart local v18       #thumbnailLeft:I
    .restart local v22       #thumbnailTop:I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    goto :goto_2

    .line 88
    .restart local v21       #thumbnailPaddingTop:I
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    goto :goto_3

    .line 89
    .restart local v19       #thumbnailPaddingLeft:I
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    goto :goto_4

    .line 96
    .restart local v3       #scaleRatio:F
    .restart local v20       #thumbnailPaddingRight:I
    :cond_6
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v3

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 106
    .restart local v11       #deltaX:F
    .restart local v12       #deltaY:F
    :cond_7
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    move/from16 v0, v19

    int-to-float v2, v0

    add-float/2addr v2, v11

    const/4 v4, 0x0

    move/from16 v0, v21

    int-to-float v5, v0

    add-float/2addr v5, v12

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6
.end method
