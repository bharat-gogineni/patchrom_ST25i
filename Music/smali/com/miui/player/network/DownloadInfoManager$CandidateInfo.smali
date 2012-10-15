.class public Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
.super Ljava/lang/Object;
.source "DownloadInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/DownloadInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateInfo"
.end annotation


# instance fields
.field public final mAudioLink:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

.field public final mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;"
        }
    .end annotation
.end field

.field public final mDescription:Ljava/lang/String;

.field public final mDownloadId:J


# direct methods
.method public constructor <init>(JLcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "id"
    .parameter "link"
    .parameter "description"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p5, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mDownloadId:J

    .line 32
    iput-object p3, p0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mAudioLink:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    .line 33
    iput-object p4, p0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mDescription:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mCandidates:Ljava/util/List;

    .line 35
    return-void
.end method
