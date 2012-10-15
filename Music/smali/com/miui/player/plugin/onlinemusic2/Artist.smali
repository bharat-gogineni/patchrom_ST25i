.class public Lcom/miui/player/plugin/onlinemusic2/Artist;
.super Ljava/lang/Object;
.source "Artist.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistDetail;,
        Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

.field public mDetail:Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistDetail;

.field public final mOutline:Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;)V
    .locals 0
    .parameter "outline"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Artist;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;

    .line 64
    return-void
.end method
