.class Lcom/miui/player/service/LyricManager$DirectlyDownload;
.super Ljava/lang/Object;
.source "LyricManager.java"

# interfaces
.implements Lcom/miui/player/service/LyricManager$LyricCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/LyricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectlyDownload"
.end annotation


# instance fields
.field private final mOnlineId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineId"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/miui/player/service/LyricManager$DirectlyDownload;->mOnlineId:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 1
    .parameter "context"
    .parameter "cbk"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$DirectlyDownload;->mOnlineId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/miui/player/network/LyricDownloader;->download(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z

    move-result v0

    return v0
.end method
