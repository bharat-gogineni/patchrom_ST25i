.class public Lcom/miui/gallery/provider/GalleryCloudProvider;
.super Landroid/content/ContentProvider;
.source "GalleryCloudProvider.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-string v0, "content://com.miui.gallery.cloud.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->BASE_URI:Landroid/net/Uri;

    .line 31
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 32
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudSetting"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudSetting/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private matchTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, tableName:Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/provider/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 158
    const-string v1, "GalleryCloudProvider"

    const-string v2, "match table name, uri is invalid"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    const-string v0, "cloud"

    .line 150
    goto :goto_0

    .line 154
    :pswitch_1
    const-string v0, "cloudSetting"

    .line 155
    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 69
    .local v2, resolver:Landroid/content/ContentResolver;
    const-wide/16 v0, 0x0

    .line 71
    .local v0, longId:J
    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 76
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 77
    sget-object v3, Lcom/miui/gallery/provider/GalleryCloudProvider;->BASE_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 81
    :goto_1
    return-void

    .line 79
    :cond_1
    sget-object v3, Lcom/miui/gallery/provider/GalleryCloudProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 74
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 121
    const-string v0, "execSQL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p2}, Lcom/miui/gallery/provider/GalleryCloudProvider;->execSQL(Ljava/lang/String;)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 97
    sget-object v1, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 101
    :cond_0
    sget-object v1, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/miui/gallery/util/GalleryDBHelper;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, result:I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/provider/GalleryCloudProvider;->notifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 130
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/GalleryDBHelper;->execSQL(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/GalleryCloudProvider;->notifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 85
    sget-object v4, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v4, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/miui/gallery/util/GalleryDBHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 90
    .local v1, rowId:J
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 91
    .local v0, result:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/miui/gallery/provider/GalleryCloudProvider;->notifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    .line 45
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper;->isDbOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 55
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, limit:Ljava/lang/String;
    const-string v0, "groupBy"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, groupBy:Ljava/lang/String;
    const-string v0, "having"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, having:Ljava/lang/String;
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/util/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 109
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v0, :cond_0

    .line 110
    const/4 v6, 0x0

    .line 115
    :goto_0
    return v6

    .line 113
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryCloudProvider;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryCloudProvider;->matchTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryDBHelper;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 114
    .local v6, result:I
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/GalleryCloudProvider;->notifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method
