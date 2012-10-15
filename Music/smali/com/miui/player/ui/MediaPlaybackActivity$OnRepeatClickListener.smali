.class Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnRepeatClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V
    .locals 1
    .parameter "scanInfo"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshTimeIndicator()V

    .line 849
    return-void
.end method
