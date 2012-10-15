.class public Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UpdateInfo"
.end annotation


# instance fields
.field public covers:[Lcom/miui/gallery/data/MediaItem;

.field public index:I

.field public item:Lcom/miui/gallery/data/MediaSet;

.field public showType:I

.field public showTypeVersion:J

.field public size:I

.field public totalMediaObjectCount:I

.field public version:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
