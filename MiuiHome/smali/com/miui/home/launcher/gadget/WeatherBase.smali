.class public abstract Lcom/miui/home/launcher/gadget/WeatherBase;
.super Landroid/widget/FrameLayout;
.source "WeatherBase.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Gadget;


# static fields
.field public static final N_ARRAY_WEATHER_IMAGE:[I


# instance fields
.field private isFlip:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsInEdit:Z

.field protected mPid:Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/gadget/WeatherBase;->N_ARRAY_WEATHER_IMAGE:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTickerStopped:Z

    .line 45
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mIsInEdit:Z

    .line 53
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->isFlip:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/WeatherBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/WeatherBase;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/WeatherBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static deleteConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method private getNextCity(Z)Ljava/lang/String;
    .locals 14
    .parameter "reverse"

    .prologue
    .line 295
    const/4 v6, 0x0

    .line 296
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 298
    .local v11, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Weather$SelectedCity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "posID"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "position ,_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 306
    :goto_0
    if-eqz v6, :cond_4

    .line 308
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/WeatherBase;->setFlip(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    const/4 v0, 0x0

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 350
    :goto_1
    return-object v0

    .line 312
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/WeatherBase;->setFlip(Z)V

    .line 318
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .end local v11           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v12, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, pid:Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v12

    .end local v12           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 315
    .end local v10           #pid:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/WeatherBase;->setFlip(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 327
    :catchall_0
    move-exception v0

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 330
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 336
    .end local v11           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #pid:Ljava/lang/String;
    .restart local v12       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v8, 0x0

    .line 337
    .local v8, index:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 338
    .local v9, nums:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    if-ge v7, v9, :cond_6

    .line 339
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 340
    .local v13, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 341
    if-nez p1, :cond_7

    .line 342
    add-int/lit8 v0, v7, 0x1

    rem-int v8, v0, v9

    .line 350
    .end local v13           #str:Ljava/lang/String;
    :cond_6
    :goto_5
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v12

    .end local v12           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 344
    .end local v11           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #str:Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v7, -0x1

    add-int/2addr v0, v9

    rem-int v8, v0, v9

    .line 346
    goto :goto_5

    .line 338
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 327
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v9           #nums:I
    .end local v10           #pid:Ljava/lang/String;
    .end local v13           #str:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 303
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private updateGadget(Ljava/lang/String;)V
    .locals 8
    .parameter "pid"

    .prologue
    .line 379
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 380
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "posID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Weather$Widget;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type_id=? AND widget_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getTypeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getItemId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v1

    goto :goto_0

    .line 387
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected addGadget()V
    .locals 4

    .prologue
    .line 356
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "type_id"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getTypeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v1, "widget_id"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Weather$Widget;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v1

    goto :goto_0

    .line 363
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public deleteConfig()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/WeatherBase;->deleteConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected getCurrentCityName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 282
    :goto_0
    return-object v0

    .line 256
    :cond_0
    const/4 v6, 0x0

    .line 257
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getLanguage()I

    move-result v7

    .line 258
    .local v7, language_type:I
    if-ne v7, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Weather$City;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pinyin"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "posID=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 271
    :goto_1
    if-eqz v6, :cond_1

    .line 273
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 277
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 280
    .end local v7           #language_type:I
    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    move-object v0, v8

    .line 282
    goto :goto_0

    .line 265
    .restart local v7       #language_type:I
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Weather$SelectedCity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "posID=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "position ,_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 277
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 512
    const-string v2, ""

    .line 513
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0073

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, format:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, date:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getLanguage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/util/LunarDate;->getString(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 527
    :goto_0
    return-object v2

    .line 518
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/util/LunarDate;->getString(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 519
    goto :goto_0

    .line 521
    :pswitch_1
    move-object v2, v0

    .line 522
    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescription(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "description"
    .parameter "weatherType"

    .prologue
    .line 482
    const-string v0, ""

    .line 483
    .local v0, ret:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 491
    move-object v0, p1

    .line 495
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :pswitch_0
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, weather_type:[Ljava/lang/String;
    aget-object v0, v1, p2

    .line 489
    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId()J
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    .line 122
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getLanguage()I
    .locals 4

    .prologue
    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, info:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, language:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, country:Ljava/lang/String;
    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 470
    :cond_0
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 472
    const-string v3, "TW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    const/4 v1, 0x2

    .line 474
    :cond_1
    const-string v3, "CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 475
    const/4 v1, 0x0

    .line 478
    :cond_2
    return v1
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weather_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mProjection:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "temperature_range"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "weather_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mProjection:[Ljava/lang/String;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTemperatureRange(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "temperatureRange"

    .prologue
    .line 499
    const-string v1, ""

    .line 500
    .local v1, ret:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    const-string v2, "\u4f4e\u6e29"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, lowTemp:Ljava/lang/String;
    const-string v2, "\u4f4e\u6e29"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .end local v0           #lowTemp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 505
    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method protected abstract getTypeId()I
.end method

.method protected getWeather()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 418
    .local v7, time:J
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Weather$DailyWeather;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 426
    :goto_0
    return-object v6

    .line 424
    :catch_0
    move-exception v0

    goto :goto_0

    .line 423
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected gotoMarket()V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "market://details?id=com.miui.weather2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 444
    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 446
    return-void
.end method

.method protected gotoWeather()V
    .locals 3

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->isWeatherAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v0, iCycle:Landroid/content/Intent;
    const-string v1, "com.miui.weather2"

    const-string v2, "com.miui.weather2.ActivityWeatherCycle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v1, "intent_key_city_id"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 439
    .end local v0           #iCycle:Landroid/content/Intent;
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->gotoMarket()V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTickerStopped:Z

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/miui/home/launcher/gadget/WeatherBase$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/WeatherBase$1;-><init>(Lcom/miui/home/launcher/gadget/WeatherBase;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTicker:Ljava/lang/Runnable;

    .line 186
    return-void
.end method

.method public isFlip()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->isFlip:Z

    return v0
.end method

.method public isInEdit()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mIsInEdit:Z

    return v0
.end method

.method protected isNight()Z
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 207
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 210
    .local v1, hour:I
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 211
    :cond_0
    const/4 v2, 0x1

    .line 214
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWeatherAppInstalled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 455
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.miui.weather2"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    const/4 v2, 0x1

    .line 459
    :goto_0
    return v2

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public loadConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->loadConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->init()V

    .line 85
    return-void
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->deleteConfig()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTickerStopped:Z

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onEditDisable()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mIsInEdit:Z

    .line 167
    return-void
.end method

.method public onEditNormal()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mIsInEdit:Z

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->pause()V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->resume()V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTickerStopped:Z

    .line 196
    return-void
.end method

.method protected removeGadget()V
    .locals 7

    .prologue
    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Weather$Widget;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "type_id=? AND widget_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getTypeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getItemId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTickerStopped:Z

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-void
.end method

.method public saveConfig(Ljava/lang/String;)Z
    .locals 5
    .parameter "config"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getItemId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 98
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFlip(Z)V
    .locals 0
    .parameter "isFlip"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->isFlip:Z

    .line 61
    return-void
.end method

.method protected setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "view"
    .parameter "newValue"

    .prologue
    .line 449
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-void
.end method

.method protected updateCity(Z)V
    .locals 2
    .parameter "reverse"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/WeatherBase;->getNextCity(Z)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, pid:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/gadget/WeatherBase;->saveConfig(Ljava/lang/String;)Z

    .line 290
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/WeatherBase;->mPid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/gadget/WeatherBase;->updateGadget(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 133
    return-void
.end method

.method protected updateCurTime()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method
