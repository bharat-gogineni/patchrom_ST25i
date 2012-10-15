.class public Lcom/android/thememanager/WallpaperPreference;
.super Landroid/preference/Preference;
.source "WallpaperPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDesktopMask:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mLockScreenMask:Landroid/graphics/drawable/Drawable;

.field private mNonePreviewImage:Landroid/graphics/drawable/Drawable;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/android/thememanager/WallpaperPreference;->setLayoutResource(I)V

    .line 47
    iput-object p1, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    .line 48
    const-string v1, "wallpaper"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 49
    sget-object v1, Lcom/android/thememanager/R$styleable;->WallpaperPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mDesktopMask:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mNonePreviewImage:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWidth:I

    .line 57
    iget-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/thememanager/WallpaperPreference;->mHeight:I

    .line 59
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperPreference;->setWallpaperIntent()V

    .line 60
    return-void
.end method

.method private getFirstLiveWallpapersThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 148
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 150
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.service.wallpaper.WallpaperService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 153
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Lcom/android/thememanager/WallpaperPreference$1;

    invoke-direct {v5, p0, v4}, Lcom/android/thememanager/WallpaperPreference$1;-><init>(Lcom/android/thememanager/WallpaperPreference;Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, info:Landroid/app/WallpaperInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 169
    :try_start_0
    new-instance v2, Landroid/app/WallpaperInfo;

    iget-object v6, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v6, v5}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #info:Landroid/app/WallpaperInfo;
    .local v2, info:Landroid/app/WallpaperInfo;
    move-object v1, v2

    .line 175
    .end local v2           #info:Landroid/app/WallpaperInfo;
    .restart local v1       #info:Landroid/app/WallpaperInfo;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    return-object v5

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getFirstStaticWallpapersThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 132
    const-string v1, "/system/media/wallpaper"

    .line 133
    .local v1, systemWallpaperDirPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 135
    :cond_0
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    .line 136
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 140
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 144
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFirstWallpapersThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "type"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, ret:Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperPreference;->getFirstStaticWallpapersThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperPreference;->getFirstLiveWallpapersThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private setWallpaperIntent()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    iget v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    if-nez v1, :cond_0

    .line 108
    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperPreference;->setIntent(Landroid/content/Intent;)V

    .line 117
    return-void

    .line 110
    :cond_0
    iget v1, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 111
    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :cond_1
    const-string v1, "com.android.wallpaper.livepicker"

    const-string v2, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 65
    const v5, 0x7f070012

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    .local v0, bottomImage:Landroid/widget/ImageView;
    const v5, 0x7f070013

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .local v2, topImage:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/thememanager/WallpaperPreference;->mWidth:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/thememanager/WallpaperPreference;->mHeight:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    iget v5, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mLockScreenMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 77
    .local v4, wpi:Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .line 79
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 80
    .local v3, usedBySystem:Z
    iget v5, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    if-nez v5, :cond_4

    .line 81
    if-nez v4, :cond_1

    .line 82
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mDesktopMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const/4 v3, 0x1

    .line 94
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 95
    iget v5, p0, Lcom/android/thememanager/WallpaperPreference;->mWallpaperType:I

    invoke-direct {p0, v5}, Lcom/android/thememanager/WallpaperPreference;->getFirstWallpapersThumbnail(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    :cond_2
    if-nez v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/thememanager/WallpaperPreference;->mNonePreviewImage:Landroid/graphics/drawable/Drawable;

    .line 101
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 87
    :cond_4
    if-eqz v4, :cond_1

    .line 88
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 89
    iget-object v5, p0, Lcom/android/thememanager/WallpaperPreference;->mDesktopMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const/4 v3, 0x1

    goto :goto_1
.end method
