.class public Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;
.super Lcom/miui/gallery/util/TableColumn;
.source "GalleryDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/GalleryDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumColumn"
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "name"
    .parameter "columType"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/util/TableColumn;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
