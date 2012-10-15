.class public Lcom/miui/player/meta/MediaFileManager$TrackEditInfoFactory;
.super Ljava/lang/Object;
.source "MediaFileManager.java"

# interfaces
.implements Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/meta/MediaFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackEditInfoFactory"
.end annotation


# instance fields
.field private final mAlbum:Ljava/lang/String;

.field private final mArtist:Ljava/lang/String;

.field private final mTrack:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/miui/player/meta/MediaFileManager$TrackEditInfoFactory;->mTrack:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/miui/player/meta/MediaFileManager$TrackEditInfoFactory;->mArtist:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/miui/player/meta/MediaFileManager$TrackEditInfoFactory;->mAlbum:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    .locals 4
    .parameter "path"
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 137
    new-instance v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    iget-object v1, p0, Lcom/miui/player/meta/MediaFileManager$TrackEditInfoFactory;->mTrack:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/meta/MediaFileManager$TrackEditInfoFactory;->mArtist:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/meta/MediaFileManager$TrackEditInfoFactory;->mAlbum:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
