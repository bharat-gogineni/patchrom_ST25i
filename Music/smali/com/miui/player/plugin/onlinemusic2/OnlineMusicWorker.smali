.class public interface abstract Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
.super Ljava/lang/Object;
.source "OnlineMusicWorker.java"


# virtual methods
.method public abstract createImageProvider(Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;
.end method

.method public abstract createLyricProvider(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;
.end method

.method public abstract getIdentifyForAlbum(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIdentifyForArtist(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract getIdentifyForBill([Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract getIdentifyForChannel(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract getIdentifyForSearch(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public abstract getLogo()Landroid/graphics/Bitmap;
.end method

.method public abstract postLocalPlayStatus(Ljava/util/Date;ILjava/lang/String;)Z
.end method

.method public abstract postOnlinePlayStatus(Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;Ljava/lang/String;)Z
.end method

.method public abstract postUserStart(Ljava/util/Date;Ljava/lang/String;)Z
.end method

.method public abstract queryAudio(Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;
.end method

.method public abstract queryAudioID3(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/AudioID3Info;
.end method

.method public abstract queryAudioSuggestion(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;
.end method

.method public abstract requestAlbum(Ljava/lang/String;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Album;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestAlbumList(II)Lcom/miui/player/plugin/onlinemusic2/AlbumList;
.end method

.method public abstract requestArtistDetail(Ljava/lang/String;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestArtistList(III)Lcom/miui/player/plugin/onlinemusic2/ArtistList;
.end method

.method public abstract requestAudioDetail(Ljava/lang/String;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract requestAudioListOfAlbum(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/AudioList;
.end method

.method public abstract requestAudioListOfArtist(Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;
.end method

.method public abstract requestAudioListOfBill([Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestAudioListOfChannel(Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;
.end method

.method public abstract requestBillDetails([Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract requestBillList()Lcom/miui/player/plugin/onlinemusic2/BillList;
.end method

.method public abstract requestChannelDetail(Ljava/lang/String;II)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Channel$ChannelDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestChannelList()Lcom/miui/player/plugin/onlinemusic2/ChannelList;
.end method

.method public abstract requestStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method
