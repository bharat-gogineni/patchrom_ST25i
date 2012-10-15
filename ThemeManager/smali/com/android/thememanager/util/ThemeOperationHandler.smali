.class public Lcom/android/thememanager/util/ThemeOperationHandler;
.super Lmiui/app/resourcebrowser/view/ResourceOperationHandler;
.source "ThemeOperationHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/util/ThemeResourceState;)V
    .locals 0
    .parameter "activity"
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;-><init>(Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lmiui/app/resourcebrowser/view/ResourceState;)V

    .line 14
    return-void
.end method


# virtual methods
.method public handleApplyEvent()V
    .locals 2

    .prologue
    .line 18
    iget-object v1, p0, Lcom/android/thememanager/util/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/thememanager/util/ThemeOperationHandler;->mResource:Lmiui/app/resourcebrowser/view/ResourceState;

    check-cast v0, Lcom/android/thememanager/util/ThemeResourceState;

    invoke-static {v1, v0}, Lcom/android/thememanager/util/ThemeApplyUtils;->doApplyResource(Landroid/app/Activity;Lcom/android/thememanager/util/ThemeResourceState;)V

    .line 19
    invoke-super {p0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->handleApplyEvent()V

    .line 20
    return-void
.end method

.method public onActivitResultEvent(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 24
    const/16 v0, 0x7001

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7002

    if-ne p1, v0, :cond_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/util/ThemeOperationHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/thememanager/util/WallpaperUtils;->dealCropWallpaperResult(Landroid/content/Context;II)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivitResultEvent(IILandroid/content/Intent;)V

    goto :goto_0
.end method
