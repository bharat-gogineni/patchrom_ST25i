.class public Lcom/android/thememanager/util/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field private static sLastCropWallpaperUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropAndApplyWallpaper(Landroid/app/Activity;JLjava/lang/String;ZZ)V
    .locals 7
    .parameter "activity"
    .parameter "resourceType"
    .parameter "filepath"
    .parameter "saveDirectly"
    .parameter "forbidCroping"

    .prologue
    .line 48
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, p0

    move-wide v2, p1

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/thememanager/util/WallpaperUtils;->cropAndApplyWallpaper(Landroid/app/Activity;Landroid/app/Fragment;JLandroid/net/Uri;ZZ)Z

    .line 49
    return-void
.end method

.method public static cropAndApplyWallpaper(Landroid/app/Activity;Landroid/app/Fragment;JLandroid/net/Uri;ZZ)Z
    .locals 19
    .parameter "activity"
    .parameter "frag"
    .parameter "resourceType"
    .parameter "wallpaperUri"
    .parameter "saveDirectly"
    .parameter "forceCroping"

    .prologue
    .line 52
    if-nez p5, :cond_7

    .line 53
    const-wide/16 v15, 0x4

    cmp-long v15, p2, v15

    if-nez v15, :cond_2

    const/4 v7, 0x1

    .line 54
    .local v7, isLockscreen:Z
    :goto_0
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/thememanager/util/WallpaperUtils;->getWallpaperExpectedSize(Landroid/content/Context;Z)Landroid/util/Pair;

    move-result-object v12

    .line 55
    .local v12, size:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 56
    .local v14, wallpaperWidth:I
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 57
    .local v13, wallpaperHeight:I
    const v2, 0x3f8ccccd

    .line 58
    .local v2, EXPAND_FACTOR:F
    int-to-float v15, v14

    const v16, 0x3f8ccccd

    mul-float v15, v15, v16

    float-to-int v9, v15

    .line 59
    .local v9, maxNeedWidth:I
    int-to-float v15, v13

    const v16, 0x3f8ccccd

    mul-float v15, v15, v16

    float-to-int v8, v15

    .line 61
    .local v8, maxNeedHeight:I
    move/from16 v10, p6

    .line 62
    .local v10, needCrop:Z
    if-nez v10, :cond_1

    .line 63
    new-instance v6, Lmiui/util/InputStreamLoader;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v6, v0, v1}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 64
    .local v6, is:Lmiui/util/InputStreamLoader;
    invoke-static {v6}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    .line 65
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v6}, Lmiui/util/InputStreamLoader;->close()V

    .line 66
    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v15, v9, :cond_0

    iget v15, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v15, v8, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 69
    .end local v6           #is:Lmiui/util/InputStreamLoader;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    if-eqz v10, :cond_7

    .line 70
    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.android.camera.action.CROP"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "com.miui.gallery"

    const-string v17, "com.miui.gallery.app.CropImage"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "image/*"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "outputX"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "outputY"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "aspectX"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "aspectY"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "scale"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "isInitFullSelection"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "noFaceDetection"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "is-large-image"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v16

    if-eqz v7, :cond_4

    const-string v15, "set-as-lockscreen"

    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 79
    .local v5, intent:Landroid/content/Intent;
    if-eqz p1, :cond_6

    .line 80
    if-eqz v7, :cond_5

    const/16 v15, 0x7002

    :goto_3
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v15}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    :goto_4
    sput-object p4, Lcom/android/thememanager/util/WallpaperUtils;->sLastCropWallpaperUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v15, 0x0

    .line 116
    .end local v2           #EXPAND_FACTOR:F
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #isLockscreen:Z
    .end local v8           #maxNeedHeight:I
    .end local v9           #maxNeedWidth:I
    .end local v10           #needCrop:Z
    .end local v12           #size:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #wallpaperHeight:I
    .end local v14           #wallpaperWidth:I
    :goto_5
    return v15

    .line 53
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 66
    .restart local v2       #EXPAND_FACTOR:F
    .restart local v6       #is:Lmiui/util/InputStreamLoader;
    .restart local v7       #isLockscreen:Z
    .restart local v8       #maxNeedHeight:I
    .restart local v9       #maxNeedWidth:I
    .restart local v10       #needCrop:Z
    .restart local v11       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #size:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #wallpaperHeight:I
    .restart local v14       #wallpaperWidth:I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 70
    .end local v6           #is:Lmiui/util/InputStreamLoader;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const-string v15, "set-as-wallpaper"

    goto :goto_2

    .line 80
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_5
    const/16 v15, 0x7001

    goto :goto_3

    .line 83
    :cond_6
    if-eqz v7, :cond_d

    const/16 v15, 0x7002

    :goto_6
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 88
    :catch_0
    move-exception v15

    .line 96
    .end local v2           #EXPAND_FACTOR:F
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #isLockscreen:Z
    .end local v8           #maxNeedHeight:I
    .end local v9           #maxNeedWidth:I
    .end local v10           #needCrop:Z
    .end local v12           #size:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #wallpaperHeight:I
    .end local v14           #wallpaperWidth:I
    :cond_7
    const/4 v3, 0x1

    .line 97
    .local v3, changeLock:Z
    const/4 v4, 0x1

    .line 98
    .local v4, changedDesk:Z
    const-wide/16 v15, 0x4

    and-long v15, v15, p2

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_8

    .line 99
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v15, v1}, Lcom/android/thememanager/util/WallpaperUtils;->saveLockWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v3

    .line 101
    :cond_8
    const-wide/16 v15, 0x2

    and-long v15, v15, p2

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_9

    .line 102
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v15, v1}, Lcom/android/thememanager/util/WallpaperUtils;->saveDeskWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v4

    .line 105
    :cond_9
    if-nez v3, :cond_a

    .line 106
    const/4 v15, 0x0

    const-wide/16 v16, 0x4

    invoke-static/range {v16 .. v17}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;ZLjava/lang/String;)V

    .line 108
    :cond_a
    if-nez v4, :cond_b

    .line 109
    const/4 v15, 0x0

    const-wide/16 v16, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;ZLjava/lang/String;)V

    .line 112
    :cond_b
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 113
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 116
    :cond_c
    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    const/4 v15, 0x1

    goto :goto_5

    .line 83
    .end local v3           #changeLock:Z
    .end local v4           #changedDesk:Z
    .restart local v2       #EXPAND_FACTOR:F
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v7       #isLockscreen:Z
    .restart local v8       #maxNeedHeight:I
    .restart local v9       #maxNeedWidth:I
    .restart local v10       #needCrop:Z
    .restart local v12       #size:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #wallpaperHeight:I
    .restart local v14       #wallpaperWidth:I
    :cond_d
    const/16 v15, 0x7001

    goto :goto_6

    .line 116
    .end local v2           #EXPAND_FACTOR:F
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #isLockscreen:Z
    .end local v8           #maxNeedHeight:I
    .end local v9           #maxNeedWidth:I
    .end local v10           #needCrop:Z
    .end local v12           #size:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #wallpaperHeight:I
    .end local v14           #wallpaperWidth:I
    .restart local v3       #changeLock:Z
    .restart local v4       #changedDesk:Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_5
.end method

.method public static dealCropWallpaperResult(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"
    .parameter "resultCode"

    .prologue
    const/16 v1, 0x7002

    .line 120
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/16 v0, 0x7001

    if-ne p1, v0, :cond_1

    .line 122
    :cond_0
    if-ne p1, v1, :cond_2

    const-wide/16 v0, 0x4

    :goto_0
    sget-object v2, Lcom/android/thememanager/util/WallpaperUtils;->sLastCropWallpaperUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/thememanager/util/WallpaperUtils;->sLastCropWallpaperUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {p0, v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 127
    :cond_1
    return-void

    .line 122
    :cond_2
    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_1
.end method

.method private static getWallpaperExpectedSize(Landroid/content/Context;Z)Landroid/util/Pair;
    .locals 6
    .parameter "context"
    .parameter "isLockscreen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 29
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    mul-int v2, v4, v3

    .line 30
    .local v2, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    .local v1, height:I
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 29
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static saveDeskWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "candidateBmp"
    .parameter "candidateUri"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/thememanager/util/WallpaperUtils;->saveWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public static saveLockWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "candidateBmp"
    .parameter "candidateUri"

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/thememanager/util/WallpaperUtils;->saveWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method private static saveWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Z)Z
    .locals 12
    .parameter "context"
    .parameter "candidateBmp"
    .parameter "candidateUri"
    .parameter "isLockscreen"

    .prologue
    .line 138
    invoke-static {p0, p3}, Lcom/android/thememanager/util/WallpaperUtils;->getWallpaperExpectedSize(Landroid/content/Context;Z)Landroid/util/Pair;

    move-result-object v4

    .line 139
    .local v4, size:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v9, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, needWidth:I
    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 142
    .local v1, needHeight:I
    const/4 v8, 0x0

    .line 143
    .local v8, ws:Landroid/app/WallpaperManager;
    if-nez p3, :cond_0

    .line 144
    const-string v9, "wallpaper"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #ws:Landroid/app/WallpaperManager;
    check-cast v8, Landroid/app/WallpaperManager;

    .line 147
    .restart local v8       #ws:Landroid/app/WallpaperManager;
    :cond_0
    const/4 v3, 0x0

    .line 148
    .local v3, result:Z
    if-eqz p1, :cond_6

    .line 150
    const/4 v5, 0x0

    .line 151
    .local v5, tmpBmp:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-lt v9, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lt v9, v1, :cond_1

    .line 152
    const/4 v9, 0x0

    invoke-static {p1, v2, v1, v9}, Lmiui/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 154
    :cond_1
    if-nez v5, :cond_2

    .line 155
    move-object v5, p1

    .line 157
    :cond_2
    if-eqz p3, :cond_5

    .line 158
    const-string v9, "/data/system/theme//lock_wallpaper"

    invoke-static {v5, v9}, Lmiui/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v3

    .line 166
    :goto_0
    if-eqz v5, :cond_3

    if-eq v5, p1, :cond_3

    .line 167
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    .end local v5           #tmpBmp:Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 193
    if-eqz p3, :cond_8

    .line 194
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/thememanager/ThemeHelper;->updateLockWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :cond_4
    :goto_2
    return v3

    .line 160
    .restart local v5       #tmpBmp:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v5, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 162
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v9}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    const/4 v3, 0x1

    goto :goto_0

    .line 171
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #tmpBmp:Landroid/graphics/Bitmap;
    :cond_6
    if-eqz p2, :cond_3

    .line 172
    if-eqz p3, :cond_7

    .line 173
    new-instance v9, Lmiui/util/InputStreamLoader;

    invoke-direct {v9, p0, p2}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v10, "/data/system/theme//lock_wallpaper"

    invoke-static {v9, v10, v2, v1}, Lmiui/util/ImageUtils;->saveBitmapToLocal(Lmiui/util/InputStreamLoader;Ljava/lang/String;II)Z

    move-result v3

    goto :goto_1

    .line 176
    :cond_7
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "tmp_desk_wallpaper"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v6, tmpDeskWallpaperFile:Ljava/io/File;
    new-instance v9, Lmiui/util/InputStreamLoader;

    invoke-direct {v9, p0, p2}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2, v1}, Lmiui/util/ImageUtils;->saveBitmapToLocal(Lmiui/util/InputStreamLoader;Ljava/lang/String;II)Z

    .line 179
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 181
    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 182
    .local v7, tmpIs:Ljava/io/InputStream;
    invoke-virtual {v8, v7}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 183
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    const/4 v3, 0x1

    .line 187
    .end local v7           #tmpIs:Ljava/io/InputStream;
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 196
    .end local v6           #tmpDeskWallpaperFile:Ljava/io/File;
    :cond_8
    const-wide/16 v9, 0x2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v9, v10, v11}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_2

    .line 185
    .restart local v6       #tmpDeskWallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v9

    goto :goto_3

    .line 169
    .end local v6           #tmpDeskWallpaperFile:Ljava/io/File;
    .restart local v5       #tmpBmp:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v9

    goto :goto_1
.end method
