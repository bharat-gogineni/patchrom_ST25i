.class public Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
.super Ljava/lang/Object;
.source "OnlinePlayStatus.java"


# static fields
.field public static final STATUS_CONNECTING:I = 0x1

.field public static final STATUS_DOWNLOAD_END:I = 0x7d0

.field public static final STATUS_DOWNLOAD_FAILED:I = 0x3e9

.field public static final STATUS_DOWNLOAD_START:I = 0x3e8

.field public static final STATUS_DOWNLOAD_SUCCESS:I = 0x3ea

.field public static final STATUS_ERORR_LINK_BLANK:I = 0x4

.field public static final STATUS_ERROR_LINK_FAILED:I = 0x5

.field public static final STATUS_ERROR_OHTER:I = 0x6

.field public static final STATUS_NORMAL:I = 0x0

.field public static final STATUS_PLAY_END:I = 0x3e8

.field public static final STATUS_PLAY_FIRST:I = 0x0

.field public static final STATUS_PLAY_START:I = 0x2

.field public static final STATUS_PLAY_SUCCESS:I = 0x3


# instance fields
.field public final mAudioId:Ljava/lang/String;

.field public mAutoSkip:Z

.field public mBitrate:I

.field public mBufferCount:I

.field public mConnectTimeInMs:J

.field public mError:I

.field public mPlayDurationInMs:J

.field public mStayTimeInMs:J

.field public mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "error"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mAudioId:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mError:I

    .line 34
    return-void
.end method


# virtual methods
.method public getShotsnap(I)Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    .locals 3
    .parameter "error"

    .prologue
    .line 37
    new-instance v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-object v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mAudioId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;-><init>(Ljava/lang/String;I)V

    .line 38
    .local v0, snap:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    iget-object v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mURL:Ljava/lang/String;

    .line 39
    iget v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBitrate:I

    iput v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBitrate:I

    .line 40
    iget-boolean v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mAutoSkip:Z

    iput-boolean v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mAutoSkip:Z

    .line 41
    iget-wide v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mPlayDurationInMs:J

    iput-wide v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mPlayDurationInMs:J

    .line 42
    iget-wide v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mConnectTimeInMs:J

    iput-wide v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mConnectTimeInMs:J

    .line 43
    iget-wide v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mStayTimeInMs:J

    iput-wide v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mStayTimeInMs:J

    .line 44
    iget v1, p0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBufferCount:I

    iput v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBufferCount:I

    .line 45
    return-object v0
.end method
