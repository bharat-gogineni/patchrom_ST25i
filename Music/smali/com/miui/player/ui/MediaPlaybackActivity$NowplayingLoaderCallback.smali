.class Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;
.super Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NowplayingLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity$TemplateLoaderCallback;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/player/model/TrackListAdapter;->NOWPLAYING_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/miui/player/model/TrackListAdapter;->NOWPLAYING_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/player/model/NowplayingCursor;->createLoader(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method
