.class public Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Lcom/miui/player/meta/AlbumManager$BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/meta/AlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileBitmapDecoder"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public decode(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "opt"

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 262
    iget-object v1, p0, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 263
    iget-object v1, p0, Lcom/miui/player/meta/AlbumManager$FileBitmapDecoder;->mPath:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/miui/player/meta/AlbumManager;->getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v1

    goto :goto_0
.end method
