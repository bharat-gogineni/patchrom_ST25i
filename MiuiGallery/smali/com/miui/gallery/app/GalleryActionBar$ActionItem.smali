.class Lcom/miui/gallery/app/GalleryActionBar$ActionItem;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionItem"
.end annotation


# instance fields
.field public action:I

.field public clusterBy:I

.field public dialogTitle:I

.field public enabled:Z

.field public spinnerTitle:I

.field public visible:Z


# direct methods
.method public constructor <init>(IZZII)V
    .locals 7
    .parameter "action"
    .parameter "applied"
    .parameter "enabled"
    .parameter "title"
    .parameter "clusterBy"

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    .line 59
    return-void
.end method

.method public constructor <init>(IZZIII)V
    .locals 1
    .parameter "action"
    .parameter "applied"
    .parameter "enabled"
    .parameter "spinnerTitle"
    .parameter "dialogTitle"
    .parameter "clusterBy"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->action:I

    .line 64
    iput-boolean p3, p0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 65
    iput p4, p0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->spinnerTitle:I

    .line 66
    iput p5, p0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->dialogTitle:I

    .line 67
    iput p6, p0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->clusterBy:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/GalleryActionBar$ActionItem;->visible:Z

    .line 69
    return-void
.end method
