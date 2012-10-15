.class public Lcom/miui/player/plugin/onlinemusic2/Audio;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;,
        Lcom/miui/player/plugin/onlinemusic2/Audio$AudioStatistics;,
        Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;,
        Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAudioLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;"
        }
    .end annotation
.end field

.field public mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

.field public final mOutline:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;)V
    .locals 0
    .parameter "outline"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;

    .line 132
    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mAlbumName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mArtistName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDurationInSec()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    iget-wide v0, v0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mDurationInSec:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;->mTitle:Ljava/lang/String;

    return-object v0
.end method
