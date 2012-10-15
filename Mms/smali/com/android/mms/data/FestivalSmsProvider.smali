.class public Lcom/android/mms/data/FestivalSmsProvider;
.super Landroid/content/ContentProvider;
.source "FestivalSmsProvider.java"


# static fields
.field public static final URI_GET_MORE_MESSAGES:Landroid/net/Uri;

.field public static final URI_QUERY_CATEGORIES:Landroid/net/Uri;

.field public static final URI_QUERY_FESTIVAL_INFO:Landroid/net/Uri;

.field public static final URI_QUERY_MESSAGES:Landroid/net/Uri;

.field public static final URI_RESET_DATABASE:Landroid/net/Uri;

.field public static final URI_UPDATE:Landroid/net/Uri;

.field public static final s_urlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    const-string v0, "content://com.android.mms.festival/categories"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_CATEGORIES:Landroid/net/Uri;

    .line 18
    const-string v0, "content://com.android.mms.festival/festival_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_FESTIVAL_INFO:Landroid/net/Uri;

    .line 20
    const-string v0, "content://com.android.mms.festival/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_MESSAGES:Landroid/net/Uri;

    .line 22
    const-string v0, "content://com.android.mms.festival/update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsProvider;->URI_UPDATE:Landroid/net/Uri;

    .line 24
    const-string v0, "content://com.android.mms.festival/get_more_messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsProvider;->URI_GET_MORE_MESSAGES:Landroid/net/Uri;

    .line 26
    const-string v0, "content://com.android.mms.festival/reset_database"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsProvider;->URI_RESET_DATABASE:Landroid/net/Uri;

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 44
    sget-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.festival"

    const-string v2, "festival_info"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.festival"

    const-string v2, "categories"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.festival"

    const-string v2, "messages"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.festival"

    const-string v2, "update"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.festival"

    const-string v2, "get_more_messages/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.festival"

    const-string v2, "reset_database"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private notifyContentChange(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/data/FestivalSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v1, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numCategoriesUpdated:I

    if-lez v1, :cond_0

    .line 142
    const-string v1, "content://com.android.mms.festival/categories"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 145
    :cond_0
    iget v1, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    if-lez v1, :cond_1

    .line 146
    const-string v1, "content://com.android.mms.festival/messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 149
    :cond_1
    iget-boolean v1, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->festivalInfoUpdated:Z

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "content://com.android.mms.festival/festival_info"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 153
    :cond_2
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/android/mms/data/FestivalSmsDatabase;

    invoke-virtual {p0}, Lcom/android/mms/data/FestivalSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/data/FestivalSmsDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsProvider;->mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 79
    sget-object v0, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsProvider;->mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;

    const-string v1, "festival"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/FestivalSmsDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 98
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/data/FestivalSmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 101
    :cond_0
    return-object v8

    .line 86
    .end local v8           #cursor:Landroid/database/Cursor;
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsProvider;->mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;

    const-string v1, "categories"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/FestivalSmsDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    .restart local v8       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 91
    .end local v8           #cursor:Landroid/database/Cursor;
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsProvider;->mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;

    const-string v1, "messages"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/FestivalSmsDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 94
    .restart local v8       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 106
    sget-object v3, Lcom/android/mms/data/FestivalSmsProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :pswitch_0
    new-instance v0, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;

    invoke-direct {v0}, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;-><init>()V

    .line 109
    .local v0, info:Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;
    iget-object v3, p0, Lcom/android/mms/data/FestivalSmsProvider;->mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/FestivalSmsDatabase;->update(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 130
    .end local v0           #info:Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;
    :cond_0
    :goto_0
    return v1

    .line 112
    .restart local v0       #info:Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mms/data/FestivalSmsProvider;->notifyContentChange(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 113
    iget v2, v0, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    iget v3, v0, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numCategoriesUpdated:I

    add-int/2addr v2, v3

    iget-boolean v3, v0, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->festivalInfoUpdated:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v1, v2

    goto :goto_0

    .line 118
    .end local v0           #info:Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;
    :pswitch_1
    new-instance v0, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;

    invoke-direct {v0}, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;-><init>()V

    .line 119
    .restart local v0       #info:Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;
    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsProvider;->mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/mms/data/FestivalSmsDatabase;->getMoreMessages(Ljava/lang/String;Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 120
    goto :goto_0

    .line 122
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/mms/data/FestivalSmsProvider;->notifyContentChange(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 123
    iget v1, v0, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    goto :goto_0

    .line 127
    .end local v0           #info:Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;
    :pswitch_2
    iget-object v3, p0, Lcom/android/mms/data/FestivalSmsProvider;->mDatabase:Lcom/android/mms/data/FestivalSmsDatabase;

    invoke-virtual {v3}, Lcom/android/mms/data/FestivalSmsDatabase;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 130
    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
