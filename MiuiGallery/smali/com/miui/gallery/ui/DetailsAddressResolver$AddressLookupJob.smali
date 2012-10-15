.class Lcom/miui/gallery/ui/DetailsAddressResolver$AddressLookupJob;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mLatlng:[D

.field final synthetic this$0:Lcom/miui/gallery/ui/DetailsAddressResolver;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/ui/DetailsAddressResolver;[D)V
    .locals 0
    .parameter
    .parameter "latlng"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/miui/gallery/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    .line 44
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 6
    .parameter "jc"

    .prologue
    const/4 v5, 0x1

    .line 47
    new-instance v0, Lcom/miui/gallery/util/ReverseGeocoder;

    iget-object v1, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/miui/gallery/ui/DetailsAddressResolver;

    #getter for: Lcom/miui/gallery/ui/DetailsAddressResolver;->mContext:Lcom/miui/gallery/app/GalleryActivity;
    invoke-static {v1}, Lcom/miui/gallery/ui/DetailsAddressResolver;->access$000(Lcom/miui/gallery/ui/DetailsAddressResolver;)Lcom/miui/gallery/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, geocoder:Lcom/miui/gallery/util/ReverseGeocoder;
    iget-object v1, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iget-object v3, p0, Lcom/miui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    aget-wide v3, v3, v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/DetailsAddressResolver$AddressLookupJob;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
