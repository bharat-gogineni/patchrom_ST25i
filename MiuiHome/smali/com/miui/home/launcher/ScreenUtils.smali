.class Lcom/miui/home/launcher/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ScreenUtils$1;,
        Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;,
        Lcom/miui/home/launcher/ScreenUtils$CellInfo;,
        Lcom/miui/home/launcher/ScreenUtils$ScreensQuery;,
        Lcom/miui/home/launcher/ScreenUtils$AppPlaceQuery;,
        Lcom/miui/home/launcher/ScreenUtils$OccupidQuery;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    return-void
.end method

.method private static addToHomeScreen(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V
    .locals 6
    .parameter "context"
    .parameter "info"
    .parameter "db"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p3, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    const/4 v5, 0x1

    .line 292
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_1

    .line 293
    const-string v2, "ScreenUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating home screen item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p2, p4, p5}, Lcom/miui/home/launcher/ScreenUtils;->verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {p2, p4, p5, v2}, Lcom/miui/home/launcher/ScreenUtils;->updateFavorite(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-static {p0, p2, p3, v5, v5}, Lcom/miui/home/launcher/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;II)Lcom/miui/home/launcher/ScreenUtils$CellInfo;

    move-result-object v0

    .line 302
    .local v0, cellInfo:Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    if-eqz v0, :cond_0

    .line 306
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/ScreenUtils;->buildValuesForInsert(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/miui/home/launcher/ScreenUtils$CellInfo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 307
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private static buildValuesForInsert(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/miui/home/launcher/ScreenUtils$CellInfo;)Landroid/content/ContentValues;
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 384
    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 385
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "itemType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v1, "container"

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v1, "iconPackage"

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v1, "screen"

    iget-wide v2, p2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v1, "cellX"

    iget v2, p2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v1, "cellY"

    iget v2, p2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const-string v1, "spanX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const-string v1, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string v1, "ScreenUtils"

    const-string v2, "Adding new app %s to screen %d, pos (%d, %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    iget-wide v4, p2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget v5, p2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v0
.end method

.method private static buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;
    .locals 7
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    .line 368
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v3, values:Landroid/content/ContentValues;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 372
    .local v2, packageName:Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 373
    const/high16 v4, 0x1020

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    const-string v4, "intent"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, label:Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v4, "itemFlags"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v4, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    return-object v3
.end method

.method private static deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 154
    const-string v0, "favorites"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private static ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 4
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "screenOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    add-int/lit8 v2, p3, 0x1

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 343
    .local v1, screenCountNeeded:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 344
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {p0, p1, v0, v2}, Lcom/miui/home/launcher/ScreenUtils;->insertScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;IZ)Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 346
    :cond_1
    return-void
.end method

.method static ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V
    .locals 4
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    const-string v0, "favorites._id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/ScreenUtils;->ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method static ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "where"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    const/4 v5, 0x0

    .line 318
    const-string v1, "favorites JOIN screens ON (screen=screens._id) "

    sget-object v2, Lcom/miui/home/launcher/ScreenUtils$AppPlaceQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 326
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 337
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/ScreenUtils;->ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static fillEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 481
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    const-string v3, "spanX"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 482
    .local v1, spanX:I
    const-string v3, "spanY"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 483
    .local v2, spanY:I
    invoke-static {p0, p1, p2, v1, v2}, Lcom/miui/home/launcher/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;II)Lcom/miui/home/launcher/ScreenUtils$CellInfo;

    move-result-object v0

    .line 484
    .local v0, cellInfo:Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    if-nez v0, :cond_0

    .line 485
    const/4 v3, 0x0

    .line 492
    :goto_0
    return v3

    .line 489
    :cond_0
    const-string v3, "screen"

    iget-wide v4, v0, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 490
    const-string v3, "cellX"

    iget v4, v0, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string v3, "cellY"

    iget v4, v0, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static fillOccupied([[IIIII)V
    .locals 4
    .parameter "occupied"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 638
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    .line 639
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    .line 640
    aget-object v2, p0, v0

    sub-int v3, v1, p2

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 638
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    .locals 12
    .parameter "context"
    .parameter "db"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 513
    new-instance v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;

    invoke-direct {v2, v4}, Lcom/miui/home/launcher/ScreenUtils$CellInfo;-><init>(Lcom/miui/home/launcher/ScreenUtils$1;)V

    .line 514
    .local v2, cellInfo:Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    iput v10, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    .line 515
    iput v10, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellX:I

    .line 516
    iput v10, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    .line 517
    iput p2, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanX:I

    .line 518
    iput p3, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanY:I

    .line 520
    const-string v3, "container=-100 AND screenOrder=(SELECT MAX(screenOrder) FROM favorites JOIN screens ON (screen=screens._id) )"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/miui/home/launcher/ScreenUtils$CellInfo;

    move-result-object v2

    .line 521
    iget v0, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    move-object v4, v2

    .line 537
    :cond_0
    :goto_0
    return-object v4

    .line 525
    :cond_1
    new-array v9, v5, [Ljava/lang/String;

    .line 528
    .local v9, selectionArgs:[Ljava/lang/String;
    const/16 v11, 0x1d

    .local v11, i:I
    :goto_1
    if-ltz v11, :cond_0

    .line 529
    iput v11, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    .line 530
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    .line 531
    const-string v8, "container=-100 AND screenOrder=?"

    move-object v5, p0

    move-object v6, p1

    move-object v7, v2

    invoke-static/range {v5 .. v10}, Lcom/miui/home/launcher/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/miui/home/launcher/ScreenUtils$CellInfo;

    move-result-object v2

    .line 532
    iget v0, v2, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    if-ne v0, v11, :cond_2

    move-object v4, v2

    .line 533
    goto :goto_0

    .line 528
    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1
.end method

.method private static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    .locals 13
    .parameter "context"
    .parameter "db"
    .parameter "guessed"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "appendAtLast"

    .prologue
    .line 564
    const-string v2, "favorites JOIN screens ON (screen=screens._id) "

    sget-object v3, Lcom/miui/home/launcher/ScreenUtils$AppPlaceQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "cellY ASC, cellX ASC"

    move-object v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 573
    .local v9, c:Landroid/database/Cursor;
    move-object v10, p2

    .line 574
    .local v10, cellInfo:Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountX()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountY()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    .line 576
    .local v11, occupied:[[I
    :goto_0
    if-eqz v9, :cond_3

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 577
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 578
    .local v12, screenOrder:I
    iget v1, v10, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    if-le v12, v1, :cond_2

    .line 579
    iput v12, v10, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    .line 583
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v11, v1, v2, v3, v4}, Lcom/miui/home/launcher/ScreenUtils;->fillOccupied([[IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 587
    .end local v12           #screenOrder:I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    .line 588
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 580
    .restart local v12       #screenOrder:I
    :cond_2
    :try_start_1
    iget v1, v10, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v12, v1, :cond_0

    .line 587
    .end local v12           #screenOrder:I
    :cond_3
    if-eqz v9, :cond_4

    .line 588
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_4
    move/from16 v0, p5

    invoke-static {v11, v10, v0}, Lcom/miui/home/launcher/ScreenUtils;->findEmptyCell([[ILcom/miui/home/launcher/ScreenUtils$CellInfo;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 594
    iget v1, v10, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v10, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    .line 595
    const/4 v1, 0x0

    iput v1, v10, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellX:I

    .line 596
    const/4 v1, 0x0

    iput v1, v10, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    .line 599
    :cond_5
    return-object v10
.end method

.method static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;II)Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    .locals 4
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "spanX"
    .parameter "spanY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;II)",
            "Lcom/miui/home/launcher/ScreenUtils$CellInfo;"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    const/4 v1, 0x0

    .line 497
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountX()I

    move-result v2

    if-gt p3, v2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountY()I

    move-result v2

    if-le p4, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 509
    :goto_0
    return-object v0

    .line 500
    :cond_1
    invoke-static {p0, p1, p3, p4}, Lcom/miui/home/launcher/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)Lcom/miui/home/launcher/ScreenUtils$CellInfo;

    move-result-object v0

    .line 502
    .local v0, cellInfo:Lcom/miui/home/launcher/ScreenUtils$CellInfo;
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_3

    .line 503
    :cond_2
    const-string v2, "ScreenUtils"

    const-string v3, "Too many apps installed, not adding to home screen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 504
    goto :goto_0

    .line 507
    :cond_3
    iget v1, v0, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    invoke-static {p0, p1, p2, v1}, Lcom/miui/home/launcher/ScreenUtils;->ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 508
    iget v1, v0, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenOrder:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    iput-wide v1, v0, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->screenId:J

    goto :goto_0
.end method

.method private static findEmptyCell([[ILcom/miui/home/launcher/ScreenUtils$CellInfo;Z)Z
    .locals 9
    .parameter "occupied"
    .parameter "cellInfo"
    .parameter "appendAtLast"

    .prologue
    const/4 v8, 0x1

    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, finded:Z
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountY()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, y:I
    :goto_0
    if-ltz v5, :cond_5

    .line 606
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountX()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, x:I
    :goto_1
    if-ltz v4, :cond_6

    .line 607
    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanX:I

    add-int/2addr v6, v4

    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountX()I

    move-result v7

    if-gt v6, v7, :cond_0

    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanX:I

    add-int/2addr v6, v5

    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getCellCountY()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 606
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 610
    :cond_1
    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanY:I

    invoke-static {p0, v4, v5, v6, v7}, Lcom/miui/home/launcher/ScreenUtils;->testOccupied([[IIIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 611
    iput v4, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellX:I

    .line 612
    iput v5, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    .line 613
    const/4 v0, 0x1

    goto :goto_2

    .line 615
    :cond_2
    if-eqz p2, :cond_0

    .line 616
    if-eqz v0, :cond_5

    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    if-ne v6, v5, :cond_5

    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanX:I

    if-gt v6, v8, :cond_3

    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanY:I

    if-le v6, v8, :cond_5

    .line 617
    :cond_3
    aget-object v6, p0, v4

    aget v6, v6, v5

    add-int/lit8 v3, v6, -0x1

    .line 618
    .local v3, upRange:I
    iget v1, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    .line 619
    .local v1, top:I
    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    add-int/lit8 v2, v6, -0x1

    .local v2, u:I
    :goto_3
    if-ltz v2, :cond_4

    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    sub-int/2addr v6, v2

    if-gt v6, v3, :cond_4

    .line 620
    iget v6, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellX:I

    iget v7, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanX:I

    iget v8, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->spanY:I

    invoke-static {p0, v6, v2, v7, v8}, Lcom/miui/home/launcher/ScreenUtils;->testOccupied([[IIIII)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 621
    move v1, v2

    .line 619
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 626
    :cond_4
    iput v1, p1, Lcom/miui/home/launcher/ScreenUtils$CellInfo;->cellY:I

    .line 634
    .end local v1           #top:I
    .end local v2           #u:I
    .end local v3           #upRange:I
    .end local v4           #x:I
    :cond_5
    return v0

    .line 605
    .restart local v4       #x:I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method private static getPackageItemIds(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter "db"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v9, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, "favorites"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "iconPackage=? AND (itemType=0 OR itemFlags&1!= 0)"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 33
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 38
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 37
    :cond_1
    if-eqz v8, :cond_2

    .line 38
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_2
    return-object v9
.end method

.method private static insertScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;IZ)Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "order"
    .parameter "notify"

    .prologue
    .line 350
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v2, v:Landroid/content/ContentValues;
    const-string v3, "screenOrder"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v3, "screens"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 353
    .local v0, id:J
    const-string v3, "ScreenUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added screen id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz p3, :cond_0

    .line 357
    sget-object v3, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/miui/home/launcher/ScreenUtils;->notifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 360
    :cond_0
    new-instance v3, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    invoke-direct {v3, v0, v1, p2}, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;-><init>(JI)V

    return-object v3
.end method

.method static loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 10
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 541
    const-string v1, "screens"

    sget-object v2, Lcom/miui/home/launcher/ScreenUtils$ScreensQuery;->COLUMNS:[Ljava/lang/String;

    const-string v7, "screenOrder ASC"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 550
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    new-instance v0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;-><init>(JI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 556
    .end local v9           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 557
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 556
    .restart local v9       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 557
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9
.end method

.method private static notifyChange(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    return-void
.end method

.method static removePackage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "db"
    .parameter "packageName"

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->getPackageItemIds(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private static testOccupied([[IIIII)Z
    .locals 3
    .parameter "occupied"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 646
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_2

    .line 647
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    .line 648
    aget-object v2, p0, v0

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 649
    const/4 v2, 0x0

    .line 653
    .end local v1           #y:I
    :goto_2
    return v2

    .line 647
    .restart local v1       #y:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    .end local v1           #y:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private static updateFavorite(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .locals 5
    .parameter "db"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 147
    const-string v0, "favorites"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method static updateHomeScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 11
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "packageName"
    .parameter "keepItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;>;"
    invoke-static {p0, p3}, Lcom/miui/home/launcher/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 54
    .local v10, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, p3}, Lcom/miui/home/launcher/ScreenUtils;->getPackageItemIds(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 55
    .local v8, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "ScreenUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating home screen for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v9, 0x0

    .line 58
    .local v9, index:I
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 59
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 60
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/ScreenUtils;->addToHomeScreen(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V

    .line 61
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 64
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v0, "ScreenUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activities found for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    if-nez p4, :cond_5

    .line 68
    move v6, v9

    .local v6, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 69
    const-string v0, "ScreenUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing useless home screen item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 74
    :cond_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    :cond_4
    const-string v0, "favorites"

    const-string v2, "iconPackage=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    .end local v6           #i:I
    :cond_5
    return-void
.end method

.method static verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 1
    .parameter "db"
    .parameter "id"

    .prologue
    .line 172
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/ScreenUtils;->verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .locals 17
    .parameter "db"
    .parameter "id"
    .parameter "validPackages"

    .prologue
    .line 176
    const/4 v10, 0x0

    .line 178
    .local v10, c:Landroid/database/Cursor;
    const/4 v12, -0x1

    .local v12, count:I
    move v15, v12

    .local v15, sid:I
    move v14, v12

    .local v14, cy:I
    move v13, v12

    .local v13, cx:I
    move v11, v12

    .line 180
    .local v11, cid:I
    :try_start_0
    const-string v3, "favorites"

    sget-object v4, Lcom/miui/home/launcher/ScreenUtils$OccupidQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 186
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 187
    const/4 v2, 0x1

    if-ne v12, v2, :cond_0

    .line 188
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v11, -0x1

    .line 190
    :goto_0
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v13, -0x1

    .line 191
    :goto_1
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v14, -0x1

    .line 192
    :goto_2
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    const/4 v15, -0x1

    .line 196
    :cond_0
    :goto_3
    if-eqz v10, :cond_1

    .line 197
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_1
    const/4 v10, 0x0

    .line 201
    const/4 v12, -0x1

    .line 202
    const/16 v2, -0x65

    if-ne v11, v2, :cond_a

    .line 204
    :try_start_1
    const-string v3, "favorites"

    sget-object v4, Lcom/miui/home/launcher/ScreenUtils$OccupidQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "container=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v7, -0x65

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/ResConfig;->getHotseatCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-gt v12, v2, :cond_8

    .line 212
    const/4 v2, 0x1

    .line 218
    if-eqz v10, :cond_2

    .line 219
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    :goto_4
    return v2

    .line 189
    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    goto :goto_0

    .line 190
    :cond_4
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_1

    .line 191
    :cond_5
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_2

    .line 192
    :cond_6
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    goto :goto_3

    .line 196
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_7

    .line 197
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 214
    :cond_8
    :try_start_3
    invoke-static/range {p0 .. p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    const/4 v2, 0x0

    .line 218
    if-eqz v10, :cond_2

    .line 219
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 218
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_9

    .line 219
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 222
    :cond_a
    const/16 v2, -0x64

    if-ne v11, v2, :cond_15

    .line 223
    const/4 v2, -0x1

    if-eq v15, v2, :cond_b

    const/4 v2, -0x1

    if-eq v13, v2, :cond_b

    const/4 v2, -0x1

    if-ne v14, v2, :cond_c

    .line 224
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 228
    :cond_c
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM favorites WHERE container=-100 AND screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cellX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cellX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "spanX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cellY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cellY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "spanY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 236
    .local v16, sql:Ljava/lang/String;
    if-eqz p3, :cond_d

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND iconPackage IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 239
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 241
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v12

    .line 243
    if-eqz v10, :cond_e

    .line 244
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_e
    if-lez v12, :cond_11

    .line 248
    if-nez p3, :cond_f

    .line 249
    invoke-static/range {p0 .. p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 267
    :cond_f
    :goto_5
    if-nez v12, :cond_14

    const/4 v2, 0x1

    goto/16 :goto_4

    .line 243
    .end local v16           #sql:Ljava/lang/String;
    :catchall_2
    move-exception v2

    if-eqz v10, :cond_10

    .line 244
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v2

    .line 254
    .restart local v16       #sql:Ljava/lang/String;
    :cond_11
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM screens WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 257
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_12

    .line 258
    invoke-static/range {p0 .. p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 259
    const/4 v2, 0x0

    .line 262
    if-eqz v10, :cond_2

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 262
    :cond_12
    if-eqz v10, :cond_f

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 262
    :catchall_3
    move-exception v2

    if-eqz v10, :cond_13

    .line 263
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v2

    .line 267
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 268
    .end local v16           #sql:Ljava/lang/String;
    :cond_15
    if-lez v11, :cond_19

    .line 270
    :try_start_6
    const-string v3, "favorites"

    sget-object v4, Lcom/miui/home/launcher/ScreenUtils$OccupidQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 276
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 277
    if-nez v12, :cond_16

    .line 278
    invoke-static/range {p0 .. p2}, Lcom/miui/home/launcher/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 281
    :cond_16
    if-eqz v10, :cond_17

    .line 282
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_17
    const/4 v2, 0x1

    if-ne v12, v2, :cond_1a

    const/4 v2, 0x1

    goto/16 :goto_4

    .line 281
    :catchall_4
    move-exception v2

    if-eqz v10, :cond_18

    .line 282
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v2

    .line 286
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 288
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_4
.end method
