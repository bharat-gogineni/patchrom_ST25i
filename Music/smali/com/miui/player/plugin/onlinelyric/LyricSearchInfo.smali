.class public Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
.super Ljava/lang/Object;
.source "LyricSearchInfo.java"


# instance fields
.field public final mAlbum:Ljava/lang/String;

.field public final mArtist:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mTrack:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tr"
    .parameter "ar"
    .parameter "al"
    .parameter "path"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->mTrack:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->mArtist:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->mAlbum:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->mPath:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->mTrack:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
