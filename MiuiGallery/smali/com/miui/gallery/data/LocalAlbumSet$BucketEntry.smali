.class public Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public date:J

.field public filePath:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 514
    instance-of v2, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    if-nez v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 516
    check-cast v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    .line 517
    .local v0, entry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    iget v2, p0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    return v0
.end method
