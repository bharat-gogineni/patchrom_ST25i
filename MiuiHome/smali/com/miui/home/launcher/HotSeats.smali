.class public Lcom/miui/home/launcher/HotSeats;
.super Landroid/widget/LinearLayout;
.source "HotSeats.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;


# static fields
.field private static MAX_SEATS:I

.field private static final PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private mIsLoading:Z

.field private final mIsReplaceSupported:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLocation:[I

.field private final mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v1, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 34
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    .line 40
    iput-boolean v1, p0, Lcom/miui/home/launcher/HotSeats;->mIsReplaceSupported:Z

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getHotseatCount()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    .line 42
    sget v0, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    new-array v0, v0, [Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    .line 43
    sget v0, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    new-array v0, v0, [Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/HotSeats;->setLayerType(ILandroid/graphics/Paint;)V

    .line 46
    return-void
.end method

.method private getSeatPosByX(II)I
    .locals 3
    .parameter "x"
    .parameter "seatCount"

    .prologue
    const/4 v0, 0x0

    .line 145
    if-nez p2, :cond_0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    aget v1, v1, v0

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/HotSeats;->getSeatWidth(I)I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v2, p2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getSeatWidth(I)I
    .locals 1
    .parameter "seatCount"

    .prologue
    .line 141
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getWorkingWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getWorkingWidth()I

    move-result v0

    div-int/2addr v0, p1

    goto :goto_0
.end method

.method private getSeatsCount()I
    .locals 4

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v2, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v1, v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_1
    return v0
.end method

.method private getVisibleSeatsCount()I
    .locals 4

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v2, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v1, v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    return v0
.end method

.method private getWorkingWidth()I
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z
    .locals 5
    .parameter "x"
    .parameter "dragInfo"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getSeatsCount()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/HotSeats;->getSeatPosByX(II)I

    move-result v0

    .line 153
    .local v0, pos:I
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_0

    iget-wide v1, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 157
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5
    .parameter "source"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    iget-boolean v3, p0, Lcom/miui/home/launcher/HotSeats;->mIsReplaceSupported:Z

    if-eqz v3, :cond_2

    if-eq p1, p0, :cond_2

    move v0, v1

    .line 122
    .local v0, replaceSupported:Z
    :goto_0
    iget-boolean v3, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleSeatsCount()I

    move-result v3

    sget v4, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v3, v4, :cond_3

    :cond_0
    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v3, v1, :cond_1

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_1
    :goto_1
    return v1

    .end local v0           #replaceSupported:Z
    :cond_2
    move v0, v2

    .line 121
    goto :goto_0

    .restart local v0       #replaceSupported:Z
    :cond_3
    move v1, v2

    .line 122
    goto :goto_1
.end method

.method private isDropAllowed(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 3
    .parameter "dragObject"

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    iget-object v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private restoreSeats()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 60
    :cond_1
    return-void
.end method

.method private saveSeats()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 64
    return-void
.end method

.method private saveSeats(Z)V
    .locals 9
    .parameter "updateInDatabase"

    .prologue
    .line 68
    const/4 v8, 0x0

    .line 69
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v8       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    const/4 v7, 0x0

    .line 73
    .local v7, currentPos:I
    const/4 v5, 0x0

    .line 74
    .local v5, savedPos:I
    :goto_0
    sget v0, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v7, v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v7

    sget-object v1, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-eq v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, v7

    aput-object v1, v0, v5

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v5

    iput v5, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 79
    if-eqz v8, :cond_1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v5

    const-wide/16 v1, -0x65

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel;->getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 85
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 87
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.home.launcher.settings"

    invoke-static {v0, v1, v8}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    :cond_4
    :goto_1
    sget v0, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v5, v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    aput-object v1, v0, v5

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    :cond_5
    const/4 v7, 0x0

    .line 97
    :goto_2
    sget v0, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v7, v0, :cond_6

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v0, v0, v7

    invoke-direct {p0, v7, v0}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 99
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 101
    :cond_6
    return-void
.end method

.method private setSeat(ILcom/miui/home/launcher/ItemInfo;)V
    .locals 4
    .parameter "pos"
    .parameter "info"

    .prologue
    .line 294
    if-gez p1, :cond_0

    sget v3, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge p1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v3, p1

    if-ne v3, p2, :cond_2

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aput-object p2, v3, p1

    .line 297
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/HotSeatButton;

    .line 298
    .local v2, v:Lcom/miui/home/launcher/HotSeatButton;
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/HotSeatButton;->unbind(Lcom/miui/home/launcher/DragController;)V

    .line 299
    if-eqz p2, :cond_4

    .line 300
    sget-object v3, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-eq p2, v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, p0, p2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 302
    .local v0, icon:Lcom/miui/home/launcher/ItemIcon;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ItemIcon;->setCompactViewMode(Z)V

    .line 303
    iget-object v3, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2, v0, v3}, Lcom/miui/home/launcher/HotSeatButton;->bind(Lcom/miui/home/launcher/ItemIcon;Lcom/miui/home/launcher/DragController;)V

    .line 305
    .end local v0           #icon:Lcom/miui/home/launcher/ItemIcon;
    :cond_3
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/HotSeatButton;->setTag(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/HotSeatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 307
    invoke-virtual {v2}, Lcom/miui/home/launcher/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 309
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 310
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 312
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-virtual {v2}, Lcom/miui/home/launcher/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 314
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 315
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setSeats(ILcom/miui/home/launcher/ItemInfo;)I
    .locals 11
    .parameter "x"
    .parameter "info"

    .prologue
    const/4 v8, 0x0

    .line 181
    const/4 v4, -0x1

    .line 182
    .local v4, replacedPos:I
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->getVisibleSeatsCount()I

    move-result v1

    .line 184
    .local v1, count:I
    sget v9, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ne v1, v9, :cond_2

    .line 185
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/HotSeats;->getSeatPosByX(II)I

    move-result v4

    .line 223
    :cond_0
    :goto_0
    if-ltz v4, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->restoreSeats()V

    .line 225
    invoke-direct {p0, v4, p2}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 228
    :cond_1
    return v4

    .line 186
    :cond_2
    if-nez v1, :cond_3

    .line 187
    const/4 v4, 0x0

    goto :goto_0

    .line 189
    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/HotSeats;->getSeatWidth(I)I

    move-result v7

    .line 191
    .local v7, seatWidth:I
    iget-boolean v9, p0, Lcom/miui/home/launcher/HotSeats;->mIsReplaceSupported:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v9, :cond_4

    div-int/lit8 v0, v7, 0x4

    .line 193
    .local v0, buffer:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    add-int/lit8 v9, v1, 0x1

    if-ge v2, v9, :cond_0

    .line 194
    iget-object v9, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    aget v9, v9, v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    mul-int v10, v7, v2

    add-int/2addr v9, v10

    div-int/lit8 v10, v7, 0x2

    add-int v6, v9, v10

    .line 196
    .local v6, seatCenterX:I
    if-ge v2, v1, :cond_5

    sub-int v9, p1, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v0, :cond_5

    .line 197
    move v4, v2

    .line 198
    goto :goto_0

    .end local v0           #buffer:I
    .end local v2           #i:I
    .end local v6           #seatCenterX:I
    :cond_4
    move v0, v8

    .line 191
    goto :goto_1

    .line 201
    .restart local v0       #buffer:I
    .restart local v2       #i:I
    .restart local v6       #seatCenterX:I
    :cond_5
    sub-int v9, v6, v7

    add-int/2addr v9, v0

    if-le p1, v9, :cond_a

    sub-int v9, v6, v0

    if-gt p1, v9, :cond_a

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, pos:I
    const/4 v5, 0x0

    .line 204
    .local v5, savedPos:I
    :goto_3
    sget v8, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v3, v8, :cond_9

    .line 205
    if-ne v3, v2, :cond_7

    .line 206
    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 215
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 208
    :cond_7
    sget v8, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v5, v8, :cond_6

    .line 209
    iget-object v8, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    iget-object v9, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v9, v9, v5

    if-ne v8, v9, :cond_8

    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 212
    :cond_8
    iget-object v8, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v8, v8, v5

    invoke-direct {p0, v3, v8}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 217
    :cond_9
    const/4 v4, -0x2

    .line 218
    goto :goto_0

    .line 193
    .end local v3           #pos:I
    .end local v5           #savedPos:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 108
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method findEmptySeat()I
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v0, v1, :cond_1

    .line 375
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->isEmptySeat(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    .end local v0           #i:I
    :goto_1
    return v0

    .line 374
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public finishBinding()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 469
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 470
    iput-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 471
    return-void
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2
    .parameter "fi"

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/HotSeatButton;

    .line 453
    .local v0, btn:Lcom/miui/home/launcher/HotSeatButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeatButton;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeatButton;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 456
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method isEmptySeat(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v0, 0x0

    .line 370
    sget v1, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge p1, v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v1, v1, p1

    sget-object v2, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter "dragObject"

    .prologue
    .line 161
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->restoreSeats()V

    goto :goto_0
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "dragObject"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    sget-object v1, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeats(ILcom/miui/home/launcher/ItemInfo;)I

    goto :goto_0
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 10
    .parameter "dragObject"

    .prologue
    .line 233
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->isDropAllowed(ILcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    .line 237
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeats(ILcom/miui/home/launcher/ItemInfo;)I

    move-result v9

    .line 238
    .local v9, replacedPos:I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    .line 239
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_1
    if-ltz v9, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v8, v0, v9

    .line 242
    .local v8, replaced:Lcom/miui/home/launcher/ItemInfo;
    :goto_1
    if-eqz v8, :cond_2

    .line 243
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v0, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 244
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v0, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 245
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 246
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v0, v8, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 247
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iput v9, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    const-wide/16 v2, -0x65

    const-wide/16 v4, 0x0

    iget-object v6, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v6, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 257
    if-eqz v8, :cond_3

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    iget-wide v2, v8, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v4, v8, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v6, v8, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, v8, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v1, v8

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 267
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    .end local v8           #replaced:Lcom/miui/home/launcher/ItemInfo;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 1
    .parameter "target"
    .parameter "dragObject"
    .parameter "success"

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 321
    if-nez p3, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->restoreSeats()V

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/HotSeats;->saveSeats()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 131
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mLocation:[I

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 134
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-boolean v0, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 366
    .end local p1
    :goto_0
    return v0

    .line 349
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_1

    move v0, v1

    .line 350
    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iput-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_2

    move v0, v1

    .line 355
    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 360
    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    check-cast p1, Lcom/miui/home/launcher/HotSeatButton;

    .end local p1
    invoke-virtual {p1}, Lcom/miui/home/launcher/HotSeatButton;->getIcon()Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    sget v3, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/HotSeats;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sget-object v1, Lcom/miui/home/launcher/HotSeats;->PLACE_HOLDER_SEAT:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushItem(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 383
    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/HotSeats;->isEmptySeat(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 384
    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-direct {p0, v5, p1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 402
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    if-nez v5, :cond_1

    .line 403
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 405
    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4

    .line 386
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->findEmptySeat()I

    move-result v2

    .line 387
    .local v2, lastEmptySeat:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 388
    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v2, v5, :cond_4

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-gez v5, :cond_5

    .line 389
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 391
    :cond_5
    move-object v0, p1

    .line 392
    .local v0, curInfo:Lcom/miui/home/launcher/ItemInfo;
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .local v1, i:I
    :goto_1
    if-gt v1, v2, :cond_0

    .line 393
    iget-object v5, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v5, v1

    .line 394
    .local v3, prevInfo:Lcom/miui/home/launcher/ItemInfo;
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 395
    move-object v0, v3

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    const/4 v4, 0x0

    .line 430
    .local v4, removed:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;

    .line 431
    .local v5, ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v6, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v1, v6, :cond_0

    .line 432
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    if-nez v6, :cond_2

    .line 431
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    instance-of v6, v6, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v6, :cond_3

    .line 436
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v6, v6, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 437
    .local v0, app:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    iget-object v6, v5, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 438
    const/4 v6, 0x0

    invoke-direct {p0, v1, v6}, Lcom/miui/home/launcher/HotSeats;->setSeat(ILcom/miui/home/launcher/ItemInfo;)V

    .line 439
    const/4 v4, 0x1

    goto :goto_1

    .line 441
    .end local v0           #app:Landroid/content/ComponentName;
    :cond_3
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v6, v6, v1

    instance-of v6, v6, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v6, :cond_1

    .line 442
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aget-object v3, v6, v1

    check-cast v3, Lcom/miui/home/launcher/FolderInfo;

    .line 443
    .local v3, info:Lcom/miui/home/launcher/FolderInfo;
    iget-object v6, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, p1, v6}, Lcom/miui/home/launcher/FolderInfo;->removeItems(Ljava/util/ArrayList;Lcom/miui/home/launcher/Launcher;)V

    .line 444
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    goto :goto_1

    .line 448
    .end local v1           #i:I
    .end local v3           #info:Lcom/miui/home/launcher/FolderInfo;
    .end local v5           #ri:Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
    :cond_4
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/HotSeats;->saveSeats(Z)V

    .line 449
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 342
    return-void
.end method

.method public setLaucher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/miui/home/launcher/HotSeats;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 335
    invoke-virtual {p0}, Lcom/miui/home/launcher/HotSeats;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeatButton;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/HotSeatButton;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 335
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/miui/home/launcher/HotSeats;->MAX_SEATS:I

    if-ge v0, v1, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeatButton;

    invoke-virtual {v1}, Lcom/miui/home/launcher/HotSeatButton;->removeAllViewsInLayout()V

    .line 462
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mSavedSeats:[Lcom/miui/home/launcher/ItemInfo;

    aput-object v2, v1, v0

    .line 463
    iget-object v1, p0, Lcom/miui/home/launcher/HotSeats;->mCurrentSeats:[Lcom/miui/home/launcher/ItemInfo;

    aput-object v2, v1, v0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/home/launcher/HotSeats;->mIsLoading:Z

    .line 466
    return-void
.end method
