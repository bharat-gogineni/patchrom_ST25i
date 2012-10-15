.class public Lcom/miui/gallery/ui/DisplayItem$CropDimension;
.super Ljava/lang/Object;
.source "DisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/DisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CropDimension"
.end annotation


# instance fields
.field public cropHeight:I

.field public cropWidth:I

.field final synthetic this$0:Lcom/miui/gallery/ui/DisplayItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/DisplayItem;II)V
    .locals 0
    .parameter
    .parameter "aCropWidth"
    .parameter "aCropHeight"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->this$0:Lcom/miui/gallery/ui/DisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p2, p0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    .line 24
    iput p3, p0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    .line 25
    return-void
.end method
