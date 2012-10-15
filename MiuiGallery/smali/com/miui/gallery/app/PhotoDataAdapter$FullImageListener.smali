.class Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;
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
    name = "FullImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
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
    .line 762
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-wide p2, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->mVersion:J

    .line 764
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
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/miui/gallery/util/Future;

    .line 769
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$400(Lcom/miui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    #getter for: Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$400(Lcom/miui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 775
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-wide v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->mVersion:J

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;->mFuture:Lcom/miui/gallery/util/Future;

    #calls: Lcom/miui/gallery/app/PhotoDataAdapter;->updateFullImage(JLcom/miui/gallery/util/Future;)V
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/app/PhotoDataAdapter;->access$500(Lcom/miui/gallery/app/PhotoDataAdapter;JLcom/miui/gallery/util/Future;)V

    .line 776
    return-void
.end method
