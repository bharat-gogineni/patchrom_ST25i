.class Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/service/MediaPlaybackService$CheckAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaProviderCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 960
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    #getter for: Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J
    invoke-static {v0}, Lcom/miui/player/service/MediaPlaybackService;->access$000(Lcom/miui/player/service/MediaPlaybackService;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    #getter for: Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I
    invoke-static {v1}, Lcom/miui/player/service/MediaPlaybackService;->access$100(Lcom/miui/player/service/MediaPlaybackService;)I

    move-result v1

    aget-wide v6, v0, v1

    .line 961
    .local v6, audioId:J
    const/4 v9, 0x1

    .line 962
    .local v9, success:Z
    invoke-static {v6, v7}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 966
    .local v8, crsr:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v9, v10

    .line 967
    :goto_0
    if-eqz v8, :cond_0

    .line 968
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 972
    .end local v8           #crsr:Landroid/database/Cursor;
    :cond_0
    if-eqz v9, :cond_1

    .line 973
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0, v11}, Lcom/miui/player/service/MediaPlaybackService;->reloadQueue(Z)V

    .line 976
    :cond_1
    return v9

    .restart local v8       #crsr:Landroid/database/Cursor;
    :cond_2
    move v9, v11

    .line 966
    goto :goto_0
.end method
