.class public Lcom/miui/gallery/bigscreen/DeviceItem;
.super Landroid/widget/LinearLayout;
.source "DeviceItem.java"


# instance fields
.field private mActive:Z

.field private mActiveId:I

.field private mDeviceName:Ljava/lang/String;

.field private mImage:Landroid/widget/ImageView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNormalId:I

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mImage:Landroid/widget/ImageView;

    .line 18
    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mText:Landroid/widget/TextView;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mActive:Z

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mActive:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mText:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/bigscreen/DeviceItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mImage:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/bigscreen/DeviceItem$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/bigscreen/DeviceItem$1;-><init>(Lcom/miui/gallery/bigscreen/DeviceItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public setNameAndPicture(Ljava/lang/String;II)V
    .locals 2
    .parameter "deviceName"
    .parameter "normalId"
    .parameter "activeId"

    .prologue
    .line 48
    iput p2, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mNormalId:I

    .line 49
    iput p3, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mActiveId:I

    .line 50
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mDeviceName:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mNormalId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    return-void
.end method

.method public toggleActive()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mActive:Z

    .line 67
    iget-boolean v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mActive:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mActiveId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :goto_1
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/gallery/bigscreen/DeviceItem;->mNormalId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
