.class public Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;
.super Ljava/lang/Object;
.source "ImageSearchInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SEARCH_ALUBM:I = 0x1

.field public static final SEARCH_AVATAR:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mAlbumName:Ljava/lang/String;

.field public final mArtistName:Ljava/lang/String;

.field public final mSearchType:I

.field public final mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "searchType"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mAlbumName:Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_1

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mTrackName:Ljava/lang/String;

    .line 20
    if-eqz p3, :cond_2

    .end local p3
    :goto_2
    iput-object p3, p0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mArtistName:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mSearchType:I

    .line 22
    return-void

    .line 18
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 19
    .end local p2
    :cond_1
    const-string p1, ""

    goto :goto_1

    .line 20
    .end local p1
    :cond_2
    const-string p3, ""

    goto :goto_2
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mTrackName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
