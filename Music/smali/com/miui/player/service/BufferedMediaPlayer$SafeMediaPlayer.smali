.class Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;
.super Lcom/miui/player/service/PlayerProxy;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeMediaPlayer"
.end annotation


# instance fields
.field private mCurrentUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "dir"
    .parameter "nameArr"

    .prologue
    .line 1398
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;-><init>()V

    .line 1399
    const/4 v3, 0x0

    .line 1400
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 1401
    new-instance v3, Ljava/util/HashSet;

    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    array-length v5, p2

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1402
    .restart local v3       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1403
    .local v4, str:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1406
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setFFMPEGExcludeFilePathSet(Ljava/util/Set;)V

    .line 1407
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1442
    :try_start_0
    invoke-super {p0}, Lcom/miui/player/service/PlayerProxy;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1446
    :goto_0
    return v0

    .line 1443
    :catch_0
    move-exception v0

    .line 1446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1431
    :try_start_0
    invoke-super {p0}, Lcom/miui/player/service/PlayerProxy;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1435
    :goto_0
    return v0

    .line 1432
    :catch_0
    move-exception v0

    .line 1435
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->mCurrentUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/miui/player/util/SqlUtils;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1462
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1463
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1466
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1453
    :try_start_0
    invoke-super {p0}, Lcom/miui/player/service/PlayerProxy;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1457
    :goto_0
    return v0

    .line 1454
    :catch_0
    move-exception v0

    .line 1457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->mCurrentUri:Landroid/net/Uri;

    .line 1418
    invoke-super {p0}, Lcom/miui/player/service/PlayerProxy;->release()V

    .line 1419
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->mCurrentUri:Landroid/net/Uri;

    .line 1424
    invoke-super {p0}, Lcom/miui/player/service/PlayerProxy;->reset()V

    .line 1425
    return-void
.end method

.method public setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1411
    invoke-super {p0, p1, p2}, Lcom/miui/player/service/PlayerProxy;->setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1412
    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->mCurrentUri:Landroid/net/Uri;

    .line 1413
    return-void
.end method
