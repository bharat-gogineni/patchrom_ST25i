.class final Lcom/miui/player/provider/PlaylistHelper$1;
.super Landroid/os/AsyncTask;
.source "PlaylistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filterDuplicate:Z

.field final synthetic val$playlistId:J

.field final synthetic val$trackIds:[J


# direct methods
.method constructor <init>(Landroid/content/Context;[JJZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$trackIds:[J

    iput-wide p3, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$playlistId:J

    iput-boolean p5, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$filterDuplicate:Z

    iput-object p6, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$trackIds:[J

    iget-wide v2, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$playlistId:J

    iget-boolean v4, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$filterDuplicate:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZZ)I

    move-result v6

    .line 211
    .local v6, added:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/provider/PlaylistHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$playlistId:J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/ui/UIHelper;->notifyAddToPlaylist(Landroid/content/Context;JI)V

    .line 217
    iget-object v0, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/miui/player/provider/PlaylistHelper$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 220
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 205
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/provider/PlaylistHelper$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
