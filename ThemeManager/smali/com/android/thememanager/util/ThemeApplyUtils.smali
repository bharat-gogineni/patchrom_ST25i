.class public Lcom/android/thememanager/util/ThemeApplyUtils;
.super Ljava/lang/Object;
.source "ThemeApplyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 16
    invoke-static/range {p0 .. p6}, Lcom/android/thememanager/util/ThemeApplyUtils;->applyTheme(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/Runnable;)V

    return-void
.end method

.method private static applyTheme(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/Runnable;)V
    .locals 8
    .parameter "activity"
    .parameter "themePath"
    .parameter "removeFlags"
    .parameter "applyFlags"
    .parameter "lastRun"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, v0, v1}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v5

    .line 116
    .local v5, info:Lcom/android/thememanager/ThemeInfo;
    if-eqz v5, :cond_0

    move-wide v0, p2

    move-wide v2, p4

    move-object v4, p6

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;)Z

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {p0, v4}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static doApplyResource(Landroid/app/Activity;Lcom/android/thememanager/util/ThemeResourceState;)V
    .locals 22
    .parameter "activity"
    .parameter "resource"

    .prologue
    .line 20
    const/4 v15, 0x0

    .line 21
    .local v15, changed:Z
    const/16 v19, 0x1

    .line 23
    .local v19, toastNeeded:Z
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/thememanager/util/ThemeResourceState;->resourceType:J

    .line 24
    .local v3, resourceType:J
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/thememanager/util/ThemeResourceState;->localPath:Ljava/lang/String;

    .line 26
    .local v5, localPath:Ljava/lang/String;
    const-wide/16 v6, 0x2

    cmp-long v2, v3, v6

    if-nez v2, :cond_1

    .line 27
    const/16 v19, 0x0

    .line 28
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/thememanager/util/WallpaperUtils;->cropAndApplyWallpaper(Landroid/app/Activity;JLjava/lang/String;ZZ)V

    .line 92
    :goto_0
    if-eqz v19, :cond_0

    .line 93
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 95
    :cond_0
    :goto_1
    return-void

    .line 29
    :cond_1
    const-wide/16 v6, 0x4

    cmp-long v2, v3, v6

    if-nez v2, :cond_2

    .line 30
    const/16 v19, 0x0

    .line 31
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/thememanager/util/ThemeApplyUtils;->giveTipForLockscreenPaper(Landroid/app/Activity;JLjava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    const-wide/16 v6, 0x40

    cmp-long v2, v3, v6

    if-nez v2, :cond_3

    .line 33
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/thememanager/ThemeHelper;->applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    goto :goto_0

    .line 34
    :cond_3
    const-wide/16 v6, 0x100

    cmp-long v2, v3, v6

    if-nez v2, :cond_4

    .line 35
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v15

    goto :goto_0

    .line 36
    :cond_4
    const-wide/16 v6, 0x200

    cmp-long v2, v3, v6

    if-nez v2, :cond_5

    .line 37
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v15

    goto :goto_0

    .line 38
    :cond_5
    const-wide/16 v6, 0x400

    cmp-long v2, v3, v6

    if-nez v2, :cond_6

    .line 39
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v15

    goto :goto_0

    .line 41
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/thememanager/util/ThemeResourceState;->applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    iget-wide v0, v2, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;->applyComponentFlags:J

    move-wide/from16 v17, v0

    .line 42
    .local v17, tmpFlags:J
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceFont()Z

    move-result v2

    if-nez v2, :cond_7

    .line 43
    const-wide/16 v6, -0x11

    and-long v17, v17, v6

    .line 45
    :cond_7
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceAudioEffect()Z

    move-result v2

    if-nez v2, :cond_8

    .line 46
    const-wide/32 v6, -0x8001

    and-long v17, v17, v6

    .line 48
    :cond_8
    move-wide/from16 v11, v17

    .line 49
    .local v11, applyFlags:J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/thememanager/util/ThemeResourceState;->applyParameters:Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;

    iget-boolean v2, v2, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;->needRemoveAllOldComponents:Z

    if-eqz v2, :cond_9

    sget-wide v6, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v20, -0x1

    xor-long v6, v6, v20

    or-long v9, v11, v6

    .line 53
    .local v9, removeFlags:J
    :goto_2
    invoke-static {v11, v12}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v2

    if-gtz v2, :cond_a

    .line 54
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0024

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v6, 0x1010355

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v16

    .line 58
    .local v16, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_1

    .end local v9           #removeFlags:J
    .end local v16           #dialog:Landroid/app/AlertDialog;
    :cond_9
    move-wide v9, v11

    .line 49
    goto :goto_2

    .line 59
    .restart local v9       #removeFlags:J
    :cond_a
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/thememanager/util/ThemeResourceState;->componentFlags:J

    invoke-static {v9, v10, v5, v6, v7}, Lcom/android/thememanager/ThemeHelper;->realFontChange(JLjava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 60
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v14, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0038

    invoke-virtual {v14, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v6, 0x1010355

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v13, 0x7f0a0039

    new-instance v6, Lcom/android/thememanager/util/ThemeApplyUtils$1;

    move-object/from16 v7, p0

    move-object v8, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/thememanager/util/ThemeApplyUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;JJ)V

    invoke-virtual {v2, v13, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    const-wide/16 v6, 0x10

    cmp-long v2, v3, v6

    if-eqz v2, :cond_b

    .line 78
    const v2, 0x7f0a003a

    new-instance v6, Lcom/android/thememanager/util/ThemeApplyUtils$2;

    move-object/from16 v7, p0

    move-object v8, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/thememanager/util/ThemeApplyUtils$2;-><init>(Landroid/app/Activity;Ljava/lang/String;JJ)V

    invoke-virtual {v14, v2, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_b
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 88
    .end local v14           #builder:Landroid/app/AlertDialog$Builder;
    :cond_c
    const/16 v19, 0x0

    .line 89
    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object v8, v5

    invoke-static/range {v7 .. v13}, Lcom/android/thememanager/util/ThemeApplyUtils;->applyTheme(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private static giveTipForLockscreenPaper(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "resourceType"
    .parameter "localPath"

    .prologue
    const-wide/16 v1, 0x4

    const/4 v4, 0x0

    .line 98
    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/content/res/ThemeResourcesSystem;->hasAwesomeLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    .line 104
    .local v6, dialog:Landroid/app/AlertDialog;
    new-instance v0, Lcom/android/thememanager/util/ThemeApplyUtils$3;

    invoke-direct {v0, p0, p3}, Lcom/android/thememanager/util/ThemeApplyUtils$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    .end local v6           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v3, p3

    move v5, v4

    .line 110
    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/util/WallpaperUtils;->cropAndApplyWallpaper(Landroid/app/Activity;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method
