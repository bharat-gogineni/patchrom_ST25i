.class public Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
.super Ljava/lang/Object;
.source "LyricItemInfo.java"


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mContent:Lcom/miui/player/plugin/onlinelyric/LyricContent;

.field private mLink:Ljava/lang/Object;

.field private mTrack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Lcom/miui/player/plugin/onlinelyric/LyricContent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mContent:Lcom/miui/player/plugin/onlinelyric/LyricContent;

    return-object v0
.end method

.method public getLink()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mLink:Ljava/lang/Object;

    return-object v0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mTrack:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mTrack:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mTrack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mLink:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "al"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mAlbum:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mArtist:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setContent(Lcom/miui/player/plugin/onlinelyric/LyricContent;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mContent:Lcom/miui/player/plugin/onlinelyric/LyricContent;

    .line 47
    return-void
.end method

.method public setContentByByteArray([B)V
    .locals 0
    .parameter "content"

    .prologue
    .line 59
    return-void
.end method

.method public setLink(Ljava/lang/Object;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mLink:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 0
    .parameter "tr"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->mTrack:Ljava/lang/String;

    .line 35
    return-void
.end method
