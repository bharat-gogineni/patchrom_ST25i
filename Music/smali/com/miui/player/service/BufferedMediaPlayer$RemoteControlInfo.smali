.class public Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteControlInfo"
.end annotation


# instance fields
.field public final mBlockingChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;

.field public final mBufferedPositionChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;

.field public final mDownloadCompletedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;)V
    .locals 0
    .parameter "handler"
    .parameter "downloadCompletedListener"
    .parameter "blockingChangedListener"
    .parameter "bufferedPositionChangedListener"

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    .line 812
    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mDownloadCompletedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;

    .line 813
    iput-object p3, p0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mBlockingChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;

    .line 814
    iput-object p4, p0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mBufferedPositionChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;

    .line 815
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
