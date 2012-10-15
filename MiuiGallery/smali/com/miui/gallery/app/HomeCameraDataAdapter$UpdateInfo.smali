.class Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
.super Ljava/lang/Object;
.source "HomeCameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public reloadCount:I

.field public reloadStart:I

.field public size:I

.field public totalMediaObjectCount:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;-><init>()V

    return-void
.end method
