.class public Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioDetail"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAlbumId:Ljava/lang/String;

.field public mAlbumNO:I

.field public mAlbumName:Ljava/lang/String;

.field public mAllArtistNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mArea:I

.field public mArtistId:Ljava/lang/String;

.field public mArtistIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mArtistName:Ljava/lang/String;

.field public mCompose:Ljava/lang/String;

.field public mCountry:Ljava/lang/String;

.field public mDurationInSec:J

.field public mGenre:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLanguage:Ljava/lang/String;

.field public mPulishTime:Ljava/util/Date;

.field public mSongWriting:Ljava/lang/String;

.field public mStatistics:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioStatistics;

.field public mURLLrc:Ljava/lang/String;

.field public mURLPictureBig:Ljava/lang/String;

.field public mURLPictureSmall:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAllArtistName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mArtistName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mAllArtistNames:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mAllArtistNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 69
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mAllArtistNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mArtistName:Ljava/lang/String;

    .line 77
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mArtistName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method
