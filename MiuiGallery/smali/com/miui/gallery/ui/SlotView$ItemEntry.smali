.class Lcom/miui/gallery/ui/SlotView$ItemEntry;
.super Lcom/miui/gallery/util/LinkedNode;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemEntry"
.end annotation


# instance fields
.field public base:Lcom/miui/gallery/ui/PositionRepository$Position;

.field public item:Lcom/miui/gallery/ui/DisplayItem;

.field public target:Lcom/miui/gallery/ui/PositionRepository$Position;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/DisplayItem;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;)V
    .locals 0
    .parameter "item"
    .parameter "target"
    .parameter "base"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/miui/gallery/util/LinkedNode;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView$ItemEntry;->item:Lcom/miui/gallery/ui/DisplayItem;

    .line 405
    iput-object p2, p0, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 406
    iput-object p3, p0, Lcom/miui/gallery/ui/SlotView$ItemEntry;->base:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 407
    return-void
.end method
