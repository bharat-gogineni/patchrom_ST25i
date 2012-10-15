.class public Lcom/miui/gallery/bigscreen/DeviceBarWidget;
.super Landroid/widget/LinearLayout;
.source "DeviceBarWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;
    }
.end annotation


# static fields
.field public static MOBILE_NAME:Ljava/lang/String;


# instance fields
.field private mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

.field private mBarListener:Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;

.field private mContext:Landroid/content/Context;

.field private mDeviceBarFadeIn:Landroid/view/animation/Animation;

.field private mDeviceBarFadeOut:Landroid/view/animation/Animation;

.field private mDeviceContainer:Landroid/widget/LinearLayout;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeIn:Landroid/view/animation/Animation;

    .line 33
    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeOut:Landroid/view/animation/Animation;

    .line 44
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    .line 47
    const v0, 0x7f050004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeIn:Landroid/view/animation/Animation;

    .line 48
    const v0, 0x7f050005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeOut:Landroid/view/animation/Animation;

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->initDevicesBar()V

    .line 50
    return-void
.end method

.method private addNewDevice(Ljava/lang/String;II)Lcom/miui/gallery/bigscreen/DeviceItem;
    .locals 5
    .parameter "deviceName"
    .parameter "normalId"
    .parameter "activeId"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, already:Z
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 91
    :goto_0
    return-object v1

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 88
    .local v1, newItem:Lcom/miui/gallery/bigscreen/DeviceItem;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/bigscreen/DeviceItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/gallery/bigscreen/DeviceItem;->setNameAndPicture(Ljava/lang/String;II)V

    .line 90
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initDevicesBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000a

    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, deviceGallery:Landroid/view/View;
    const v2, 0x7f0b001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    .local v1, scrollView:Landroid/view/ViewGroup;
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceContainer:Landroid/widget/LinearLayout;

    .line 61
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->MOBILE_NAME:Ljava/lang/String;

    .line 63
    sget-object v2, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->MOBILE_NAME:Ljava/lang/String;

    const v3, 0x7f020012

    const v4, 0x7f020013

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->addNewDevice(Ljava/lang/String;II)Lcom/miui/gallery/bigscreen/DeviceItem;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    invoke-virtual {v2}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    iput-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v1, v5, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 68
    invoke-virtual {p0, v0, v5}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->addView(Landroid/view/View;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public addNewDevice(Ljava/lang/String;)V
    .locals 2
    .parameter "deviceName"

    .prologue
    .line 77
    const v0, 0x7f02001a

    const v1, 0x7f02001b

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->addNewDevice(Ljava/lang/String;II)Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 78
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 238
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "deviceName"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deviceBarFadeIn()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 210
    return-void
.end method

.method public deviceBarFadeOut()V
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->setAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceBarFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 216
    return-void
.end method

.method public hasAirkanDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mBarListener:Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;

    if-nez v1, :cond_0

    .line 131
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 100
    check-cast v0, Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 101
    .local v0, thisItem:Lcom/miui/gallery/bigscreen/DeviceItem;
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    if-ne v1, v2, :cond_1

    .line 103
    const-string v1, "grap_device_bar"

    const-string v2, "rep-click on phone"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    if-ne v1, v0, :cond_2

    .line 111
    const-string v1, "grap_device_bar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click same device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    .line 119
    :goto_1
    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const-string v1, "grap_device_bar"

    const-string v2, "user release device, back to phone"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 130
    :goto_2
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mBarListener:Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;->onDeviceClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    .line 116
    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    goto :goto_1

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    iget-object v2, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    if-eq v1, v2, :cond_4

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    iput-object v1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    goto :goto_2
.end method

.method public refreshDevices(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Z

    .line 136
    .local v0, findInOldDeviceList:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 137
    const/4 v5, 0x0

    aput-boolean v5, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 141
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, item:Ljava/lang/String;
    sget-object v5, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->MOBILE_NAME:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_2
    const/4 v4, 0x1

    .line 149
    .local v4, shouldRemoveDevice:Z
    const/4 v3, 0x0

    .local v3, newIndex:I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 150
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    const/4 v5, 0x1

    aput-boolean v5, v0, v3

    .line 152
    const/4 v4, 0x0

    .line 157
    :cond_3
    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {p0, v2}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->removeDevice(Ljava/lang/String;)Z

    goto :goto_2

    .line 149
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 164
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #newIndex:I
    .end local v4           #shouldRemoveDevice:Z
    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 165
    aget-boolean v5, v0, v1

    if-nez v5, :cond_6

    .line 166
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->addNewDevice(Ljava/lang/String;)V

    .line 164
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 170
    :cond_7
    return-void
.end method

.method public removeActive()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    if-nez v0, :cond_0

    .line 221
    const-string v0, "grap_device_bar"

    const-string v1, "Why null activeItem"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "grap_device_bar"

    const-string v1, "~~~~remove the active for device"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "grap_device_bar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the current thread is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    goto :goto_0
.end method

.method public removeDevice(Ljava/lang/String;)Z
    .locals 6
    .parameter "deviceName"

    .prologue
    .line 174
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 175
    .local v4, viewCount:I
    const/4 v0, 0x0

    .line 176
    .local v0, index:I
    const/4 v2, 0x0

    .line 177
    .local v2, ret:Z
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 178
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, item:Landroid/view/View;
    move-object v3, v1

    .line 180
    check-cast v3, Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 181
    .local v3, thisItem:Lcom/miui/gallery/bigscreen/DeviceItem;
    invoke-virtual {v3}, Lcom/miui/gallery/bigscreen/DeviceItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 182
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 183
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    .end local v1           #item:Landroid/view/View;
    .end local v3           #thisItem:Lcom/miui/gallery/bigscreen/DeviceItem;
    :cond_0
    if-ge v0, v4, :cond_2

    .line 191
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    invoke-virtual {v5}, Lcom/miui/gallery/bigscreen/DeviceItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    iput-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mActiveItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    .line 193
    iget-object v5, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mMobileItem:Lcom/miui/gallery/bigscreen/DeviceItem;

    invoke-virtual {v5}, Lcom/miui/gallery/bigscreen/DeviceItem;->toggleActive()V

    .line 194
    const/4 v2, 0x1

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->invalidate()V

    .line 199
    :cond_2
    return v2

    .line 177
    .restart local v1       #item:Landroid/view/View;
    .restart local v3       #thisItem:Lcom/miui/gallery/bigscreen/DeviceItem;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setupBarListener(Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;)V
    .locals 0
    .parameter "barListener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceBarWidget;->mBarListener:Lcom/miui/gallery/bigscreen/DeviceBarWidget$BarListener;

    .line 54
    return-void
.end method
