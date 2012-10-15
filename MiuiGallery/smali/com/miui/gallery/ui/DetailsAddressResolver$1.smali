.class Lcom/miui/gallery/ui/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DetailsAddressResolver;->resolveAddress([DLcom/miui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
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
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DetailsAddressResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$1;->this$0:Lcom/miui/gallery/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$1;->this$0:Lcom/miui/gallery/ui/DetailsAddressResolver;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/miui/gallery/util/Future;
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/DetailsAddressResolver;->access$102(Lcom/miui/gallery/ui/DetailsAddressResolver;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;

    .line 68
    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$1;->this$0:Lcom/miui/gallery/ui/DetailsAddressResolver;

    #getter for: Lcom/miui/gallery/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/ui/DetailsAddressResolver;->access$300(Lcom/miui/gallery/ui/DetailsAddressResolver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/DetailsAddressResolver$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/DetailsAddressResolver$1$1;-><init>(Lcom/miui/gallery/ui/DetailsAddressResolver$1;Lcom/miui/gallery/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_0
    return-void
.end method
