.class Lcom/miui/gallery/photoeditor/SaveCopyTask$SaveCopyTaskMimeType;
.super Ljava/lang/Object;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/photoeditor/SaveCopyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveCopyTaskMimeType"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "jpg"

    return-object v0
.end method

.method public static getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "image/jpeg"

    return-object v0
.end method
