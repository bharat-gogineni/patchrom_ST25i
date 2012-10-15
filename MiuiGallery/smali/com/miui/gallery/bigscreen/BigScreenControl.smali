.class public Lcom/miui/gallery/bigscreen/BigScreenControl;
.super Ljava/lang/Object;
.source "BigScreenControl.java"

# interfaces
.implements Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;
    }
.end annotation


# static fields
.field private static mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;


# instance fields
.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mBottomBar:Landroid/view/View;

.field private mControlActive:Z

.field private mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mCurrentPhoto:Ljava/lang/String;

.field private mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

.field private mInSlideShow:Z

.field private mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

.field private mSlideShowFadeIn:Landroid/view/animation/Animation;

.field private mSlideShowFadeOut:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;)V
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mControlActive:Z

    .line 47
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 48
    iput-object p2, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->initBigScreen()V

    .line 50
    return-void
.end method

.method private initBigScreen()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/bigscreen/ConnectControl;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    .line 87
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    const v2, 0x7f0b0074

    invoke-interface {v1, v2}, Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;->findViewForBigScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->open(Landroid/view/View;Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V

    .line 93
    :goto_0
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->getBarControl()Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/bigscreen/DeviceBarControl;

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    const v1, 0x7f0b0072

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;->findViewForBigScreen(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mBottomBar:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f050011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mSlideShowFadeIn:Landroid/view/animation/Animation;

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f050012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mSlideShowFadeOut:Landroid/view/animation/Animation;

    .line 97
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/bigscreen/ConnectControl;->reuse(Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V

    goto :goto_0
.end method


# virtual methods
.method public bigScreenClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->setVisibility(IZ)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->getConnectState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->switch2Local(I)V

    .line 179
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->setVisibility(IZ)V

    goto :goto_0
.end method

.method public disconWithDelay()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "BigScreenControl"

    const-string v1, "disconWithDelay"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->exitSlideShow(Z)V

    .line 134
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->disconWithDelay()V

    .line 135
    return-void
.end method

.method public dismissControls()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->setVisibility(IZ)V

    .line 185
    :cond_0
    return-void
.end method

.method public enterSlideShow(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 139
    iget-boolean v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mInSlideShow:Z

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/miui/gallery/bigscreen/BigScreenControl;->showType(ZI)I

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    const v2, 0x7f0b0075

    invoke-interface {v1, v2}, Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;->findViewForBigScreen(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, bigSlideShow:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mSlideShowFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    iput-boolean v3, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mInSlideShow:Z

    goto :goto_0
.end method

.method public exitSlideShow(Z)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mCurrentPhoto:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->exitSlideShow(ZLjava/lang/String;)V

    .line 166
    return-void
.end method

.method public exitSlideShow(ZLjava/lang/String;)V
    .locals 4
    .parameter "animation"
    .parameter "currentPhoto"

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-boolean v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mInSlideShow:Z

    if-nez v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/miui/gallery/bigscreen/BigScreenControl;->showType(ZI)I

    .line 155
    invoke-virtual {p0, p2}, Lcom/miui/gallery/bigscreen/BigScreenControl;->updateCurrentPhoto(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    const v2, 0x7f0b0075

    invoke-interface {v1, v2}, Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;->findViewForBigScreen(I)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, bigSlideShow:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    if-eqz p1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mSlideShowFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    :cond_1
    iput-boolean v3, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mInSlideShow:Z

    goto :goto_0
.end method

.method public getDeviceBarControl()Lcom/miui/gallery/bigscreen/DeviceBarControl;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    return-object v0
.end method

.method public hasAirkanDevice()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->hasAirkanDevice()Z

    move-result v0

    return v0
.end method

.method public refreshDevices()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->refreshDevices()V

    .line 123
    return-void
.end method

.method public refreshHidingMessage()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    invoke-interface {v0}, Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;->refreshHidingMessage()V

    .line 101
    return-void
.end method

.method public setControlActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mBottomBar:Landroid/view/View;

    const v2, 0x7f0b0091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, bigScreen:Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 76
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_0
    iput-boolean p1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mControlActive:Z

    .line 82
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 83
    return-void

    .line 78
    :cond_0
    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/bigscreen/BigScreenControl;->exitSlideShow(Z)V

    goto :goto_0
.end method

.method public showBigScreenButton(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    const v1, 0x7f0b0091

    invoke-interface {v0, v1}, Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;->findViewForBigScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->refreshHidingMessage()V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mListener:Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;

    invoke-interface {v0}, Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;->showBottomBar()V

    .line 60
    :cond_0
    return-void

    .line 53
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0
    .parameter "toast"

    .prologue
    .line 71
    return-void
.end method

.method public showType(ZI)I
    .locals 1
    .parameter "isSlideShow"
    .parameter "slideShowType"

    .prologue
    .line 126
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/bigscreen/ConnectControl;->showType(ZI)I

    move-result v0

    return v0
.end method

.method public toggleActive()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mControlActive:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->setControlActive(Z)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->setControlActive(Z)V

    goto :goto_0
.end method

.method public updateCurrentFolder(Lcom/miui/gallery/data/MediaSet;)V
    .locals 1
    .parameter "mediaSet"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mCurMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 113
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->updateCurrentFolder(Lcom/miui/gallery/data/MediaSet;)V

    .line 114
    return-void
.end method

.method public updateCurrentPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "curPhoto"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mCurrentPhoto:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/miui/gallery/bigscreen/BigScreenControl;->mConnectControl:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/bigscreen/ConnectControl;->updateCurrentPhoto(Ljava/lang/String;)V

    .line 119
    return-void
.end method
