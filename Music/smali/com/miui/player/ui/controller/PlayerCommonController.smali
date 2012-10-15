.class public Lcom/miui/player/ui/controller/PlayerCommonController;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;,
        Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnForwardRepeatingClick;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnPrevClickListener;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnChannelClickListener;
    }
.end annotation


# instance fields
.field private final mChannelButton:Landroid/widget/ImageView;

.field private final mCommonBar:Landroid/view/View;

.field private final mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

.field private final mPauseButton:Landroid/widget/ImageView;

.field private final mPauseResId:I

.field private final mPlayResId:I

.field private final mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

.field private final mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;IIIII)V
    .locals 5
    .parameter "container"
    .parameter "repeatClickCallback"
    .parameter "playId"
    .parameter "pauseId"
    .parameter "prevId"
    .parameter "nextId"
    .parameter "channelId"

    .prologue
    const-wide/16 v3, 0x104

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    .line 30
    iput p3, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPlayResId:I

    .line 31
    iput p4, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseResId:I

    .line 32
    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mChannelButton:Landroid/widget/ImageView;

    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mChannelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mChannelButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnChannelClickListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/PlayerCommonController$OnChannelClickListener;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/RepeatingImageButton;

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    invoke-virtual {v0, p5}, Lcom/miui/player/ui/view/RepeatingImageButton;->setImageResource(I)V

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnPrevClickListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/PlayerCommonController$OnPrevClickListener;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;

    iget-object v2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/player/ui/view/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;J)V

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/RepeatingImageButton;

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    .line 45
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    invoke-virtual {v0, p6}, Lcom/miui/player/ui/view/RepeatingImageButton;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnForwardRepeatingClick;

    iget-object v2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/controller/PlayerCommonController$OnForwardRepeatingClick;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/player/ui/view/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;J)V

    .line 50
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/controller/PlayerCommonController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    return-object v0
.end method

.method public static scanBackward(IJLcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"
    .parameter "scanInfo"

    .prologue
    .line 220
    sget-object v4, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 221
    .local v4, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v4, :cond_0

    .line 259
    :goto_0
    return-void

    .line 226
    :cond_0
    if-nez p0, :cond_1

    .line 227
    :try_start_0
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 228
    const-wide/16 v5, 0x0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 229
    const/4 v5, 0x0

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    goto :goto_0

    .line 257
    :catch_0
    move-exception v5

    goto :goto_0

    .line 231
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    .line 232
    const-wide/16 v5, 0x1388

    cmp-long v5, p1, v5

    if-gez v5, :cond_5

    .line 234
    const-wide/16 v5, 0xa

    mul-long/2addr p1, v5

    .line 239
    :goto_1
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    sub-long v2, v5, p1

    .line 240
    .local v2, newpos:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 242
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->prev()V

    .line 243
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 244
    .local v0, duration:J
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    add-long/2addr v5, v0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 245
    add-long/2addr v2, v0

    .line 247
    .end local v0           #duration:J
    :cond_2
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p0, :cond_4

    .line 248
    :cond_3
    invoke-interface {v4, v2, v3}, Lcom/miui/player/service/IMediaPlaybackService;->seek(J)J

    .line 249
    iput-wide p1, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 251
    :cond_4
    if-ltz p0, :cond_6

    .line 252
    iput-wide v2, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J

    goto :goto_0

    .line 237
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v5, 0xc350

    const-wide/16 v7, 0x1388

    sub-long v7, p1, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p1, v5, v7

    goto :goto_1

    .line 254
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v5, -0x1

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static scanForward(IJLcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"
    .parameter "scanInfo"

    .prologue
    const-wide/16 v7, 0x1388

    .line 262
    sget-object v4, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 263
    .local v4, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v4, :cond_0

    .line 301
    :goto_0
    return-void

    .line 268
    :cond_0
    if-nez p0, :cond_1

    .line 269
    :try_start_0
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 270
    const-wide/16 v5, 0x0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 271
    const/4 v5, 0x0

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    goto :goto_0

    .line 299
    :catch_0
    move-exception v5

    goto :goto_0

    .line 273
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    .line 274
    cmp-long v5, p1, v7

    if-gez v5, :cond_5

    .line 276
    const-wide/16 v5, 0xa

    mul-long/2addr p1, v5

    .line 281
    :goto_1
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    add-long v2, v5, p1

    .line 282
    .local v2, newpos:J
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 283
    .local v0, duration:J
    cmp-long v5, v2, v0

    if-ltz v5, :cond_2

    .line 285
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->next()V

    .line 286
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    sub-long/2addr v5, v0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 287
    sub-long/2addr v2, v0

    .line 289
    :cond_2
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p0, :cond_4

    .line 290
    :cond_3
    invoke-interface {v4, v2, v3}, Lcom/miui/player/service/IMediaPlaybackService;->seek(J)J

    .line 291
    iput-wide p1, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 293
    :cond_4
    if-ltz p0, :cond_6

    .line 294
    iput-wide v2, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J

    goto :goto_0

    .line 279
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v5, 0xc350

    sub-long v7, p1, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p1, v5, v7

    goto :goto_1

    .line 296
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v5, -0x1

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public refresh()V
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 62
    .local v0, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :goto_0
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getChannelName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/view/RepeatingImageButton;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mChannelButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPlayResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/view/RepeatingImageButton;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mChannelButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refreshFavorte()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public refreshFavorte()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mChannelButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/service/ServiceHelper;->isCurrentFavorited(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 109
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    return-void
.end method
