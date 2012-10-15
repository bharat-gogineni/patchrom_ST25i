.class public abstract Lcom/miui/gallery/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field private mIsActive:Z

.field private mPageLayoutRoot:Landroid/view/ViewGroup;

.field private mPlugged:Z

.field protected mReceivedResults:Lcom/miui/gallery/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mDestroyed:Z

    .line 75
    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mPlugged:Z

    .line 76
    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mIsActive:Z

    .line 79
    return-void
.end method

.method private activatePage(I)V
    .locals 9
    .parameter "pageLayoutIdInMain"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 128
    const v4, 0x7f0b002d

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/ActivityState;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 129
    .local v3, pageLayoutContainer:Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 131
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 132
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 133
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 136
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    instance-of v4, p0, Lcom/miui/gallery/app/SlideshowPage;

    if-nez v4, :cond_0

    .line 139
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v5

    :goto_2
    const-string v7, "there should be children for a page"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    move v4, v6

    .line 129
    goto :goto_0

    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_2
    move v4, v6

    .line 139
    goto :goto_2

    .line 143
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 146
    .end local v0           #child:Landroid/view/View;
    :cond_4
    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setContentPane(Lcom/miui/gallery/ui/GLView;I)V
    .locals 1
    .parameter "content"
    .parameter "pageLayoutIdInMain"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/GLRoot;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 150
    invoke-direct {p0, p2}, Lcom/miui/gallery/app/ActivityState;->activatePage(I)V

    .line 151
    return-void
.end method


# virtual methods
.method protected findViewInPage(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "should not be null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method protected getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected inflatePageView(II)V
    .locals 4
    .parameter "viewGroupId"
    .parameter "layoutId"

    .prologue
    const v3, 0x7f0b0003

    .line 157
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/ActivityState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 158
    .local v0, page:Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    .line 159
    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 162
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mPageLayoutRoot:Landroid/view/ViewGroup;

    .line 164
    :cond_0
    return-void
.end method

.method initialize(Lcom/miui/gallery/app/GalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 168
    iput-object p2, p0, Lcom/miui/gallery/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 169
    return-void
.end method

.method protected isActive()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mIsActive:Z

    return v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 177
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 195
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mDestroyed:Z

    .line 289
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mIsActive:Z

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mIsActive:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/miui/gallery/app/ActivityState;->mIsActive:Z

    .line 258
    instance-of v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/miui/gallery/cloud/CloudAlbumPage;

    if-eqz v1, :cond_1

    .line 259
    .local v0, showCloudIcon:Z
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/ActivityState;->showCloudIcon(Z)V

    .line 260
    return-void

    .line 258
    .end local v0           #showCloudIcon:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 189
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 192
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 275
    return-void
.end method

.method resume()V
    .locals 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 215
    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 216
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 217
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 218
    iget v6, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 219
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 223
    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v6}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/app/StateManager;->getStateCount()I

    move-result v4

    .line 224
    .local v4, stateCount:I
    if-ne v4, v9, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v0, v6, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 227
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 230
    .end local v4           #stateCount:I
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 232
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 233
    .local v5, win:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 235
    .local v3, params:Landroid/view/WindowManager$LayoutParams;
    iget v6, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    .line 236
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 241
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->setScreenFlag()V

    .line 242
    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/ActivityState;->setScreenOnFlags(Landroid/view/WindowManager$LayoutParams;)V

    .line 243
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 245
    iget-object v2, p0, Lcom/miui/gallery/app/ActivityState;->mReceivedResults:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    .line 246
    .local v2, entry:Lcom/miui/gallery/app/ActivityState$ResultEntry;
    if-eqz v2, :cond_1

    .line 247
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/gallery/app/ActivityState;->mReceivedResults:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    .line 248
    iget v6, v2, Lcom/miui/gallery/app/ActivityState$ResultEntry;->requestCode:I

    iget v7, v2, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v8, v2, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v6, v7, v8}, Lcom/miui/gallery/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 252
    return-void

    .line 221
    .end local v2           #entry:Lcom/miui/gallery/app/ActivityState$ResultEntry;
    .end local v3           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #win:Landroid/view/Window;
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v4       #stateCount:I
    :cond_3
    move v6, v8

    .line 224
    goto :goto_1

    .line 238
    .end local v4           #stateCount:I
    .restart local v3       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v5       #win:Landroid/view/Window;
    :cond_4
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_2
.end method

.method protected setContentPane(Lcom/miui/gallery/ui/GLView;)V
    .locals 4
    .parameter "content"

    .prologue
    const/4 v3, 0x0

    .line 82
    const/4 v0, -0x1

    .line 84
    .local v0, pageLayoutIdInMain:I
    instance-of v1, p0, Lcom/miui/gallery/app/HomePage;

    if-eqz v1, :cond_0

    .line 85
    const v0, 0x7f0b002e

    .line 105
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/app/ActivityState;->setContentPane(Lcom/miui/gallery/ui/GLView;I)V

    .line 106
    return-void

    .line 86
    :cond_0
    instance-of v1, p0, Lcom/miui/gallery/app/AlbumSetPage;

    if-eqz v1, :cond_1

    .line 87
    const v0, 0x7f0b002f

    goto :goto_0

    .line 88
    :cond_1
    instance-of v1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetPage;

    if-eqz v1, :cond_2

    .line 89
    const v0, 0x7f0b0034

    goto :goto_0

    .line 90
    :cond_2
    instance-of v1, p0, Lcom/miui/gallery/app/AlbumPage;

    if-eqz v1, :cond_3

    .line 91
    const v0, 0x7f0b0030

    goto :goto_0

    .line 92
    :cond_3
    instance-of v1, p0, Lcom/miui/gallery/cloud/CloudAlbumPage;

    if-eqz v1, :cond_4

    .line 93
    const v0, 0x7f0b0030

    goto :goto_0

    .line 94
    :cond_4
    instance-of v1, p0, Lcom/miui/gallery/app/PhotoPage;

    if-eqz v1, :cond_5

    .line 95
    const v0, 0x7f0b0031

    goto :goto_0

    .line 96
    :cond_5
    instance-of v1, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;

    if-eqz v1, :cond_6

    .line 97
    const v0, 0x7f0b0031

    goto :goto_0

    .line 98
    :cond_6
    instance-of v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;

    if-eqz v1, :cond_7

    .line 99
    const v0, 0x7f0b0033

    goto :goto_0

    .line 100
    :cond_7
    instance-of v1, p0, Lcom/miui/gallery/app/SlideshowPage;

    if-eqz v1, :cond_8

    .line 101
    const v0, 0x7f0b0032

    goto :goto_0

    .line 103
    :cond_8
    const-string v1, "Every page should have a corresponding layout in main.xml"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setScreenFlag()V
    .locals 5

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, screenRangeFlag:I
    const/4 v1, 0x1

    .line 111
    .local v1, screenOrientationFlag:I
    const/16 v0, 0x400

    .line 113
    .local v0, fullScreenFlag:I
    instance-of v3, p0, Lcom/miui/gallery/app/PhotoPage;

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/miui/gallery/app/SlideshowPage;

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;

    if-eqz v3, :cond_1

    .line 114
    :cond_0
    or-int/lit16 v2, v2, 0x400

    .line 117
    const/4 v1, -0x1

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/ActivityState;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->setFlags(II)V

    .line 124
    iget-object v3, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 125
    return-void

    .line 119
    :cond_1
    and-int/lit16 v2, v2, -0x401

    .line 120
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setScreenOnFlags(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 199
    iget v0, p0, Lcom/miui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 200
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/app/ActivityState;->mResult:Lcom/miui/gallery/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/miui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected setViewLayout(Landroid/widget/EditableListView;Z)V
    .locals 4
    .parameter "view"
    .parameter "isSplitActionBar"

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v2, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 339
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v1

    .line 341
    .local v1, barHeight:I
    if-eqz p2, :cond_1

    .line 342
    invoke-static {p1, v3, v3, v3, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 347
    .end local v1           #barHeight:I
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v1       #barHeight:I
    :cond_1
    neg-int v2, v1

    invoke-static {p1, v3, v3, v3, v2}, Lcom/miui/gallery/ui/ActionModeHandler;->addLayoutMargins(Landroid/view/View;IIII)Z

    goto :goto_0
.end method

.method protected setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V
    .locals 7
    .parameter "view"
    .parameter "isSplitActionBar"

    .prologue
    .line 323
    iget-object v3, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 324
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v1

    .line 326
    .local v1, barHeight:I
    invoke-virtual {p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->bounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 327
    .local v2, rect:Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    .line 328
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/miui/gallery/ui/SlotViewWithTitle;->layout(IIII)V

    .line 333
    .end local v1           #barHeight:I
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 330
    .restart local v1       #barHeight:I
    .restart local v2       #rect:Landroid/graphics/Rect;
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/miui/gallery/ui/SlotViewWithTitle;->layout(IIII)V

    goto :goto_0
.end method

.method public showCloudIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/miui/gallery/app/ActivityState;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 356
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/GalleryActionBar;->showCloudIcon(Z)V

    .line 359
    :cond_0
    return-void
.end method
