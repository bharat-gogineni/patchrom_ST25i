.class Lcom/miui/player/util/FolderProvider$FolderPrefParser;
.super Ljava/lang/Object;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/FolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderPrefParser"
.end annotation


# instance fields
.field private mLastJson:Ljava/lang/String;

.field private mUnselectedFolderSet:Ljava/lang/String;

.field private mUnselectedFolders:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mLastJson:Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    .line 353
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    return-void
.end method

.method private update(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 356
    const-string v3, "filter_music_folder"

    invoke-static {p1, v3}, Lcom/miui/player/util/PreferenceCache;->getPrefAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, current:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 358
    sget-object v3, Lcom/miui/player/util/FolderProvider;->EMPTY_FOLDER:[Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    .line 359
    iput-object v2, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mLastJson:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mLastJson:Ljava/lang/String;

    .line 368
    invoke-static {v0}, Lcom/miui/player/util/FolderProvider;->parseUnselectedFolders(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    .line 369
    iget-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "_data"

    invoke-static {v3, v4}, Lcom/miui/player/util/SqlUtils;->pathLikeWhere(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, like:Ljava/lang/String;
    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NOT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getUnselectedFolders(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->update(Landroid/content/Context;)V

    .line 377
    iget-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnselectedFoldersAsSet(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->update(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    return-object v0
.end method
