.class public Lcom/android/phone/MiuiEmergencyDialer;
.super Lcom/android/phone/EmergencyDialer;
.source "MiuiEmergencyDialer.java"


# instance fields
.field private mLockScreenImageView:Landroid/widget/ImageView;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;-><init>()V

    return-void
.end method


# virtual methods
.method protected addLockScreenWallpaper()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 62
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLockScreenImageView:Landroid/widget/ImageView;

    .line 63
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    .line 64
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLockScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLockScreenImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLockScreenImageView:Landroid/widget/ImageView;

    const v3, 0x7f020032

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLockScreenImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 74
    return-void

    .line 66
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f04001a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070065

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->finish()V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/EmergencyDialer;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 28
    .local v0, win:Landroid/view/Window;
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 30
    invoke-super {p0, p1}, Lcom/android/phone/EmergencyDialer;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->addLockScreenWallpaper()V

    .line 35
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiEmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/MiuiEmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/phone/EmergencyDialer;->onResume()V

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/MiuiEmergencyDialer;->updateLockScreenWallpaper()V

    .line 44
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/phone/EmergencyDialer;->onStop()V

    .line 51
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 52
    return-void
.end method

.method protected updateLockScreenWallpaper()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/MiuiEmergencyDialer;->mLockScreenImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method
