.class Lcom/miui/home/launcher/CellLayout$DragPos;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragPos"
.end annotation


# instance fields
.field cellXY:[I

.field stayType:I

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    .line 639
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 641
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    .line 642
    return-void
.end method


# virtual methods
.method equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z
    .locals 4
    .parameter "d"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v1

    iget-object v3, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v0

    iget-object v3, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method reset()V
    .locals 5

    .prologue
    .line 644
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v2, v3

    aput v4, v0, v1

    .line 645
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 646
    return-void
.end method

.method set(Lcom/miui/home/launcher/CellLayout$DragPos;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    iget-object v1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 649
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    iget-object v1, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 650
    iget v0, p1, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    iput v0, p0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 651
    return-void
.end method
