.class public Lcom/miui/player/meta/MediaFileManager$ArtistEditInfoFactory;
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
    name = "ArtistEditInfoFactory"
.end annotation


# instance fields
.field private final mArtist:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "newArtist"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/miui/player/meta/MediaFileManager$ArtistEditInfoFactory;->mArtist:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    .locals 2
    .parameter "path"
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 119
    new-instance v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    iget-object v1, p0, Lcom/miui/player/meta/MediaFileManager$ArtistEditInfoFactory;->mArtist:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, p4}, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
