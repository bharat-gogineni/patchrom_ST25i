.class public Lcom/miui/gallery/gadget/WidgetConfigure;
.super Landroid/app/Activity;
.source "WidgetConfigure.java"


# static fields
.field private static MAX_WIDGET_SIDE:I

.field private static WIDGET_SCALE_FACTOR:F


# instance fields
.field private mAppWidgetId:I

.field private mPickedItem:Landroid/net/Uri;

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/high16 v0, 0x3fc0

    sput v0, Lcom/miui/gallery/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    .line 54
    const/16 v0, 0x168

    sput v0, Lcom/miui/gallery/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mWidgetType:I

    return-void
.end method

.method private setChoosenAlbum(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 153
    const-string v2, "album-path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, albumPath:Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 156
    .local v1, helper:Lcom/miui/gallery/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v2, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;)Z

    .line 158
    iget v2, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    throw v2
.end method

.method private setChoosenPhoto(Landroid/content/Intent;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v11, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/miui/gallery/gadget/WidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 123
    .local v3, res:Landroid/content/res/Resources;
    const/high16 v8, 0x7f09

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 124
    .local v7, width:F
    const v8, 0x7f090001

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 128
    .local v1, height:F
    sget v8, Lcom/miui/gallery/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    sget v9, Lcom/miui/gallery/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    int-to-float v9, v9

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 131
    .local v4, scale:F
    mul-float v8, v7, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 132
    .local v6, widgetWidth:I
    mul-float v8, v1, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 134
    .local v5, widgetHeight:I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 135
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.camera.action.CROP"

    iget-object v10, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "outputX"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "outputY"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "aspectX"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "aspectY"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "scaleUpIfNeeded"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "scale"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "return-data"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 143
    .local v2, request:Landroid/content/Intent;
    iget-object v8, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-static {v2, v8}, Lcom/miui/gallery/util/GalleryUtils;->setViewIntentDataAndType(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 145
    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {p0, v2, v8}, Lcom/miui/gallery/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v8, "WidgetConfigure"

    const-string v9, "Failed to start CROP activity, e.g. select a video."

    invoke-static {v8, v9}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPhotoWidget(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 110
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 111
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, helper:Lcom/miui/gallery/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v2, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    iget-object v3, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z

    .line 114
    iget v2, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    throw v2
.end method

.method private setWidgetType(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f0b0021

    .line 165
    const-string v0, "widget-type"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mWidgetType:I

    .line 166
    iget v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mWidgetType:I

    const v1, 0x7f0b001f

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/app/AlbumPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    :goto_0
    return-void

    .line 169
    :cond_0
    iget v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mWidgetType:I

    if-ne v0, v2, :cond_1

    .line 170
    new-instance v1, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 172
    :try_start_0
    iget v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;)Z

    .line 173
    iget v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v0}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/app/DialogPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updateWidgetAndFinish(Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)V
    .locals 6
    .parameter "entry"

    .prologue
    .line 78
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 79
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    iget v2, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v2, p1}, Lcom/miui/gallery/gadget/PhotoAppWidgetProvider;->buildWidget(Landroid/content/Context;ILcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 80
    .local v1, views:Landroid/widget/RemoteViews;
    iget v2, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 81
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "appWidgetId"

    iget v5, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/gadget/WidgetConfigure;->finish()V

    .line 84
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 88
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/gallery/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/gadget/WidgetConfigure;->finish()V

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 96
    invoke-direct {p0, p3}, Lcom/miui/gallery/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 98
    invoke-direct {p0, p3}, Lcom/miui/gallery/gadget/WidgetConfigure;->setChoosenAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 100
    invoke-direct {p0, p3}, Lcom/miui/gallery/gadget/WidgetConfigure;->setChoosenPhoto(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 102
    invoke-direct {p0, p3}, Lcom/miui/gallery/gadget/WidgetConfigure;->setPhotoWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/gadget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 65
    iget v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mAppWidgetId:I

    if-ne v0, v2, :cond_1

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/gadget/WidgetConfigure;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/gadget/WidgetConfigure;->finish()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget v0, p0, Lcom/miui/gallery/gadget/WidgetConfigure;->mWidgetType:I

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/gadget/WidgetTypeChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
