.class public Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;
.super Ljava/lang/Object;
.source "MetadataBlockDataCueSheet.java"

# interfaces
.implements Lentagged/audioformats/flac/util/MetadataBlockData;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .parameter "b"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;->data:[B

    .line 28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;->data:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;->data:[B

    return-object v0
.end method
