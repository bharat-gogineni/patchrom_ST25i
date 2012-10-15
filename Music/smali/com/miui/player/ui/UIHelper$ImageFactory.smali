.class Lcom/miui/player/ui/UIHelper$ImageFactory;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/UIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsFirst:Z

.field private final mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "context"
    .parameter "params"
    .parameter "scaleType"
    .parameter "exclude"

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mIsFirst:Z

    .line 538
    iput-object p1, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mContext:Landroid/content/Context;

    .line 539
    iput-object p2, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    iput-object p3, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 541
    iput-object p4, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 542
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 2

    .prologue
    .line 546
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 547
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 548
    iget-object v1, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-boolean v1, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mIsFirst:Z

    if-eqz v1, :cond_0

    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mIsFirst:Z

    .line 551
    iget-object v1, p0, Lcom/miui/player/ui/UIHelper$ImageFactory;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    :cond_0
    return-object v0
.end method
