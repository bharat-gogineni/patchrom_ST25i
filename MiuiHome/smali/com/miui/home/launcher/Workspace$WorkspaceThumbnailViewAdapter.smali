.class Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
.super Lcom/miui/home/launcher/ThumbnailViewAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceThumbnailViewAdapter"
.end annotation


# instance fields
.field private final DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

.field private final ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field private final EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field private final HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private final NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field private zDefaultScreenButton:Landroid/widget/ImageView;

.field private zNewScreenView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Workspace;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    .line 1587
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 1493
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$1;-><init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 1499
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;-><init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 1521
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$3;-><init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    .line 1528
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;-><init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    .line 1549
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$5;-><init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 1566
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;-><init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 1600
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 1588
    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1483
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->exitPreview(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method private createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "source"
    .parameter "thumbnail"
    .parameter "bitmap"

    .prologue
    .line 1604
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 1606
    .local v2, thumbnailWidth:I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 1610
    .local v0, thumbnailHeight:I
    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1613
    .local v1, thumbnailScaleRatio:F
    if-nez p3, :cond_0

    .line 1614
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1622
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1623
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1624
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1625
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1626
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mThumbnailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1627
    return-object p3

    .line 1619
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method private exitPreview(J)V
    .locals 3
    .parameter "screenID"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x7

    #calls: Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->access$500(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V

    .line 1489
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    .line 1490
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$100(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    .line 1491
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getExitAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getFocusedItemPosition()I
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1483
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1633
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 1634
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    if-nez v6, :cond_0

    .line 1635
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    .line 1636
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    const v7, 0x7f0200c4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1637
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1639
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    .line 1693
    :goto_0
    return-object v6

    .line 1642
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    .line 1643
    .local v2, cs:Lcom/miui/home/launcher/CellScreen;
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1645
    .local v1, cell:Lcom/miui/home/launcher/CellLayout;
    const/4 v5, 0x0

    .line 1646
    .local v5, thumbnail:Landroid/widget/ImageView;
    if-nez p2, :cond_5

    .line 1647
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/miui/home/launcher/Workspace;->access$1600(Lcom/miui/home/launcher/Workspace;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1649
    const v6, 0x7f070084

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #thumbnail:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .line 1650
    .restart local v5       #thumbnail:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1651
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1654
    const v6, 0x7f070085

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1655
    .local v4, homeButton:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1656
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 1660
    const v6, 0x7f070086

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1661
    .local v3, deleteButton:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1662
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1663
    const v6, 0x7f02000a

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1664
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1671
    .end local v3           #deleteButton:Landroid/widget/ImageView;
    .end local v4           #homeButton:Landroid/widget/ImageView;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v6

    if-ne p1, v6, :cond_6

    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1675
    const v6, 0x7f070002

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/CellScreen;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1676
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    const v6, 0x7f070004

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/CellScreen;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1677
    :cond_3
    invoke-direct {p0, v2, v5, v0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1678
    const v6, 0x7f070002

    invoke-virtual {v2, v6, v0}, Lcom/miui/home/launcher/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 1679
    const v6, 0x7f070004

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/miui/home/launcher/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 1682
    :cond_4
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1685
    const v6, 0x7f070085

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1686
    .restart local v4       #homeButton:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #calls: Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I
    invoke-static {v6}, Lcom/miui/home/launcher/Workspace;->access$1700(Lcom/miui/home/launcher/Workspace;)I

    move-result v6

    if-ne p1, v6, :cond_7

    .line 1687
    iput-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    .line 1688
    const v6, 0x7f02008e

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    move-object v6, p2

    .line 1693
    goto/16 :goto_0

    .line 1667
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #homeButton:Landroid/widget/ImageView;
    :cond_5
    const v6, 0x7f070084

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #thumbnail:Landroid/widget/ImageView;
    check-cast v5, Landroid/widget/ImageView;

    .restart local v5       #thumbnail:Landroid/widget/ImageView;
    goto :goto_1

    .line 1671
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    .line 1691
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #homeButton:Landroid/widget/ImageView;
    :cond_7
    const v6, 0x7f02008d

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public onEndDragging()V
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1722
    return-void
.end method

.method public onStartDragging(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->performHapticFeedback(II)Z

    .line 1715
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1718
    :cond_0
    return-void
.end method

.method public onThumbnailClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->exitPreview(J)V

    .line 1698
    return-void
.end method

.method public onThumbnailPositionChanged([I)V
    .locals 4
    .parameter "positionMapping"

    .prologue
    .line 1726
    array-length v0, p1

    .line 1728
    .local v0, count:I
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I
    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I
    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;)[I

    move-result-object v2

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 1729
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    new-array v3, v0, [I

    #setter for: Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I
    invoke-static {v2, v3}, Lcom/miui/home/launcher/Workspace;->access$1102(Lcom/miui/home/launcher/Workspace;[I)[I

    .line 1731
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1732
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I
    invoke-static {v2}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;)[I

    move-result-object v2

    aget v3, p1, v1

    aput v3, v2, v1

    .line 1731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1735
    :cond_2
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_3

    .line 1736
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1739
    :cond_3
    return-void
.end method
