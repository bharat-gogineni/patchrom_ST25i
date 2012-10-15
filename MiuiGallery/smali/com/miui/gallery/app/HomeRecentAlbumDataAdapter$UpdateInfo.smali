.class Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
.super Ljava/lang/Object;
.source "HomeRecentAlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public covers:[Lcom/miui/gallery/data/MediaItem;

.field public index:I

.field public item:Lcom/miui/gallery/data/MediaSet;

.field public size:I

.field public totalMediaObjectCount:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;-><init>()V

    return-void
.end method
