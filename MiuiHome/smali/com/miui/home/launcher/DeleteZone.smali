.class public Lcom/miui/home/launcher/DeleteZone;
.super Landroid/widget/FrameLayout;
.source "DeleteZone.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DeleteZone$DeleteObserver;
    }
.end annotation


# instance fields
.field private mEditingTips:Landroid/widget/TextView;

.field private mErrorShowing:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRetainedList:Lcom/miui/home/launcher/RetainedList;

.field private mShrinkToTop:Landroid/view/animation/Animation;

.field private mStretchFromTop:Landroid/view/animation/Animation;

.field private mTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mTrashIcon:Landroid/widget/ImageView;

.field private final mTrashPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    .line 63
    iput-boolean v4, p0, Lcom/miui/home/launcher/DeleteZone;->mErrorShowing:Z

    .line 65
    new-instance v1, Lcom/miui/home/launcher/RetainedList;

    invoke-direct {v1}, Lcom/miui/home/launcher/RetainedList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mRetainedList:Lcom/miui/home/launcher/RetainedList;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 75
    .local v0, srcColor:I
    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 76
    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/DeleteZone;->setAnimationCacheEnabled(Z)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DeleteZone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/DeleteZone;->removeItem(Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/DeleteZone;Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/DeleteZone;->deletePackage(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method private deletePackage(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3
    .parameter "packageName"
    .parameter "info"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;-><init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 220
    return-void
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 305
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 308
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private removeItem(Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 2
    .parameter "d"
    .parameter "deleteInDatabase"

    .prologue
    .line 186
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    instance-of v0, v0, Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    check-cast v0, Lcom/miui/home/launcher/Folder;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 189
    :cond_0
    if-eqz p2, :cond_1

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 192
    :cond_1
    return-void
.end method

.method private startUninstallDialog(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    .line 251
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/miui/home/launcher/FastBitmapDrawable;

    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 254
    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0c002b

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 256
    new-instance v1, Lcom/miui/home/launcher/DeleteZone$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/DeleteZone$4;-><init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/DeleteZone$5;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/DeleteZone$5;-><init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/DeleteZone$6;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/DeleteZone$6;-><init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 273
    return-void
.end method

.method private startUninstallPresetDialog(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 8
    .parameter "d"

    .prologue
    const/4 v7, 0x1

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 225
    .local v1, info:Lcom/miui/home/launcher/ShortcutInfo;
    new-instance v2, Lcom/miui/home/launcher/FastBitmapDrawable;

    iget-object v3, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 226
    iget-object v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v3, 0x7f0c002b

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 229
    new-instance v2, Lcom/miui/home/launcher/DeleteZone$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/miui/home/launcher/DeleteZone$1;-><init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/DeleteZone$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/miui/home/launcher/DeleteZone$2;-><init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v3, 0x7f0c002c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/DeleteZone$3;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/DeleteZone$3;-><init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 248
    return-void
.end method

.method private startUninstallWidgetDialog(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 276
    iget-object v4, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 278
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 280
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    :goto_0
    if-nez v0, :cond_0

    .line 300
    :goto_1
    return-void

    .line 286
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 287
    .local v2, label:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    iget-object v4, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0c002b

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 292
    iget-object v4, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0009

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    iget-object v4, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/DeleteZone$7;

    invoke-direct {v5, p0, p1}, Lcom/miui/home/launcher/DeleteZone$7;-><init>(Lcom/miui/home/launcher/DeleteZone;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 281
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #label:Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 4
    .parameter "d"

    .prologue
    .line 96
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "dragObject"

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 390
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 381
    return-void
.end method

.method public onDragEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 346
    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone;->mFadeIn:Landroid/view/animation/Animation;

    iget-boolean v0, p0, Lcom/miui/home/launcher/DeleteZone;->mErrorShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 348
    iput-boolean v3, p0, Lcom/miui/home/launcher/DeleteZone;->mErrorShowing:Z

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    return-void

    .line 346
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeleteZone;->acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 315
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 316
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 318
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeleteZone;->acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 328
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 330
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 321
    return-void
.end method

.method public onDragStart(Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V
    .locals 3
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v2, 0x4

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone;->mStretchFromTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 342
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 11
    .parameter "d"

    .prologue
    .line 101
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-boolean v7, v7, Lcom/miui/home/launcher/ItemInfo;->isRetained:Z

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v7, v7, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/miui/home/launcher/DeleteZone;->mRetainedList:Lcom/miui/home/launcher/RetainedList;

    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v7, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v7, v7, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/RetainedList;->contain(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v8, 0x7f0c002a

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 105
    const/4 v7, 0x0

    .line 182
    :goto_0
    return v7

    .line 108
    :cond_1
    const/4 v1, 0x1

    .line 110
    .local v1, deleteSuccess:Z
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v7, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    .line 111
    const/4 v7, 0x1

    goto :goto_0

    .line 113
    :cond_2
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v7, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v9, -0x64

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 114
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v7, v7, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v7, :cond_3

    .line 115
    iget-object v8, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v7, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 119
    :cond_3
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 120
    iget-object v6, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v6, Lcom/miui/home/launcher/FolderInfo;

    .line 121
    .local v6, userFolderInfo:Lcom/miui/home/launcher/FolderInfo;
    invoke-virtual {v6}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v7

    if-nez v7, :cond_6

    .line 122
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v7, v6}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 123
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v7, v6}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 136
    .end local v6           #userFolderInfo:Lcom/miui/home/launcher/FolderInfo;
    :cond_4
    :goto_1
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez v7, :cond_b

    .line 137
    iget-object v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 138
    .local v2, info:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v7, v2, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_5

    iget-object v7, v2, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_8

    .line 139
    :cond_5
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v8, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v7, v8}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 178
    .end local v2           #info:Lcom/miui/home/launcher/ShortcutInfo;
    :goto_2
    if-nez v1, :cond_10

    .line 179
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v8, 0x7f0c0033

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 180
    const/4 v7, 0x0

    goto :goto_0

    .line 125
    .restart local v6       #userFolderInfo:Lcom/miui/home/launcher/FolderInfo;
    :cond_6
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v8, 0x7f0c002f

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 126
    const/4 v7, 0x0

    goto :goto_0

    .line 128
    .end local v6           #userFolderInfo:Lcom/miui/home/launcher/FolderInfo;
    :cond_7
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 129
    iget-object v3, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 130
    .local v3, launcherAppWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v0

    .line 131
    .local v0, appWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;
    if-eqz v0, :cond_4

    .line 132
    iget v7, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_1

    .line 141
    .end local v0           #appWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;
    .end local v3           #launcherAppWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .restart local v2       #info:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_8
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 142
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-object v7, v2, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-nez v7, :cond_9

    .line 144
    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/miui/home/launcher/DeleteZone;->removeItem(Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    goto :goto_2

    .line 146
    :cond_9
    iget-object v7, v2, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/miui/home/launcher/DeleteZone;->isSystemPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 148
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v8, 0x7f0c0029

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 149
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 151
    :cond_a
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/miui/home/launcher/DeleteZone;->removeItem(Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    .line 152
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/DeleteZone;->startUninstallDialog(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_2

    .line 156
    .end local v2           #info:Lcom/miui/home/launcher/ShortcutInfo;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_b
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_d

    .line 157
    iget-object v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 158
    .local v2, info:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    iget-object v7, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, packageName:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/DeleteZone;->isSystemPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 161
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v8, 0x7f0c0029

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 162
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 164
    :cond_c
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/DeleteZone;->startUninstallWidgetDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 168
    .end local v2           #info:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_d
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_e

    .line 169
    iget-object v7, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v8, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/Launcher;->removeGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 171
    :cond_e
    iget-object v7, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v7}, Lcom/miui/home/launcher/ItemInfo;->isPresetApp()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 172
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeleteZone;->startUninstallPresetDialog(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    goto/16 :goto_2

    .line 174
    :cond_f
    const/4 v7, 0x1

    invoke-direct {p0, p1, v7}, Lcom/miui/home/launcher/DeleteZone;->removeItem(Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    goto/16 :goto_2

    .line 182
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mEditingTips:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mFadeIn:Landroid/view/animation/Animation;

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mFadeOut:Landroid/view/animation/Animation;

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mShrinkToTop:Landroid/view/animation/Animation;

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mStretchFromTop:Landroid/view/animation/Animation;

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTrashIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/miui/home/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 92
    return-void
.end method

.method public onShowError()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/DeleteZone;->mErrorShowing:Z

    .line 360
    return-void
.end method

.method setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 367
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 364
    return-void
.end method
