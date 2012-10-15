.class public Lcom/miui/gallery/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public rowsLand:I

.field public rowsPort:I

.field public slotGap:I

.field public slotHeight:I

.field public slotHorizontalPadding:I

.field public slotVerticalPadding:I

.field public slotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 423
    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    .line 425
    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Spec;->rowsLand:I

    .line 426
    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Spec;->rowsPort:I

    .line 427
    iput v1, p0, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    .line 428
    iput v1, p0, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    .line 429
    iput v1, p0, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    return-void
.end method
