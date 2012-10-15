.class public Lcom/miui/player/ui/MediaAppWidgetProvider_1x;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider_1x.java"


# static fields
.field private static sAlbumChange:Z

.field private static sCurrentAlbum:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "views"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 50
    .local v1, gm:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 51
    .local v0, appWidgetIds:[I
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v1, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 54
    :cond_0
    return-void
.end method

.method private updateAlbum(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "views"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0200dd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 115
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 116
    .local v11, width:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 117
    .local v6, height:I
    const-string v12, "display_album"

    invoke-static {p1, v12}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, bm:Landroid/graphics/Bitmap;
    sget-boolean v12, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    if-nez v12, :cond_1

    .line 120
    sget-object v1, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    .line 145
    :goto_0
    if-eqz v1, :cond_5

    .line 146
    const v12, 0x7f0c0005

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 147
    const v12, 0x7f0c0005

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    const v12, 0x7f0c0006

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 149
    const v12, 0x7f0c0004

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 156
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_1
    const-string v12, "album_path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, path:Ljava/lang/String;
    const-string v12, "album_uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 124
    .local v10, uri:Landroid/net/Uri;
    const-string v12, "android_album"

    invoke-static {p1, v12}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 125
    invoke-static {p1, v10, v11, v6}, Lcom/miui/player/meta/AlbumManager;->getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    :cond_2
    if-nez v1, :cond_3

    if-eqz v7, :cond_3

    .line 128
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 130
    invoke-static {v7, v11, v6}, Lcom/miui/player/meta/AlbumManager;->getArtistQuickFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    .end local v5           #file:Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 135
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f07001a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 136
    .local v8, radius:I
    const v12, 0x7f060021

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 137
    .local v3, color:I
    int-to-float v12, v8

    invoke-static {v1, v12, v3}, Lcom/xiaomi/common/util/BitmapHelper;->clipRoundCornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 138
    .local v2, cliped:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    move-object v1, v2

    .line 141
    .end local v2           #cliped:Landroid/graphics/Bitmap;
    .end local v3           #color:I
    .end local v8           #radius:I
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_4
    const/4 v12, 0x0

    sput-boolean v12, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    .line 142
    sput-object v1, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 151
    .end local v7           #path:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_5
    const v12, 0x7f0c0006

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    const v12, 0x7f0c0005

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 153
    const v12, 0x7f0c0004

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method


# virtual methods
.method public hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 62
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 63
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->hasInstances(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, action:Ljava/lang/String;
    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 76
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.miui.player.requeststatus"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v10, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 78
    .end local v10           #updateIntent:Landroid/content/Intent;
    :cond_2
    const-string v11, "com.miui.player.FAVORITE_CHANGED"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 79
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.miui.player.requestfavorite"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v10       #updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 81
    .end local v10           #updateIntent:Landroid/content/Intent;
    :cond_3
    const-string v11, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.miui.player.playbackcomplete"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.miui.player.metachanged"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.miui.player.queuechanged"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.miui.player.playstatechanged"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "com.miui.player.responsefavorite"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 87
    :cond_4
    const-string v11, "other"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, extra:Ljava/lang/String;
    const-string v11, "meta_changed_buffer"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "meta_changed_lyric"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 92
    const-string v11, "meta_changed_track"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "meta_changed_album"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 95
    :cond_5
    sput-boolean v6, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    .line 97
    :cond_6
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x7f03

    invoke-direct {v1, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 98
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->updateAlbum(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 99
    const-string v11, "album"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, albumName:Ljava/lang/String;
    const-string v11, "track"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, trackName:Ljava/lang/String;
    const-string v11, "artist"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, artistName:Ljava/lang/String;
    const-string v11, "playing"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 103
    .local v5, isPlaying:Z
    const-string v11, "channel_name"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 104
    .local v6, isChannel:Z
    :goto_1
    const-string v11, "favorite"

    invoke-virtual {p2, v11, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .local v7, isFavorite:Z
    move-object v0, p1

    .line 106
    invoke-static/range {v0 .. v7}, Lcom/miui/player/ui/controller/WidgetController_1x;->updateViews(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 108
    invoke-static {p1, v1, v5}, Lcom/miui/player/ui/controller/WidgetController_1x;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 109
    invoke-direct {p0, p1, v1}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .end local v6           #isChannel:Z
    .end local v7           #isFavorite:Z
    :cond_7
    move v6, v0

    .line 103
    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 41
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.requeststatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    return-void
.end method
