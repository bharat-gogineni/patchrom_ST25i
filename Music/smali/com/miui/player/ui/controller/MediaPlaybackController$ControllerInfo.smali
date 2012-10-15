.class public Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/MediaPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerInfo"
.end annotation


# instance fields
.field public final mAlbumId:J

.field public final mAlbumName:Ljava/lang/String;

.field public final mArtistName:Ljava/lang/String;

.field public final mLyricStatus:I

.field public final mMetaChangedFlag:I

.field public final mTrackId:J

.field public final mTrackName:Ljava/lang/String;

.field public final mTrackPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "trackId"
    .parameter "albumId"
    .parameter "tr"
    .parameter "al"
    .parameter "ar"
    .parameter "path"
    .parameter "lrcStatus"
    .parameter "flag"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackId:J

    .line 26
    iput-wide p3, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mAlbumId:J

    .line 27
    iput-object p5, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackName:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mAlbumName:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackPath:Ljava/lang/String;

    .line 31
    iput p9, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    .line 32
    iput p10, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mMetaChangedFlag:I

    .line 33
    return-void
.end method


# virtual methods
.method public isForced()Z
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x4

    iget v1, p0, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mMetaChangedFlag:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
