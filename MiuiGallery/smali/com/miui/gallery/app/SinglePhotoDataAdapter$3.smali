.class Lcom/miui/gallery/app/SinglePhotoDataAdapter$3;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$3;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$3;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$3;->this$0:Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->access$300(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method
