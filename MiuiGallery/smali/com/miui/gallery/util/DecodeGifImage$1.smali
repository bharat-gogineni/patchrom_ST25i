.class Lcom/miui/gallery/util/DecodeGifImage$1;
.super Ljava/lang/Object;
.source "DecodeGifImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/DecodeGifImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/DecodeGifImage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/DecodeGifImage;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mFutureTask:Lcom/miui/gallery/util/Future;
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeGifImage;->access$300(Lcom/miui/gallery/util/DecodeGifImage;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mFutureTask:Lcom/miui/gallery/util/Future;
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeGifImage;->access$300(Lcom/miui/gallery/util/DecodeGifImage;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mGifFrameListener:Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeGifImage;->access$500(Lcom/miui/gallery/util/DecodeGifImage;)Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mVersion:J
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$400(Lcom/miui/gallery/util/DecodeGifImage;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mFutureTask:Lcom/miui/gallery/util/Future;
    invoke-static {v3}, Lcom/miui/gallery/util/DecodeGifImage;->access$300(Lcom/miui/gallery/util/DecodeGifImage;)Lcom/miui/gallery/util/Future;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;->onUpdateGifFrame(JLcom/miui/gallery/util/Future;)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v0

    iget-boolean v0, v0, Lmiui/util/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage$1;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/DecodeGifImageHelper;->decodeNextFrames()V

    goto :goto_0
.end method
