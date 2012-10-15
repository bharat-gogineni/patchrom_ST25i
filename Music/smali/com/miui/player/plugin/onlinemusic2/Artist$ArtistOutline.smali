.class public Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;
.super Ljava/lang/Object;
.source "Artist.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Artist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistOutline"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAlbumCount:I

.field public mArea:I

.field public mAudioCount:I

.field public mCountry:Ljava/lang/String;

.field public final mFirstChar:C

.field public mGender:I

.field public final mId:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;

.field public mURLAvatarBig:Ljava/lang/String;

.field public mURLAvatarMiddle:Ljava/lang/String;

.field public mURLAvatarMini:Ljava/lang/String;

.field public mURLAvatarSmall:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "firstChar"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;->mId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;->mTitle:Ljava/lang/String;

    .line 32
    iput-char p3, p0, Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;->mFirstChar:C

    .line 33
    return-void
.end method
