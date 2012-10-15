.class public Lentagged/audioformats/flac/util/MetadataBlockDataPadding;
.super Ljava/lang/Object;
.source "MetadataBlockDataPadding.java"

# interfaces
.implements Lentagged/audioformats/flac/util/MetadataBlockData;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->length:I

    .line 28
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
