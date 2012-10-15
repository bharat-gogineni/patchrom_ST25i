.class Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;
.super Ljava/lang/Object;
.source "FlipPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/FlipPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatrixWrap"
.end annotation


# instance fields
.field public final mMatrixArr:[Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>([Landroid/graphics/Matrix;)V
    .locals 0
    .parameter "matrixArr"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/FlipPage$MatrixWrap;->mMatrixArr:[Landroid/graphics/Matrix;

    .line 125
    return-void
.end method
