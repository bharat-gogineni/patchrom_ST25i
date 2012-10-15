.class public Lcom/miui/player/plugin/onlinemusic2/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;,
        Lcom/miui/player/plugin/onlinemusic2/Album$AlbumStatistics;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

.field public mDetail:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline$AlbumDetail;

.field public final mOutline:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;)V
    .locals 0
    .parameter "outline"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Album;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;

    .line 87
    return-void
.end method
