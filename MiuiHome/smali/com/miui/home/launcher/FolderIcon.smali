.class public Lcom/miui/home/launcher/FolderIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;


# instance fields
.field private mCover:Landroid/widget/ImageView;

.field private mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

.field private mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

.field private mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

.field private mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

.field private mFolderBackground:Landroid/graphics/drawable/Drawable;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mItemIcons:[Landroid/widget/ImageView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPreviewIconContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    .line 54
    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    .line 61
    .local v0, app:Lcom/miui/home/launcher/LauncherApplication;
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 3
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 143
    .local v0, icon:Lcom/miui/home/launcher/FolderIcon;
    iget-object v1, v0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v1, p3, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 146
    iput-object p3, v0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 147
    iput-object p1, v0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 148
    iput-object v0, p3, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/FolderIcon;

    .line 149
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 150
    return-object v0
.end method

.method private isDropable(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 5
    .parameter "dragInfo"

    .prologue
    const/4 v0, 0x1

    .line 197
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne v1, v0, :cond_1

    :cond_0
    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean v1, v1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final loadFolderIconBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 134
    const-string v0, "icon_folder.png"

    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getIconWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getIconHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lmiui/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 193
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public deleteSelf()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/Launcher;->preRemoveItem(Landroid/view/View;)V

    .line 265
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 266
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$1;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    .line 249
    iget v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLeft:I

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/FolderIcon;->mTop:I

    iget v2, p0, Lcom/miui/home/launcher/FolderIcon;->mLeft:I

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/home/launcher/FolderIcon;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 250
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method loadItemIcons()V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 156
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 157
    .local v1, si:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    .end local v1           #si:Lcom/miui/home/launcher/ShortcutInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    .line 163
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 245
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 213
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 218
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 229
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 221
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 8
    .parameter "d"

    .prologue
    .line 203
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 204
    .local v1, item:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v4, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    .line 66
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    .line 67
    const/4 v11, 0x4

    new-array v12, v11, [Landroid/widget/ImageView;

    const/4 v13, 0x0

    const v11, 0x7f070018

    invoke-virtual {p0, v11}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    aput-object v11, v12, v13

    const/4 v13, 0x1

    const v11, 0x7f070019

    invoke-virtual {p0, v11}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    aput-object v11, v12, v13

    const/4 v13, 0x2

    const v11, 0x7f07001a

    invoke-virtual {p0, v11}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    aput-object v11, v12, v13

    const/4 v13, 0x3

    const v11, 0x7f07001b

    invoke-virtual {p0, v11}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    aput-object v11, v12, v13

    iput-object v12, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    .line 73
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 74
    .local v10, res:Landroid/content/res/Resources;
    const v11, 0x7f070017

    invoke-virtual {p0, v11}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    .line 76
    const v11, 0x7f07001c

    invoke-virtual {p0, v11}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getIconWidth()I

    move-result v9

    .line 78
    .local v9, iw:I
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getIconHeight()I

    move-result v8

    .line 79
    .local v8, ih:I
    const-string v11, "folder_icon_cover_01.png"

    invoke-static {v11, v9, v8}, Lmiui/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, cover01:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 81
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    const-string v11, "folder_icon_cover_02.png"

    invoke-static {v11, v9, v8}, Lmiui/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    .local v1, cover02:Landroid/graphics/Bitmap;
    const-string v11, "folder_icon_cover_03.png"

    invoke-static {v11, v9, v8}, Lmiui/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    .local v2, cover03:Landroid/graphics/Bitmap;
    const-string v11, "folder_icon_cover_04.png"

    invoke-static {v11, v9, v8}, Lmiui/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 87
    .local v3, cover04:Landroid/graphics/Bitmap;
    const-string v11, "folder_icon_cover_05.png"

    invoke-static {v11, v9, v8}, Lmiui/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 88
    .local v4, cover05:Landroid/graphics/Bitmap;
    const-string v11, "folder_icon_cover_06.png"

    invoke-static {v11, v9, v8}, Lmiui/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 90
    .local v5, cover06:Landroid/graphics/Bitmap;
    const v11, 0x7f0b0002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 92
    .local v6, coverAnimDur:I
    new-instance v11, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    .line 93
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 94
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 95
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 96
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 97
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 98
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 99
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 101
    new-instance v11, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    .line 102
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 103
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 104
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 105
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 106
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 107
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 108
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 110
    new-instance v11, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    .line 111
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 112
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 113
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 114
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 115
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfOpen:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 117
    new-instance v11, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    .line 118
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 119
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 120
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 121
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 122
    iget-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverHalfClose:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 124
    .end local v1           #cover02:Landroid/graphics/Bitmap;
    .end local v2           #cover03:Landroid/graphics/Bitmap;
    .end local v3           #cover04:Landroid/graphics/Bitmap;
    .end local v4           #cover05:Landroid/graphics/Bitmap;
    .end local v5           #cover06:Landroid/graphics/Bitmap;
    .end local v6           #coverAnimDur:I
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/FolderIcon;->loadFolderIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 125
    .local v7, folderBg:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 126
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v10, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    const v12, 0x7f0200a7

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget-object v13, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/miui/home/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v11, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 169
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->onMeasure(II)V

    .line 170
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 171
    .local v1, iconWidth:I
    int-to-float v4, v1

    const v5, 0x3f428f5c

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 173
    .local v0, iconContainerSize:I
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .local v2, lpIcon:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .local v3, lpPreview:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isCompact()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 180
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/FolderIcon;->setupIconMargin(Landroid/view/View;)V

    .line 190
    :cond_0
    return-void

    .line 182
    :cond_1
    const/16 v4, 0x31

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v3, v7, v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCover:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mCoverOpen:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 237
    :cond_0
    return-void
.end method
