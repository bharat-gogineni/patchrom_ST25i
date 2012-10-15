.class public Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;
.super Ljava/lang/Object;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Widget"
.end annotation


# instance fields
.field private mDefaultLocation:Ljava/lang/String;

.field private mGadgetType:I

.field private mId:I

.field private mLocation:Ljava/lang/String;

.field final synthetic this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 423
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    .line 425
    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    .line 426
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mId:I

    .line 427
    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mGadgetType:I

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setGadgetType(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setLocation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setEmpty()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->setId(I)V

    return-void
.end method

.method private setEmpty()V
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->clearCachedGadget()Z

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mId:I

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    .line 449
    return-void
.end method

.method private setGadgetType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 457
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mGadgetType:I

    .line 458
    return-void
.end method

.method private setId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 452
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mId:I

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    .line 454
    return-void
.end method

.method private setLocation(Ljava/lang/String;)Z
    .locals 4
    .parameter "src"

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->clearCachedGadget()Z

    .line 462
    if-eqz p1, :cond_0

    .line 463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    iget-object v2, v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistDirectory()Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$400(Lcom/miui/home/launcher/upsidescene/SceneData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData;->copyStreamToFileIfNotExist(Ljava/io/InputStream;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$500(Lcom/miui/home/launcher/upsidescene/SceneData;Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 475
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    .line 470
    .restart local v0       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 474
    .end local v0           #file:Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    .line 475
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkValidate()Z
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCachedGadget()Z
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 485
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGadgetType()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mGadgetType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mId:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z
    .locals 9
    .parameter "parser"
    .parameter "settings"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 490
    iput-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    .line 491
    if-eqz p2, :cond_0

    .line 492
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, val:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mId:I

    .line 494
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mGadgetType:I

    .line 496
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 497
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v3, wf:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .end local v2           #val:Ljava/lang/String;
    :goto_0
    iput-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    .line 500
    .end local v3           #wf:Ljava/io/File;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, widget:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    iget-object v7, v7, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistDirectory()Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$400(Lcom/miui/home/launcher/upsidescene/SceneData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    .line 503
    invoke-virtual {p3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 504
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_4

    .line 505
    invoke-static {}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$000()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 506
    const-string v6, "launcher.UpsideScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "line:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".can not find widget:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1
    iput-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    .line 521
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->checkValidate()Z

    move-result v5

    return v5

    .end local v4           #widget:Ljava/lang/String;
    .restart local v2       #val:Ljava/lang/String;
    .restart local v3       #wf:Ljava/io/File;
    :cond_3
    move-object v2, v5

    .line 498
    goto :goto_0

    .line 511
    .end local v2           #val:Ljava/lang/String;
    .end local v3           #wf:Ljava/io/File;
    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #widget:Ljava/lang/String;
    :cond_4
    invoke-virtual {p3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 512
    .local v1, is:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    iget-object v6, v6, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->this$0:Lcom/miui/home/launcher/upsidescene/SceneData;

    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneData;->copyStreamToFileIfNotExist(Ljava/io/InputStream;Ljava/lang/String;)Z
    invoke-static {v6, v1, v7}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$500(Lcom/miui/home/launcher/upsidescene/SceneData;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 513
    iput-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mDefaultLocation:Ljava/lang/String;

    goto :goto_1

    .line 517
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #is:Ljava/io/InputStream;
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/upsidescene/SceneData;->access$000()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 518
    const-string v5, "launcher.UpsideScene"

    const-string v6, "widget name can not be null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public save(Ljava/io/BufferedWriter;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 527
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mGadgetType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 529
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 532
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 533
    return-void
.end method
