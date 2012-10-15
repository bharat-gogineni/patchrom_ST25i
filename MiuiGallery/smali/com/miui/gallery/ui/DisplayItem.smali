.class public abstract Lcom/miui/gallery/ui/DisplayItem;
.super Ljava/lang/Object;
.source "DisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    }
.end annotation


# instance fields
.field protected mBoxHeight:I

.field protected mBoxWidth:I

.field protected mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/DisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    return-void
.end method


# virtual methods
.method public abstract getIdentity()J
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public abstract render(Lcom/miui/gallery/ui/GLCanvas;I)I
.end method

.method public setBox(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/ui/DisplayItem;->mBoxWidth:I

    .line 40
    iput p2, p0, Lcom/miui/gallery/ui/DisplayItem;->mBoxHeight:I

    .line 41
    return-void
.end method

.method public setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V
    .locals 0
    .parameter "crop"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/ui/DisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    .line 56
    return-void
.end method
