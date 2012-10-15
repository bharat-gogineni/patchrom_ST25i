.class public Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
.super Ljava/lang/Object;
.source "CloudMediaSetSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudMediaSetSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 57
    instance-of v2, p1, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;

    .line 60
    .local v0, entry:Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;
    iget v2, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/cloud/CloudMediaSetSet$BucketEntry;->bucketId:I

    return v0
.end method
