.class Lcom/miui/player/ui/controller/GridController$Position;
.super Ljava/lang/Object;
.source "GridController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/GridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Position"
.end annotation


# instance fields
.field public final mColumn:I

.field public final mRow:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "row"
    .parameter "col"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/miui/player/ui/controller/GridController$Position;->mRow:I

    .line 105
    iput p2, p0, Lcom/miui/player/ui/controller/GridController$Position;->mColumn:I

    .line 106
    return-void
.end method
