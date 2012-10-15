.class public Lcom/miui/gallery/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;,
        Lcom/miui/gallery/app/GalleryActionBar$ActionItem;,
        Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field private static final sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mAdapter:Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;

.field private mCloudIcon:Landroid/widget/ImageView;

.field private mClusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCountText:Landroid/widget/TextView;

.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 72
    const/4 v0, 0x5

    new-array v11, v0, [Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0d00a8

    const v5, 0x7f0d0062

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0d00aa

    const v9, 0x7f0d007e

    const v10, 0x7f0d005e

    move v5, v13

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0d00a9

    const v9, 0x7f0d007d

    const v10, 0x7f0d005f

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    const/4 v0, 0x3

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x20

    const v8, 0x7f0d00ab

    const v9, 0x7f0d0061

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v0

    new-instance v4, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x8

    const v8, 0x7f0d00ac

    const v9, 0x7f0d0060

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v13

    sput-object v11, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mAdapter:Lcom/miui/gallery/app/GalleryActionBar$ClusterAdapter;

    move-object v0, p1

    .line 140
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 141
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 142
    iput-object p1, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContext:Landroid/content/Context;

    const v1, 0x7f040032

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCurrentIndex:I

    .line 150
    return-void
.end method

.method static synthetic access$000()[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static getHeight(Landroid/app/Activity;)I
    .locals 2
    .parameter "activity"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 343
    iget v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mClusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mClusterRunner:Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 351
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 348
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public setClusterItemEnabled(IZ)V
    .locals 5
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 176
    sget-object v0, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 177
    .local v2, item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 178
    iput-boolean p2, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 182
    .end local v2           #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 176
    .restart local v2       #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setClusterItemVisibility(IZ)V
    .locals 5
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 185
    sget-object v0, Lcom/miui/gallery/app/GalleryActionBar;->sClusterItems:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;

    .local v0, arr$:[Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 186
    .local v2, item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 187
    iput-boolean p2, v2, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->visible:Z

    .line 191
    .end local v2           #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 185
    .restart local v2       #item:Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCountText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v0, "GalleryActionBar"

    const-string v1, "setCountText failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .parameter "options"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 160
    return-void
.end method

.method public setHorizontalVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    const v3, 0x7f0b0099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, hc:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    const v3, 0x7f0b009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, vc:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPaddingLeft(I)V
    .locals 4
    .parameter "leftPadding"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    .line 244
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 245
    return-void
.end method

.method public setStyle(I)V
    .locals 11
    .parameter "style"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 248
    iget-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    const v8, 0x7f0b0099

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 249
    .local v3, hc:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    const v8, 0x7f0b009d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 250
    .local v6, vc:Landroid/view/View;
    const/4 v0, 0x0

    .line 253
    .local v0, child:Landroid/view/View;
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    .line 254
    move-object v0, v3

    .line 255
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mContainer:Landroid/view/View;

    const v8, 0x7f0b009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCloudIcon:Landroid/widget/ImageView;

    .line 265
    if-eqz v0, :cond_3

    .line 266
    const v7, 0x7f0b009b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    .line 267
    iget-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    instance-of v7, v7, Lmiui/widget/GradientTextView;

    if-eqz v7, :cond_1

    .line 268
    iget-object v2, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCountText:Landroid/widget/TextView;

    check-cast v2, Lmiui/widget/GradientTextView;

    .line 269
    .local v2, gtv:Lmiui/widget/GradientTextView;
    invoke-virtual {v2}, Lmiui/widget/GradientTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 270
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f080011

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 271
    .local v5, start:I
    const v7, 0x7f080012

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 272
    .local v1, end:I
    invoke-virtual {v2, v5, v1}, Lmiui/widget/GradientTextView;->setGradientColor(II)V

    .line 275
    .end local v1           #end:I
    .end local v2           #gtv:Lmiui/widget/GradientTextView;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #start:I
    :cond_1
    const v7, 0x7f0b009c

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    .line 279
    :goto_1
    return-void

    .line 258
    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 259
    move-object v0, v6

    .line 260
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_3
    const-string v7, "GalleryActionBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setActionBarStyle failed with unknown style="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "GalleryActionBar"

    const-string v1, "setTitleText failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTitleTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "GalleryActionBar"

    const-string v1, "setTitleTextVisibility failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showCloudIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCloudIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryActionBar;->mCloudIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    :cond_0
    return-void

    .line 318
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
