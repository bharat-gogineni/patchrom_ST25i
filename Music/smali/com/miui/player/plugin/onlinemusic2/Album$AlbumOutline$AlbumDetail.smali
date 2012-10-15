.class public Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline$AlbumDetail;
.super Ljava/lang/Object;
.source "Album.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumDetail"
.end annotation


# instance fields
.field public mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

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

.field public mIntroduction:Ljava/lang/String;

.field public mLanguage:Ljava/lang/String;

.field public mProduceCompany:Ljava/lang/String;

.field public mPublishCompany:Ljava/lang/String;

.field public mPublishTime:Ljava/util/Date;

.field public mStatistics:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumStatistics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
