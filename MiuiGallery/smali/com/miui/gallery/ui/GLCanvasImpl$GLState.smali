.class Lcom/miui/gallery/ui/GLCanvasImpl$GLState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLState"
.end annotation


# instance fields
.field private mBlendEnabled:Z

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineSmooth:Z

.field private mLineWidth:F

.field private mTexEnvMode:I

.field private mTexture2DEnabled:Z

.field private mTextureAlpha:F


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 662
    iput v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 663
    iput-boolean v4, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTexture2DEnabled:Z

    .line 664
    iput-boolean v4, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 665
    iput v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 666
    iput-boolean v5, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mLineSmooth:Z

    .line 669
    iput-object p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 672
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 675
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 676
    const/16 v0, 0xc11

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 678
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 679
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 680
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 682
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 686
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 687
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 689
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 690
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 693
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 694
    return-void
.end method


# virtual methods
.method public setBlendEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0xbe2

    .line 759
    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    if-ne v0, p1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 760
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 761
    if-eqz p1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setColorMode(IF)V
    .locals 6
    .parameter "color"
    .parameter "alpha"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x437f

    .line 732
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f733333

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 736
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 738
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTexture2DEnabled(Z)V

    .line 740
    ushr-int/lit8 v1, p1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const v2, 0x477fff00

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    div-float v0, v1, v5

    .line 741
    .local v0, prealpha:F
    iget-object v1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    .line 746
    return-void

    .end local v0           #prealpha:F
    :cond_1
    move v1, v2

    .line 732
    goto :goto_0
.end method

.method public setLineSmooth(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0xb20

    .line 709
    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mLineSmooth:Z

    if-ne v0, p1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 710
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mLineSmooth:Z

    .line 711
    if-eqz p1, :cond_1

    .line 712
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 703
    iget v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 705
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    goto :goto_0
.end method

.method public setTexEnvMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 697
    iget v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 699
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public setTexture2DEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0xde1

    .line 749
    iget-boolean v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTexture2DEnabled:Z

    if-ne v0, p1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 750
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTexture2DEnabled:Z

    .line 751
    if-eqz p1, :cond_1

    .line 752
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setTextureAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    .line 719
    iget v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 720
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 721
    const v0, 0x3f733333

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 724
    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 727
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0
.end method
