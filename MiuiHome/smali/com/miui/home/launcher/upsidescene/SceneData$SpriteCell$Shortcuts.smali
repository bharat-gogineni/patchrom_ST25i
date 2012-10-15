.class public Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;
.super Ljava/lang/Object;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Shortcuts"
.end annotation


# instance fields
.field private mComponentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultComponentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderTitle:Ljava/lang/String;

.field final synthetic this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mDefaultComponentNames:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mFolderTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;Ljava/util/Collection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->setComponentNames(Ljava/util/Collection;)V

    return-void
.end method

.method private setComponentNames(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 359
    :cond_0
    return-void
.end method

.method private unpackComponentNames(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter "packedNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 383
    const-string v5, ";"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, names:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 385
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #names:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    return v5
.end method


# virtual methods
.method public checkValidate()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mDefaultComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentNames()[Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->getDefaultComponentNames()[Landroid/content/ComponentName;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getDefaultComponentNames()[Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mDefaultComponentNames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mDefaultComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mFolderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isShowIcon()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowIcon:Z
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->access$200(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Z

    move-result v0

    return v0
.end method

.method public isShowTitle()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mShowTitle:Z
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->access$100(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Z

    move-result v0

    return v0
.end method

.method public load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z
    .locals 2
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
    .line 393
    if-eqz p2, :cond_0

    .line 394
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mFolderTitle:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->unpackComponentNames(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mDefaultComponentNames:Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->unpackComponentNames(Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->checkValidate()Z

    move-result v0

    return v0
.end method

.method public save(Ljava/io/BufferedWriter;)V
    .locals 5
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v2, packedNames:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mComponentNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 403
    .local v1, name:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 405
    .end local v1           #name:Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mFolderTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 406
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mFolderTitle:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 408
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 411
    return-void
.end method

.method public setFolderTitle(Ljava/lang/String;)Z
    .locals 2
    .parameter "title"

    .prologue
    const/4 v0, 0x1

    .line 374
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->mCurrentContentType:I
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->access$300(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 375
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->mFolderTitle:Ljava/lang/String;

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
