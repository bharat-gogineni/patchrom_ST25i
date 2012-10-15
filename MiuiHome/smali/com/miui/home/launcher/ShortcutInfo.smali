.class public Lcom/miui/home/launcher/ShortcutInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconPackage:Ljava/lang/String;

.field mIconType:I

.field onExternalStorage:Z

.field public title:Ljava/lang/CharSequence;

.field public usingFallbackIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 92
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    .line 111
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, componentName:Landroid/content/ComponentName;
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 116
    const/high16 v1, 0x1020

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 118
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 119
    return-void
.end method


# virtual methods
.method public deletePresetArchive()Z
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 146
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "iconCache"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    iget v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/IconCache;->getIcon(Landroid/content/Intent;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 137
    :goto_0
    return-object v1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 137
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isCustomizedIcon()Z
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->isCustomizedIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/database/Cursor;)V

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 102
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconPackage:Ljava/lang/String;

    .line 108
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadContactInfo(Landroid/content/Context;)V
    .locals 25
    .parameter "context"

    .prologue
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 214
    .local v2, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 216
    .local v3, contactUri:Landroid/net/Uri;
    if-eqz v3, :cond_7

    .line 218
    const/4 v14, 0x0

    .line 220
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 221
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 231
    :try_start_1
    const-string v4, "photo"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 232
    .local v5, photoUri:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "data15"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 233
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 235
    .local v15, data:[B
    const/4 v4, 0x0

    array-length v6, v15

    const/4 v7, 0x0

    invoke-static {v15, v4, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    .end local v15           #data:[B
    :cond_2
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 247
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x6020046

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 254
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 255
    .local v16, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 256
    .local v13, coverWidth:I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 257
    .local v12, coverHeight:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6, v13, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 260
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 261
    .local v10, bitmap:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    .local v11, canvas:Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 265
    .local v19, padding:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 266
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    sub-int/2addr v13, v4

    .line 267
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v6

    sub-int/2addr v12, v4

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 271
    .local v21, photoWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 272
    .local v20, photoHeight:I
    move/from16 v0, v21

    int-to-float v4, v0

    int-to-float v6, v13

    div-float/2addr v4, v6

    move/from16 v0, v20

    int-to-float v6, v0

    int-to-float v7, v12

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 273
    .local v22, scale:F
    move/from16 v0, v21

    int-to-float v4, v0

    int-to-float v6, v13

    mul-float v6, v6, v22

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v17, v0

    .line 274
    .local v17, offsetX:I
    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v6, v12

    mul-float v6, v6, v22

    sub-float/2addr v4, v6

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v18, v0

    .line 277
    .local v18, offsetY:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v21, v17

    sub-int v8, v20, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v6, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v23, v23, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v8, v9, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    invoke-virtual {v11, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 284
    return-void

    .line 225
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #canvas:Landroid/graphics/Canvas;
    .end local v12           #coverHeight:I
    .end local v13           #coverWidth:I
    .end local v16           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v17           #offsetX:I
    .end local v18           #offsetY:I
    .end local v19           #padding:Landroid/graphics/Rect;
    .end local v20           #photoHeight:I
    .end local v21           #photoWidth:I
    .end local v22           #scale:F
    .restart local v14       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    .line 238
    :catchall_1
    move-exception v4

    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .line 242
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0065

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 243
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 180
    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, titleStr:Ljava/lang/String;
    :goto_0
    const-string v3, "title"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, uri:Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "iconType"

    iget v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-ne v2, v3, :cond_4

    .line 188
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 203
    :cond_0
    :goto_2
    iget v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 205
    const-string v2, "iconPackage"

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    :goto_3
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 180
    goto :goto_0

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .line 183
    goto :goto_1

    .line 190
    .restart local v1       #uri:Ljava/lang/String;
    :cond_4
    iget v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    if-nez v2, :cond_0

    .line 191
    iget-boolean v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->onExternalStorage:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_5

    .line 192
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 194
    :cond_5
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 195
    const-string v2, "iconPackage"

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_6
    const-string v2, "ShortcutInfo"

    const-string v3, "Application shortcut\'s intent or component is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 174
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    .line 294
    return-void
.end method

.method public wrapIconWithBorder(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isCustomizedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 157
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPresetApp()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1
.end method
