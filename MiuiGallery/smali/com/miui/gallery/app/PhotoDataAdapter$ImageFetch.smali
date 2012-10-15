.class Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFetch"
.end annotation


# instance fields
.field imageBit:I

.field indexOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "offset"
    .parameter "bit"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 85
    iput p2, p0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 86
    return-void
.end method
