.class public Lcom/miui/player/ui/MusicBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "MusicBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/ui/controller/GridController$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;,
        Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    }
.end annotation


# instance fields
.field mBrowserController:Lcom/miui/player/ui/controller/MusicBrowserController;

.field private mGrid:Lcom/miui/player/ui/controller/GridController;

.field mIsRefreshMediaProvider:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private final mStatusListener:Landroid/content/BroadcastReceiver;

.field private mUpdateVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 302
    iput v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mUpdateVersion:I

    .line 314
    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicBrowserActivity$1;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 394
    iput-boolean v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    .line 395
    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicBrowserActivity$2;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private refreshMediaProvider()V
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    if-nez v0, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->triggerMediaMounted()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z

    goto :goto_0

    .line 423
    :cond_1
    const v0, 0x7f09000d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showFileFilterInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 479
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 480
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_first_install"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f09

    new-instance v3, Lcom/miui/player/ui/MusicBrowserActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity$4;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 495
    :cond_0
    return-void
.end method

.method private showImpunityDeclaration(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 452
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 453
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_first_to_online"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09008d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09008e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f09

    new-instance v4, Lcom/miui/player/ui/MusicBrowserActivity$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$3;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;Landroid/content/SharedPreferences;Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 474
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private triggerMediaMounted()V
    .locals 3

    .prologue
    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 430
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    return-void
.end method


# virtual methods
.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.miui.player.queuechanged"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected handleFolderProviderUpdated()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 2
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mBrowserController:Lcom/miui/player/ui/controller/MusicBrowserController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshMetaInfo(Z)V

    .line 270
    :cond_0
    return-void
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceNotification(Landroid/content/Intent;)V

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, updateAlbum:Z
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const-string v3, "other"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, extra:Ljava/lang/String;
    const-string v3, "meta_changed_album"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "meta_changed_track"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 292
    .end local v0           #extra:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v3, "update_version"

    iget v4, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mUpdateVersion:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 293
    .local v2, version:I
    invoke-virtual {p0, v2, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshController(IZ)V

    .line 294
    return-void

    .line 288
    .end local v2           #version:I
    .restart local v0       #extra:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 176
    const v6, 0x7f03001d

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/MusicBrowserActivity;->setContentView(I)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 178
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 180
    new-instance v7, Lcom/miui/player/ui/controller/GridController;

    const v6, 0x7f0c006c

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/MusicBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v8}, Lcom/miui/player/ui/controller/GridController;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v7, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mGrid:Lcom/miui/player/ui/controller/GridController;

    .line 181
    iget-object v6, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mGrid:Lcom/miui/player/ui/controller/GridController;

    const v7, 0x7f03001f

    sget-object v8, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    array-length v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/player/ui/controller/GridController;->layoutViews(II)V

    .line 182
    iget-object v6, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mGrid:Lcom/miui/player/ui/controller/GridController;

    invoke-virtual {v6, p0}, Lcom/miui/player/ui/controller/GridController;->setOnItemClickListener(Lcom/miui/player/ui/controller/GridController$OnItemClickListener;)V

    .line 184
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    .local v0, arr$:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 185
    .local v3, item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    iget-object v6, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mGrid:Lcom/miui/player/ui/controller/GridController;

    invoke-virtual {v3, p0, v6, v7}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->init(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/miui/player/ui/controller/GridController;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v3           #item:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    :cond_0
    new-instance v6, Lcom/miui/player/ui/controller/MusicBrowserController;

    invoke-direct {v6, p0}, Lcom/miui/player/ui/controller/MusicBrowserController;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mBrowserController:Lcom/miui/player/ui/controller/MusicBrowserController;

    .line 190
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 194
    iget-object v6, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.miui.player.MEDIA_PROVIDER_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 197
    .local v5, mediaProviderFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/miui/player/ui/MusicBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->showFileFilterInfo()V

    .line 200
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->cancel(Z)Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 232
    return-void
.end method

.method public onItemClick(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 261
    mul-int/lit8 v1, p2, 0x3

    add-int v0, v1, p3

    .line 262
    .local v0, pos:I
    sget-object v1, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->openItem(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)V

    .line 263
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, handled:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 256
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshMediaProvider()V

    .line 248
    const/4 v0, 0x1

    .line 249
    goto :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->onSearchRequested()Z

    .line 252
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onPause()V

    .line 220
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 237
    const/16 v0, 0x14

    const v1, 0x7f09000c

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 238
    const/16 v0, 0x15

    const/4 v1, 0x1

    const v2, 0x7f09004b

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 239
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 206
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshGrid()V

    .line 210
    :cond_0
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getUpdateVersion()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->refreshController(IZ)V

    .line 213
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mBrowserController:Lcom/miui/player/ui/controller/MusicBrowserController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshFavorte()V

    .line 214
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->sPlaylistItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mGrid:Lcom/miui/player/ui/controller/GridController;

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->updateByRequest(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/miui/player/ui/controller/GridController;)V

    .line 215
    return-void
.end method

.method openItem(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, handled:Z
    const-string v2, "vnd.android.cursor.dir/online_category"

    iget-object v3, p1, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity;->showImpunityDeclaration(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)Z

    move-result v0

    .line 441
    :cond_0
    if-nez v0, :cond_1

    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v3, p1, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "item_num"

    iget v3, p1, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mCachedNum:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 448
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method refreshController(IZ)V
    .locals 1
    .parameter "version"
    .parameter "updateAlbum"

    .prologue
    .line 304
    iget v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mUpdateVersion:I

    if-eq v0, p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mBrowserController:Lcom/miui/player/ui/controller/MusicBrowserController;

    invoke-virtual {v0, p2}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshMetaInfo(Z)V

    .line 306
    if-eqz p2, :cond_0

    .line 307
    iput p1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mUpdateVersion:I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mBrowserController:Lcom/miui/player/ui/controller/MusicBrowserController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MusicBrowserController;->refreshPlayState()V

    .line 312
    return-void
.end method

.method refreshGrid()V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->cancel(Z)Z

    .line 388
    :cond_0
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->sFolderItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mGrid:Lcom/miui/player/ui/controller/GridController;

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->updateByRequest(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/miui/player/ui/controller/GridController;)V

    .line 390
    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    invoke-virtual {p0}, Lcom/miui/player/ui/MusicBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mGrid:Lcom/miui/player/ui/controller/GridController;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/miui/player/ui/controller/GridController;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    .line 391
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity;->mQueryTask:Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 392
    return-void
.end method
