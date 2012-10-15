.class public Lcom/miui/gallery/data/DBCloud$ExifDataConst;
.super Ljava/lang/Object;
.source "DBCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/DBCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifDataConst"
.end annotation


# instance fields
.field public final columnIndex:I

.field public final exifTagName:Ljava/lang/String;

.field public final exifValueType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "columnIndex"
    .parameter "exifTagName"
    .parameter "exifValueType"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->columnIndex:I

    .line 63
    iput-object p2, p0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifTagName:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/miui/gallery/data/DBCloud$ExifDataConst;->exifValueType:I

    .line 65
    return-void
.end method
