.class Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;J)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput-wide p2, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->mVersion:J

    .line 786
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
    .line 790
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/miui/gallery/util/Future;

    .line 791
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$400(Lcom/miui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$400(Lcom/miui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 793
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 797
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-wide v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->mVersion:J

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;->mFuture:Lcom/miui/gallery/util/Future;

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->updateScreenNail(JLcom/miui/gallery/util/Future;)V
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$600(Lcom/miui/gallery/app/PhotoDataAdapter;JLcom/miui/gallery/util/Future;)V

    .line 798
    return-void
.end method
