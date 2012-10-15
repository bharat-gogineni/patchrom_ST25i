.class public Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumOutline"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline$AlbumDetail;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
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

.field public mArtistNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioCount:I

.field public final mId:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;

.field public mURLImage:Ljava/lang/String;

.field public mURLPictureBig:Ljava/lang/String;

.field public mURLPictureSmall:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mId:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mTitle:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getBestImageURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLImage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLImage:Ljava/lang/String;

    .line 66
    .local v0, link:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 58
    .end local v0           #link:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLPictureBig:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLPictureBig:Ljava/lang/String;

    .restart local v0       #link:Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0           #link:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLPictureSmall:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLPictureSmall:Ljava/lang/String;

    .restart local v0       #link:Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0           #link:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #link:Ljava/lang/String;
    goto :goto_0
.end method
