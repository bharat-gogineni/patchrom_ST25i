.class public Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
.super Ljava/lang/Object;
.source "BaseTrackBrowserMenu.java"

# interfaces
.implements Lcom/miui/player/ui/menu/common/MenuContextInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextInfo"
.end annotation


# instance fields
.field public mAlbumId:J

.field public mAlbumName:Ljava/lang/String;

.field public mArtistId:J

.field public mArtistName:Ljava/lang/String;

.field public mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

.field public mCursor:Landroid/database/Cursor;

.field public mEditMode:Z

.field public mHeaderCount:I

.field public mListView:Landroid/widget/AbsListView;

.field public mPlaylistId:J

.field public mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    .line 73
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 74
    iput v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mHeaderCount:I

    .line 75
    iput-boolean v3, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mEditMode:Z

    .line 76
    iput-wide v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mPlaylistId:J

    .line 77
    iput-wide v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumId:J

    .line 78
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAlbumName:Ljava/lang/String;

    .line 79
    iput-wide v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistId:J

    .line 80
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mArtistName:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 82
    iput-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mListView:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinemusic2/AudioList;->isValid()Z

    move-result v0

    goto :goto_0
.end method
