.class public Lcom/miui/gallery/gadget/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildFrameWidget(Landroid/content/Context;ILcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f04001d

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 94
    :try_start_0
    iget-object v0, p2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 95
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    const v2, 0x7f0b0070

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget-object v0, p2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    :try_start_1
    iget-object v0, p2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/gadget/WidgetClickHandler;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 108
    const v2, 0x7f0b0070

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :cond_0
    :goto_1
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v2, "WidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot load widget image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    const-string v2, "WidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot load widget uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static buildStackWidget(Landroid/content/Context;ILcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b001a

    .line 70
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040007

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/gadget/WidgetService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v2, "widget-type"

    iget v3, p2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v2, "album-path"

    iget-object v3, p2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget://gallery/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 80
    const v1, 0x7f0b0018

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/gadget/WidgetClickHandler;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 87
    return-object v0
.end method

.method static buildWidget(Landroid/content/Context;ILcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "entry"

    .prologue
    .line 39
    iget v0, p2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;->type:I

    packed-switch v0, :pswitch_data_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/gadget/PhotoAppWidgetProvider;->buildStackWidget(Landroid/content/Context;ILcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/gadget/PhotoAppWidgetProvider;->buildFrameWidget(Landroid/content/Context;ILcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 119
    new-instance v2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 120
    .local v2, helper:Lcom/miui/gallery/gadget/WidgetDatabaseHelper;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 121
    .local v0, appWidgetId:I
    invoke-virtual {v2, v0}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->deleteEntry(I)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v0           #appWidgetId:I
    :cond_0
    invoke-virtual {v2}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    .line 124
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 52
    new-instance v2, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, helper:Lcom/miui/gallery/gadget/WidgetDatabaseHelper;
    move-object v0, p3

    .local v0, arr$:[I
    :try_start_0
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget v4, v0, v3

    .line 55
    .local v4, id:I
    invoke-virtual {v2, v4}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v1

    .line 56
    .local v1, entry:Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;
    if-eqz v1, :cond_0

    .line 57
    invoke-static {p1, v4, v1}, Lcom/miui/gallery/gadget/PhotoAppWidgetProvider;->buildWidget(Landroid/content/Context;ILcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 58
    .local v6, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2, v4, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 54
    .end local v6           #views:Landroid/widget/RemoteViews;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const-string v7, "WidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot load widget: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 64
    .end local v1           #entry:Lcom/miui/gallery/gadget/WidgetDatabaseHelper$Entry;
    .end local v3           #i$:I
    .end local v4           #id:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    throw v7

    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/gadget/WidgetDatabaseHelper;->close()V

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 67
    return-void
.end method
