.class public Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;
.super Ljava/lang/Object;
.source "AudioSearchResult.java"


# instance fields
.field public final mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

.field public final mIsAlbum:Z

.field public final mIsArtist:Z

.field public final mKeywords:Ljava/lang/String;

.field public final mPageInfo:Lcom/miui/player/plugin/onlinemusic2/PageInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic2/PageInfo;Lcom/miui/player/plugin/onlinemusic2/AudioList;ZZ)V
    .locals 0
    .parameter "keywords"
    .parameter "page"
    .parameter "audioList"
    .parameter "isArtist"
    .parameter "isAlbum"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mKeywords:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mPageInfo:Lcom/miui/player/plugin/onlinemusic2/PageInfo;

    .line 14
    iput-object p3, p0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .line 15
    iput-boolean p4, p0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mIsArtist:Z

    .line 16
    iput-boolean p5, p0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mIsAlbum:Z

    .line 17
    return-void
.end method
