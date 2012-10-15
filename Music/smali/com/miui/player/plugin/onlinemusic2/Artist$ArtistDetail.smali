.class public Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistDetail;
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
    name = "ArtistDetail"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAlbumCount:I

.field public mAliasName:Ljava/lang/String;

.field public mAudioCount:I

.field public mBirth:Ljava/util/Date;

.field public mBloodType:Ljava/lang/String;

.field public mCompany:Ljava/lang/String;

.field public mConstellation:Ljava/lang/String;

.field public mIntroduction:Ljava/lang/String;

.field public mNickName:Ljava/lang/String;

.field public mRelateArtistIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStature:F

.field public mTranslateName:Ljava/lang/String;

.field public mWeight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
