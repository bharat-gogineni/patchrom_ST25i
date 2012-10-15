.class Lcom/miui/gallery/util/DecodeGifImage$2;
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
    .line 110
    iput-object p1, p0, Lcom/miui/gallery/util/DecodeGifImage$2;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$2;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    #getter for: Lcom/miui/gallery/util/DecodeGifImage;->mHelper:Lmiui/util/DecodeGifImageHelper;
    invoke-static {v1}, Lcom/miui/gallery/util/DecodeGifImage;->access$000(Lcom/miui/gallery/util/DecodeGifImage;)Lmiui/util/DecodeGifImageHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/util/DecodeGifImageHelper;->decodeFrom(I)Lmiui/util/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v0

    .line 113
    .local v0, decodeResult:Lmiui/util/DecodeGifImageHelper$GifDecodeResult;
    iget-object v1, p0, Lcom/miui/gallery/util/DecodeGifImage$2;->this$0:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/DecodeGifImage;->handleFirstDecodeResult(Lmiui/util/DecodeGifImageHelper$GifDecodeResult;)Z

    .line 114
    return-void
.end method
