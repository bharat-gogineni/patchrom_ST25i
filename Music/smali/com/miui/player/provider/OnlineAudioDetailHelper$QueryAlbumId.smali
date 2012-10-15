.class public Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryAlbumId;
.super Ljava/lang/Object;
.source "OnlineAudioDetailHelper.java"

# interfaces
.implements Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryDetail;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/provider/OnlineAudioDetailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryAlbumId"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "album_id"

    return-object v0
.end method

.method public getResult(Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)Ljava/lang/String;
    .locals 1
    .parameter "detail"

    .prologue
    .line 140
    iget-object v0, p1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method
