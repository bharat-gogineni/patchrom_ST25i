.class Lcom/miui/player/service/BufferedMediaPlayer$3;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer;

.field final synthetic val$l:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$3;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer$3;->val$l:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$3;->val$l:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$3;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-boolean v1, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    invoke-interface {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;->onBlockingChanged(Z)V

    .line 857
    return-void
.end method
