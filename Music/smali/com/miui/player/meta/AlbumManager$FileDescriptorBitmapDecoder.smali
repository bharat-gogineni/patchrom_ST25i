.class Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Lcom/miui/player/meta/AlbumManager$BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/meta/AlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileDescriptorBitmapDecoder"
.end annotation


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    .line 366
    return-void
.end method


# virtual methods
.method public decode(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 373
    iget-object v1, p0, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v2, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 374
    iget-object v1, p0, Lcom/miui/player/meta/AlbumManager$FileDescriptorBitmapDecoder;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {p3, p1, p2}, Lcom/miui/player/meta/AlbumManager;->getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v1

    goto :goto_0
.end method
