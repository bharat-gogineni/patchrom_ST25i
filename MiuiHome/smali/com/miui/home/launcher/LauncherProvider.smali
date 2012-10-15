.class public Lcom/miui/home/launcher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherProvider$SqlArguments;,
        Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;


# instance fields
.field private volatile mLock:Ljava/lang/Object;

.field private mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

.field private mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://com.miui.home.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    .line 1271
    return-void
.end method

.method private loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 1
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
    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 272
    invoke-static {p1}, Lcom/miui/home/launcher/ScreenUtils;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    return-object v0
.end method

.method private resetDatabaseIfNeeded()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->close()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 177
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 178
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 179
    .local v0, args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 180
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    array-length v3, p2

    .line 183
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 184
    iget-object v4, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-virtual {v1, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 188
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :goto_1
    return v4

    .line 183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 191
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    #calls: Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    invoke-static {v4, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$000(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)J

    .line 193
    array-length v4, p2

    monitor-exit v5

    goto :goto_1

    .line 194
    .end local v0           #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 188
    .restart local v0       #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "method"
    .parameter "request"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 256
    const-string v3, "ensureItemUnique"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    if-nez p3, :cond_0

    move-object v1, v2

    .line 258
    .local v1, packageList:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lcom/miui/home/launcher/ScreenUtils;->verifyItemPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "resultBoolean"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #packageList:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 257
    :cond_0
    const-string v3, "ensureItemUniqueArgPackagelist"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 265
    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 199
    iget-object v4, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 200
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    .local v0, args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 202
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 203
    .local v2, r:I
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    monitor-exit v4

    return v2

    .line 205
    .end local v0           #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #r:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public generateNewId()J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 119
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .local v0, args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v6, 0x0

    .line 145
    iget-object v7, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 146
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 147
    .local v0, args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    iget-object v8, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 148
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "favorites"

    iget-object v9, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 149
    .local v2, isFavorites:Z
    if-eqz v2, :cond_1

    .line 150
    const-string v8, "screen"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 151
    .local v5, screenId:Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 152
    monitor-exit v7

    .line 171
    .end local v5           #screenId:Ljava/lang/Integer;
    :goto_0
    return-object v6

    .line 155
    .restart local v5       #screenId:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v8, v1, v9, p2}, Lcom/miui/home/launcher/ScreenUtils;->fillEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 158
    monitor-exit v7

    goto :goto_0

    .line 172
    .end local v0           #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isFavorites:Z
    .end local v5           #screenId:Ljava/lang/Integer;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 163
    .restart local v0       #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isFavorites:Z
    :cond_1
    :try_start_1
    iget-object v8, v0, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 164
    .local v3, rowId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-gtz v8, :cond_2

    .line 165
    monitor-exit v7

    goto :goto_0

    .line 167
    :cond_2
    if-eqz v2, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v6, v1, v8, v3, v4}, Lcom/miui/home/launcher/ScreenUtils;->ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V

    .line 170
    :cond_3
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 171
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p1

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherProvider;->resetDatabaseIfNeeded()V

    .line 105
    new-instance v0, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherApplication;->setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 130
    iget-object v10, p0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 131
    :try_start_0
    new-instance v8, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    .local v8, args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 133
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 136
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 137
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 139
    monitor-exit v10

    return-object v9

    .line 140
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .end local v9           #result:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 211
    :try_start_0
    new-instance v3, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v3, v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    .local v3, args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v10}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 215
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v10, "packages"

    iget-object v12, v3, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 216
    const-string v10, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 217
    .local v8, packageName:Ljava/lang/String;
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v12, "delete"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6, v8}, Lcom/miui/home/launcher/ScreenUtils;->removePackage(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 223
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/home/launcher/LauncherProvider;->mOpenHelper:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    invoke-virtual {v10, v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->updateMaxId(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    const/4 v5, 0x0

    monitor-exit v11

    .line 246
    .end local v8           #packageName:Ljava/lang/String;
    :goto_1
    return v5

    .line 220
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/home/launcher/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "keepItem"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-static {v10, v6, v12, v8, v13}, Lcom/miui/home/launcher/ScreenUtils;->updateHomeScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    .end local v3           #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 227
    .restart local v3       #args:Lcom/miui/home/launcher/LauncherProvider$SqlArguments;
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    const-string v10, "screens"

    iget-object v12, v3, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 228
    const-string v10, "screenOrder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 229
    .local v4, bulkValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_3

    .line 230
    const-string v12, "Launcher.LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid resorder request: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_2

    const-string v10, "null"

    :goto_2
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v5, 0x0

    monitor-exit v11

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 234
    :cond_3
    const/4 v5, 0x0

    .line 235
    .local v5, count:I
    const/4 v7, 0x0

    .local v7, order:I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_4

    .line 236
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v9, update:Landroid/content/ContentValues;
    const-string v10, "screenOrder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    iget-object v12, v3, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v13, "_id=?"

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v14, v15

    invoke-virtual {v6, v12, v9, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v5, v10

    .line 235
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 242
    .end local v9           #update:Landroid/content/ContentValues;
    :cond_4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/miui/home/launcher/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 243
    monitor-exit v11

    goto/16 :goto_1

    .line 246
    .end local v4           #bulkValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #count:I
    .end local v7           #order:I
    :cond_5
    iget-object v10, v3, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v12, v3, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v13, v3, Lcom/miui/home/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v6, v10, v0, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
