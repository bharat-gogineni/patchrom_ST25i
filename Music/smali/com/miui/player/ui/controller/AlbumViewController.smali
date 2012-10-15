.class public Lcom/miui/player/ui/controller/AlbumViewController;
.super Lcom/miui/player/ui/controller/MediaPlaybackController;
.source "AlbumViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;
    }
.end annotation


# instance fields
.field private mAlbumChangedListener:Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;

.field final mAlbumContainer:Landroid/widget/FrameLayout;

.field final mAlbumFrame:Landroid/widget/ImageSwitcher;

.field private final mAlbumHeight:I

.field final mAlbumMask:Landroid/widget/ImageView;

.field private final mAlbumWidth:I

.field final mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

.field final mContext:Landroid/content/Context;

.field private mCurrentAlbum:Landroid/graphics/Bitmap;

.field final mDefaulAlbum:Landroid/graphics/drawable/Drawable;

.field final mMaskFadeIn:Landroid/view/animation/Animation;

.field final mMaskFadeOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Landroid/view/View$OnClickListener;)V
    .locals 7
    .parameter "container"
    .parameter "status"
    .parameter "l"

    .prologue
    const v6, 0x7f040003

    const v5, 0x7f040002

    const/4 v4, -0x1

    .line 34
    invoke-direct {p0}, Lcom/miui/player/ui/controller/MediaPlaybackController;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    .line 37
    const v0, 0x7f0c001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumContainer:Landroid/widget/FrameLayout;

    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHeight:I

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumWidth:I

    .line 45
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageSwitcher;

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v3, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v4, v4, v2, v3}, Lcom/miui/player/ui/UIHelper;->makeImageFactory(Landroid/content/Context;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)Landroid/widget/ViewSwitcher$ViewFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 50
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 53
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mMaskFadeIn:Landroid/view/animation/Animation;

    .line 56
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mMaskFadeOut:Landroid/view/animation/Animation;

    .line 57
    return-void
.end method


# virtual methods
.method protected dirty(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, ret:Z
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 68
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 69
    const/4 v0, 0x1

    .line 74
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/AlbumViewController;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 70
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected doUpdate()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-nez v1, :cond_0

    move v5, v0

    .line 94
    :goto_0
    return v5

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v1}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v5, v0

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    const/4 v8, 0x0

    .line 88
    .local v8, bm:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    const-string v1, "display_album"

    invoke-static {v0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-wide v1, v1, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mAlbumId:J

    iget-object v3, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v3, v3, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v4, v4, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    iget v6, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumWidth:I

    iget v7, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHeight:I

    invoke-static/range {v0 .. v7}, Lcom/miui/player/meta/AlbumManager;->getDisplayedAlbum(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 93
    :cond_2
    invoke-virtual {p0, v8}, Lcom/miui/player/ui/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getAlbumHeight()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHeight:I

    return v0
.end method

.method public getAlbumWidth()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumWidth:I

    return v0
.end method

.method public getCurrentAlbum()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/AlbumViewController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/AlbumViewController;->update()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setAlbumChangedListener(Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumChangedListener:Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;

    .line 136
    return-void
.end method

.method setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bm"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 112
    if-eqz p1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageSwitcher;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mMaskFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumChangedListener:Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumChangedListener:Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;->onAlbumChanged(Landroid/graphics/Bitmap;)V

    .line 131
    :cond_1
    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v1, v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mMaskFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 61
    return-void
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 100
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 105
    return-void
.end method
