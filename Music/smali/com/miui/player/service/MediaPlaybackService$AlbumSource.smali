.class Lcom/miui/player/service/MediaPlaybackService$AlbumSource;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumSource"
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2569
    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mFilePath:Ljava/lang/String;

    .line 2570
    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    return-void
.end method
