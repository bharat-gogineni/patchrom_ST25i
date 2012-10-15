.class public Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;
.super Ljava/lang/Object;
.source "StorageCloudSourceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/StorageCloudSourceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceConst"
.end annotation


# instance fields
.field public authority:Ljava/lang/String;

.field public imageItemPath:Lcom/miui/gallery/data/Path;

.field public matcherPatternImagePath:Ljava/lang/String;

.field public matcherPatternTopSetPath:Ljava/lang/String;

.field public matcherPatternVideoPath:Ljava/lang/String;

.field public videoItemPath:Lcom/miui/gallery/data/Path;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
