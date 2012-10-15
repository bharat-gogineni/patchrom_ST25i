.class Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
.super Ljava/lang/Object;
.source "MP3DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/MP3DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioWrap"
.end annotation


# instance fields
.field public final mAudio:Lcom/miui/player/plugin/onlinemusic2/Audio;

.field public final mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

.field public final mLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinemusic2/Audio;Ljava/util/List;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)V
    .locals 0
    .parameter "audio"
    .parameter
    .parameter "detail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, links:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mAudio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 90
    iput-object p2, p0, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mLinks:Ljava/util/List;

    .line 91
    iput-object p3, p0, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    .line 92
    return-void
.end method
