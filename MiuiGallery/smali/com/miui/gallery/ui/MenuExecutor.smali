.class public Lcom/miui/gallery/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;,
        Lcom/miui/gallery/ui/MenuExecutor$TaskListener;,
        Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# instance fields
.field private deleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mDatabaseModified:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    .line 329
    new-instance v0, Lcom/miui/gallery/ui/MenuExecutor$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/MenuExecutor$2;-><init>(Lcom/miui/gallery/ui/MenuExecutor;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryActivity;

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 98
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SelectionManager;

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 99
    new-instance v0, Lcom/miui/gallery/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/MenuExecutor$1;-><init>(Lcom/miui/gallery/ui/MenuExecutor;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/MenuExecutor;)Lcom/miui/gallery/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/MenuExecutor;)Lcom/miui/gallery/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/MenuExecutor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/MenuExecutor;->execute(Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/MenuExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/ui/MenuExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method private execute(Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z
    .locals 19
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 340
    const/4 v9, 0x1

    .line 341
    .local v9, result:Z
    const-string v14, "MenuExecutor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Execute cmd: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 344
    .local v10, startTime:J
    sparse-switch p3, :sswitch_data_0

    .line 444
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 346
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v14, Landroid/app/Activity;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Lcom/miui/gallery/data/DataManager;->delete(Lcom/miui/gallery/data/Path;Landroid/app/Activity;)V

    .line 446
    :cond_0
    :goto_0
    :sswitch_1
    const-string v14, "MenuExecutor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "It takes "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms to execute cmd for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v9

    .line 350
    :sswitch_2
    const/16 v14, 0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Lcom/miui/gallery/data/DataManager;->rotate(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 353
    :sswitch_3
    const/16 v14, -0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Lcom/miui/gallery/data/DataManager;->rotate(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 356
    :sswitch_4
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v8

    .line 357
    .local v8, obj:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaObject;->getCacheFlag()I

    move-result v3

    .line 358
    .local v3, cacheFlag:I
    const/4 v14, 0x2

    if-ne v3, v14, :cond_1

    .line 359
    const/4 v3, 0x1

    .line 363
    :goto_1
    invoke-virtual {v8, v3}, Lcom/miui/gallery/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 361
    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    .line 367
    .end local v3           #cacheFlag:I
    .end local v8           #obj:Lcom/miui/gallery/data/MediaObject;
    :sswitch_5
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/data/MediaItem;

    .line 368
    .local v6, item:Lcom/miui/gallery/data/MediaItem;
    const/4 v14, 0x2

    new-array v7, v14, [D

    .line 369
    .local v7, latlng:[D
    invoke-virtual {v6, v7}, Lcom/miui/gallery/data/MediaItem;->getLatLong([D)V

    .line 370
    const/4 v14, 0x0

    aget-wide v14, v7, v14

    const/16 v16, 0x1

    aget-wide v16, v7, v16

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v14, Landroid/content/Context;

    const/4 v15, 0x0

    aget-wide v15, v7, v15

    const/16 v17, 0x1

    aget-wide v17, v7, v17

    invoke-static/range {v14 .. v18}, Lcom/miui/gallery/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)Z

    goto/16 :goto_0

    .line 376
    .end local v6           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v7           #latlng:[D
    :sswitch_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v8

    .line 377
    .restart local v8       #obj:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaObject;->Import()Z

    move-result v9

    .line 378
    goto/16 :goto_0

    .line 381
    .end local v8           #obj:Lcom/miui/gallery/data/MediaObject;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    .line 382
    .local v2, activity:Landroid/app/Activity;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/data/MediaItem;

    .line 384
    .restart local v6       #item:Lcom/miui/gallery/data/MediaItem;
    :try_start_0
    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v13

    .line 385
    .local v13, uri:Landroid/net/Uri;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.EDIT"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 390
    .end local v13           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 391
    .local v12, t:Ljava/lang/Throwable;
    const-string v14, "MenuExecutor"

    const-string v15, "failed to start edit activity: "

    invoke-static {v14, v15, v12}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const v14, 0x7f0d0058

    invoke-virtual {v2, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 403
    .end local v2           #activity:Landroid/app/Activity;
    .end local v6           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v12           #t:Ljava/lang/Throwable;
    :sswitch_8
    invoke-static/range {p4 .. p4}, Lcom/miui/gallery/data/AlbumCache;->getAlbumByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v4

    .line 404
    .local v4, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-nez v4, :cond_2

    .line 405
    const-string v14, "MenuExecutor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fail to find album by path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v9, 0x0

    .line 407
    goto/16 :goto_0

    .line 410
    :cond_2
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBAlbum;->getBucketPath()Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, filePath:Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 414
    :pswitch_0
    const/4 v14, 0x1

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 415
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 420
    :pswitch_1
    const/4 v14, 0x1

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 421
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 426
    :pswitch_2
    const/4 v14, 0x2

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 427
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 432
    :pswitch_3
    const/4 v14, 0x2

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 433
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x7f0b0000 -> :sswitch_4
        0x7f0b00b8 -> :sswitch_0
        0x7f0b00ba -> :sswitch_1
        0x7f0b00bc -> :sswitch_8
        0x7f0b00bd -> :sswitch_8
        0x7f0b00be -> :sswitch_8
        0x7f0b00bf -> :sswitch_8
        0x7f0b00c0 -> :sswitch_6
        0x7f0b00c4 -> :sswitch_7
        0x7f0b00c5 -> :sswitch_3
        0x7f0b00c6 -> :sswitch_2
        0x7f0b00c8 -> :sswitch_5
    .end sparse-switch

    .line 412
    :pswitch_data_0
    .packed-switch 0x7f0b00bc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 320
    packed-switch p0, :pswitch_data_0

    .line 325
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 322
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 324
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/miui/gallery/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 193
    iget-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 195
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 194
    goto :goto_0
.end method

.method private onProgressComplete(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void
.end method

.method private onProgressUpdate(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method private static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 154
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    :cond_0
    return-void
.end method

.method private static showProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 76
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 79
    if-le p2, v2, :cond_0

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 83
    return-object v0
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 134
    iput-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 135
    iput-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    .line 137
    :cond_0
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 19
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 159
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_0

    const/4 v5, 0x1

    .line 160
    .local v5, supportDelete:Z
    :goto_0
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_1

    const/4 v12, 0x1

    .line 161
    .local v12, supportRotate:Z
    :goto_1
    and-int/lit8 v18, p1, 0x8

    if-eqz v18, :cond_2

    const/4 v4, 0x1

    .line 162
    .local v4, supportCrop:Z
    :goto_2
    and-int/lit8 v18, p1, 0x4

    if-eqz v18, :cond_3

    const/16 v16, 0x1

    .line 163
    .local v16, supportShare:Z
    :goto_3
    and-int/lit8 v18, p1, 0x20

    if-eqz v18, :cond_4

    const/4 v13, 0x1

    .line 164
    .local v13, supportSetAs:Z
    :goto_4
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_5

    const/16 v17, 0x1

    .line 165
    .local v17, supportShowOnMap:Z
    :goto_5
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const/4 v3, 0x1

    .line 166
    .local v3, supportCache:Z
    :goto_6
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/4 v6, 0x1

    .line 167
    .local v6, supportEdit:Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const/4 v8, 0x1

    .line 168
    .local v8, supportInfo:Z
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/4 v7, 0x1

    .line 169
    .local v7, supportImport:Z
    :goto_9
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v15, 0x1

    .line 170
    .local v15, supportSetRecent:Z
    :goto_a
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x2000

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/4 v10, 0x1

    .line 171
    .local v10, supportRemoveRecent:Z
    :goto_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/4 v14, 0x1

    .line 172
    .local v14, supportSetHidden:Z
    :goto_c
    const v18, 0x8000

    and-int v18, v18, p1

    if-eqz v18, :cond_d

    const/4 v9, 0x1

    .line 173
    .local v9, supportRemoveHidden:Z
    :goto_d
    const/high16 v18, 0x1

    and-int v18, v18, p1

    if-eqz v18, :cond_e

    const/4 v11, 0x1

    .line 175
    .local v11, supportRename:Z
    :goto_e
    const v18, 0x7f0b00b8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 176
    const v18, 0x7f0b00c5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 177
    const v18, 0x7f0b00c6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 178
    const v18, 0x7f0b00c7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 179
    const v18, 0x7f0b00b7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 180
    const v18, 0x7f0b00bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 181
    const v18, 0x7f0b00c8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 182
    const v18, 0x7f0b00c4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 183
    const v18, 0x7f0b00b9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 184
    const v18, 0x7f0b00c0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 185
    const v18, 0x7f0b00bc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 186
    const v18, 0x7f0b00bd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 187
    const v18, 0x7f0b00be

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v14}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 188
    const v18, 0x7f0b00bf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 189
    const v18, 0x7f0b00ba

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 190
    return-void

    .line 159
    .end local v3           #supportCache:Z
    .end local v4           #supportCrop:Z
    .end local v5           #supportDelete:Z
    .end local v6           #supportEdit:Z
    .end local v7           #supportImport:Z
    .end local v8           #supportInfo:Z
    .end local v9           #supportRemoveHidden:Z
    .end local v10           #supportRemoveRecent:Z
    .end local v11           #supportRename:Z
    .end local v12           #supportRotate:Z
    .end local v13           #supportSetAs:Z
    .end local v14           #supportSetHidden:Z
    .end local v15           #supportSetRecent:Z
    .end local v16           #supportShare:Z
    .end local v17           #supportShowOnMap:Z
    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 160
    .restart local v5       #supportDelete:Z
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 161
    .restart local v12       #supportRotate:Z
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 162
    .restart local v4       #supportCrop:Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 163
    .restart local v16       #supportShare:Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 164
    .restart local v13       #supportSetAs:Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 165
    .restart local v17       #supportShowOnMap:Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 166
    .restart local v3       #supportCache:Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 167
    .restart local v6       #supportEdit:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 168
    .restart local v8       #supportInfo:Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 169
    .restart local v7       #supportImport:Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 170
    .restart local v15       #supportSetRecent:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_b

    .line 171
    .restart local v10       #supportRemoveRecent:Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 172
    .restart local v14       #supportSetHidden:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 173
    .restart local v9       #supportRemoveHidden:Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_e
.end method


# virtual methods
.method public canDelete()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 199
    iget-object v4, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/data/Path;

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->getObject()Lcom/miui/gallery/data/MediaObject;

    move-result-object v3

    .line 202
    .local v3, mediaObject:Lcom/miui/gallery/data/MediaObject;
    if-nez v3, :cond_0

    move v4, v5

    .line 219
    .end local v3           #mediaObject:Lcom/miui/gallery/data/MediaObject;
    :goto_1
    return v4

    .line 205
    .restart local v3       #mediaObject:Lcom/miui/gallery/data/MediaObject;
    :cond_0
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaObject;->canDelete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 206
    const-string v0, ""

    .line 207
    .local v0, fileOrFolderPath:Ljava/lang/String;
    instance-of v4, v3, Lcom/miui/gallery/data/MediaItem;

    if-eqz v4, :cond_1

    .line 208
    check-cast v3, Lcom/miui/gallery/data/MediaItem;

    .end local v3           #mediaObject:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/miui/gallery/util/GalleryUtils;->showDeleteNoAccessAlert(Ljava/lang/String;Landroid/app/Activity;)V

    move v4, v5

    .line 215
    goto :goto_1

    .line 209
    .restart local v3       #mediaObject:Lcom/miui/gallery/data/MediaObject;
    :cond_1
    instance-of v4, v3, Lcom/miui/gallery/data/MediaSet;

    if-eqz v4, :cond_2

    .line 210
    check-cast v3, Lcom/miui/gallery/data/MediaSet;

    .end local v3           #mediaObject:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 212
    .restart local v3       #mediaObject:Lcom/miui/gallery/data/MediaObject;
    :cond_2
    const-string v4, "MenuExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mediaObject\'s type is wrong: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/miui/gallery/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 200
    .end local v0           #fileOrFolderPath:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v3           #mediaObject:Lcom/miui/gallery/data/MediaObject;
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)Z
    .locals 12
    .parameter "menuItem"
    .parameter "listener"
    .parameter "taskListener"

    .prologue
    const/4 v9, 0x1

    .line 224
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    .line 225
    .local v3, manager:Lcom/miui/gallery/data/DataManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 226
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 300
    :pswitch_0
    const/4 v8, 0x0

    .line 306
    :goto_0
    return v8

    .line 228
    :pswitch_1
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 229
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SelectionManager;->deSelectAll()V

    :goto_1
    move v8, v9

    .line 233
    goto :goto_0

    .line 231
    :cond_0
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SelectionManager;->selectAll()V

    goto :goto_1

    .line 235
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->getSingleSelectedPath()Lcom/miui/gallery/data/Path;

    move-result-object v5

    .line 236
    .local v5, path:Lcom/miui/gallery/data/Path;
    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v8

    invoke-static {v8}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, mimeType:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getContentUriForGallery(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 239
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 240
    goto :goto_0

    .line 243
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #path:Lcom/miui/gallery/data/Path;
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->getSingleSelectedPath()Lcom/miui/gallery/data/Path;

    move-result-object v5

    .line 244
    .restart local v5       #path:Lcom/miui/gallery/data/Path;
    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v7

    .line 245
    .local v7, type:I
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.ATTACH_DATA"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 247
    .restart local v4       #mimeType:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getContentUriForExternal(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v8, "mimeType"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 251
    .local v1, activity:Landroid/app/Activity;
    const v8, 0x7f0d0045

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    const/4 v10, 0x4

    invoke-virtual {v1, v8, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v8, v9

    .line 254
    goto :goto_0

    .line 257
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #path:Lcom/miui/gallery/data/Path;
    .end local v7           #type:I
    :pswitch_4
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v8, Landroid/content/Context;

    iget-object v10, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v10, v9}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v11}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;Lcom/miui/gallery/data/DataManager;)V

    move v8, v9

    .line 260
    goto/16 :goto_0

    .line 263
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MenuExecutor;->canDelete()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 264
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/miui/gallery/ui/MenuExecutor;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v11, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v11

    invoke-static {v8, v10, v11}, Lcom/miui/gallery/StorageExplorer/AppHelper;->confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    :cond_1
    move v8, v9

    .line 267
    goto/16 :goto_0

    .line 270
    :pswitch_6
    const v6, 0x7f0d0055

    .line 302
    .local v6, title:I
    :goto_2
    if-eqz p3, :cond_2

    .line 303
    invoke-interface {p3, v0}, Lcom/miui/gallery/ui/MenuExecutor$TaskListener;->onStart(I)V

    .line 305
    :cond_2
    invoke-virtual {p0, v0, v6, p2}, Lcom/miui/gallery/ui/MenuExecutor;->startAction(IILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    move v8, v9

    .line 306
    goto/16 :goto_0

    .line 273
    .end local v6           #title:I
    :pswitch_7
    const v6, 0x7f0d0054

    .line 274
    .restart local v6       #title:I
    goto :goto_2

    .line 276
    .end local v6           #title:I
    :pswitch_8
    const v6, 0x7f0d0052

    .line 277
    .restart local v6       #title:I
    goto :goto_2

    .line 279
    .end local v6           #title:I
    :pswitch_9
    const v6, 0x7f0d0057

    .line 280
    .restart local v6       #title:I
    goto :goto_2

    .line 282
    .end local v6           #title:I
    :pswitch_a
    const v6, 0x7f0d009d

    .line 283
    .restart local v6       #title:I
    goto :goto_2

    .line 285
    .end local v6           #title:I
    :pswitch_b
    const v6, 0x7f0d00b1

    .line 286
    .restart local v6       #title:I
    goto :goto_2

    .line 288
    .end local v6           #title:I
    :pswitch_c
    const v6, 0x7f0d00b2

    .line 289
    .restart local v6       #title:I
    goto :goto_2

    .line 291
    .end local v6           #title:I
    :pswitch_d
    const v6, 0x7f0d00b3

    .line 292
    .restart local v6       #title:I
    goto :goto_2

    .line 294
    .end local v6           #title:I
    :pswitch_e
    const v6, 0x7f0d00b4

    .line 295
    .restart local v6       #title:I
    goto :goto_2

    .line 297
    .end local v6           #title:I
    :pswitch_f
    const v6, 0x7f0d0129

    .line 298
    .restart local v6       #title:I
    goto :goto_2

    .line 226
    :pswitch_data_0
    .packed-switch 0x7f0b00b7
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_f
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 141
    return-void
.end method

.method public startAction(IILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 5
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 310
    iget-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 311
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 314
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/miui/gallery/ui/MenuExecutor;->showProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 315
    new-instance v2, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;-><init>(Lcom/miui/gallery/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 316
    .local v2, operation:Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    .line 317
    return-void
.end method
