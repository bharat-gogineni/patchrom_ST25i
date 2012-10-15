.class Lcom/miui/gallery/util/DecodeGifImage$FutureTask;
.super Ljava/lang/Object;
.source "DecodeGifImage.java"

# interfaces
.implements Lcom/miui/gallery/util/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/DecodeGifImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/Future",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mIsCancelled:Z

.field final synthetic this$0:Lcom/miui/gallery/util/DecodeGifImage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/DecodeGifImage;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->mIsCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/DecodeGifImage;Lcom/miui/gallery/util/DecodeGifImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;-><init>(Lcom/miui/gallery/util/DecodeGifImage;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->mIsCancelled:Z

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v0}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/DecodeGifImageHelper;->destroy()V

    .line 38
    return-void
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-object v1, v1, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 48
    .local v0, gifFrame:Lmiui/util/DecodeGifImageHelper$GifFrame;
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/util/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-eqz v1, :cond_4

    .line 49
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-object v1, v1, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I
    invoke-static {v2}, Lcom/miui/gallery/util/DecodeGifImage;->access$100(Lcom/miui/gallery/util/DecodeGifImage;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #gifFrame:Lmiui/util/DecodeGifImageHelper$GifFrame;
    check-cast v0, Lmiui/util/DecodeGifImageHelper$GifFrame;

    .line 50
    .restart local v0       #gifFrame:Lmiui/util/DecodeGifImageHelper$GifFrame;
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$108(Lcom/miui/gallery/util/DecodeGifImage;)I

    .line 51
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$100(Lcom/miui/gallery/util/DecodeGifImage;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v2}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v2

    iget-object v2, v2, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #setter for: Lcom/miui/gallery/util/DecodeGifImage;->mFrameIndex:I
    invoke-static {v1, v3}, Lcom/miui/gallery/util/DecodeGifImage;->access$102(Lcom/miui/gallery/util/DecodeGifImage;I)I

    .line 67
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-boolean v1, v1, Lmiui/util/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-object v1, v1, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$200(Lcom/miui/gallery/util/DecodeGifImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    iget-object v2, v2, Lcom/miui/gallery/util/DecodeGifImage;->mFinishPlayOneFrame:Ljava/lang/Runnable;

    iget v3, v0, Lmiui/util/DecodeGifImageHelper$GifFrame;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :cond_3
    iget-object v1, v0, Lmiui/util/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-object v1, v1, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #gifFrame:Lmiui/util/DecodeGifImageHelper$GifFrame;
    check-cast v0, Lmiui/util/DecodeGifImageHelper$GifFrame;

    .line 61
    .restart local v0       #gifFrame:Lmiui/util/DecodeGifImageHelper$GifFrame;
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-object v1, v1, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 62
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    iget-object v1, v1, Lmiui/util/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/miui/gallery/util/DecodeGifImage$FutureTask;->mIsCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
