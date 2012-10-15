.class public Lcom/miui/player/ui/controller/MusicBrowserController;
.super Ljava/lang/Object;
.source "MusicBrowserController.java"


# instance fields
.field final CURRENT_DEFAULT_ALBUM_HEIGHT:I

.field final CURRENT_DEFAULT_ALBUM_WIDTH:I

.field final mActivity:Landroid/app/Activity;

.field private final mAlbumMask:Landroid/view/View;

.field private final mAlbumSwitcher:Landroid/widget/ImageSwitcher;

.field private final mDefaultAlbum:Landroid/graphics/drawable/Drawable;

.field private final mFavoriteIcon:Landroid/widget/ImageView;

.field private final mFrame:Landroid/view/View;

.field private final mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mSecondaryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 10
    .parameter "a"

    .prologue
    const/4 v9, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    .line 48
    const v0, 0x7f0c006d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    .line 49
    const v0, 0x7f0c0011

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPrimaryText:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0c0012

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mSecondaryText:Landroid/widget/TextView;

    .line 51
    new-instance v0, Lcom/miui/player/ui/controller/PlayerCommonController;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    const/4 v2, 0x0

    const v3, 0x7f02006b

    const v4, 0x7f020068

    const v5, 0x7f02006e

    const v6, 0x7f020065

    const v7, 0x7f020060

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/ui/controller/PlayerCommonController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;IIIII)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    .line 58
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumMask:Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumSwitcher:Landroid/widget/ImageSwitcher;

    .line 61
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumSwitcher:Landroid/widget/ImageSwitcher;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v9, v9, v1, v2}, Lcom/miui/player/ui/UIHelper;->makeImageFactory(Landroid/content/Context;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)Landroid/widget/ViewSwitcher$ViewFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumSwitcher:Landroid/widget/ImageSwitcher;

    const v1, 0x7f040002

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumSwitcher:Landroid/widget/ImageSwitcher;

    const v1, 0x7f040003

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->CURRENT_DEFAULT_ALBUM_HEIGHT:I

    .line 69
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->CURRENT_DEFAULT_ALBUM_WIDTH:I

    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    .local v8, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->CURRENT_DEFAULT_ALBUM_HEIGHT:I

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 73
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    new-instance v1, Lcom/miui/player/ui/controller/MusicBrowserController$1;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/MusicBrowserController$1;-><init>(Lcom/miui/player/ui/controller/MusicBrowserController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFrame:Landroid/view/View;

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFavoriteIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/player/ui/controller/MusicBrowserController$2;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/MusicBrowserController$2;-><init>(Lcom/miui/player/ui/controller/MusicBrowserController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method private refreshPlayingMeteInfo(Z)V
    .locals 6
    .parameter "updateAlbum"

    .prologue
    .line 136
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 137
    .local v2, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshFavorte()V

    .line 145
    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, tr:Ljava/lang/String;
    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, al:Ljava/lang/String;
    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, ar:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mSecondaryText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v1, v0}, Lcom/miui/player/ui/UIHelper;->getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    if-eqz p1, :cond_1

    .line 153
    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/miui/player/ui/controller/MusicBrowserController;->loadAlbum(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0           #al:Ljava/lang/String;
    .end local v1           #ar:Ljava/lang/String;
    .end local v3           #tr:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v4}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method loadAlbum(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .parameter "al"
    .parameter "ar"
    .parameter "albumId"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    iget v6, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->CURRENT_DEFAULT_ALBUM_WIDTH:I

    iget v7, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->CURRENT_DEFAULT_ALBUM_HEIGHT:I

    move-wide v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/player/meta/AlbumManager;->getDisplayedAlbum(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 177
    .local v8, bm:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 178
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumSwitcher:Landroid/widget/ImageSwitcher;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 183
    .local v9, maskFadeIn:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumMask:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    .end local v9           #maskFadeIn:Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 193
    .local v10, maskFadeOut:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumMask:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mAlbumMask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshFavorte()V
    .locals 6

    .prologue
    .line 166
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 167
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v3

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentOnlineId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v0

    .line 170
    .local v0, favorite:Z
    iget-object v3, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v2, 0x7f020062

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    .end local v0           #favorite:Z
    :cond_0
    return-void

    .line 170
    .restart local v0       #favorite:Z
    :cond_1
    const v2, 0x7f020061

    goto :goto_0
.end method

.method public refreshMetaInfo(Z)V
    .locals 4
    .parameter "updateAlbum"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 123
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isMusicLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getChannelName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-direct {p0, p1}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshPlayingMeteInfo(Z)V

    .line 133
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/PlayerCommonController;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPrimaryText:Landroid/widget/TextView;

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshTrackCount()V

    goto :goto_1
.end method

.method public refreshPlayState()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    .line 163
    return-void
.end method

.method public refreshTrackCount()V
    .locals 7

    .prologue
    .line 114
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isMusicLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/miui/player/provider/MediaProviderHelper;->getTrackCount(Landroid/content/Context;J)I

    move-result v0

    .line 116
    .local v0, count:I
    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, hint:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/ui/controller/MusicBrowserController;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0           #count:I
    .end local v1           #hint:Ljava/lang/String;
    :cond_0
    return-void
.end method
