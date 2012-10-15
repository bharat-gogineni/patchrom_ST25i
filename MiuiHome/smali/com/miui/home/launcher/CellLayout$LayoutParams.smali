.class public Lcom/miui/home/launcher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field accessTag:J

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field regenerateId:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 1107
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1108
    iput p1, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 1109
    iput p2, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 1110
    iput p3, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1111
    iput p4, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1095
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1096
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1097
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1098
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1101
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1103
    iput v0, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1104
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 1117
    iget v0, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1118
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1119
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 1120
    .local v2, myCellX:I
    iget v3, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 1122
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    .line 1124
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    .line 1127
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    .line 1128
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    .line 1129
    return-void
.end method
