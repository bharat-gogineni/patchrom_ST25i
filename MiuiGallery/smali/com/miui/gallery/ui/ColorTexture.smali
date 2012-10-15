.class public Lcom/miui/gallery/ui/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcom/miui/gallery/ui/Texture;


# instance fields
.field private final mColor:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "color"

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/miui/gallery/ui/ColorTexture;->mColor:I

    .line 30
    iput v0, p0, Lcom/miui/gallery/ui/ColorTexture;->mWidth:I

    .line 31
    iput v0, p0, Lcom/miui/gallery/ui/ColorTexture;->mHeight:I

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 39
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget v5, p0, Lcom/miui/gallery/ui/ColorTexture;->mColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/ui/GLCanvas;->fillRect(FFFFI)V

    .line 40
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/ui/ColorTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/ui/ColorTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/gallery/ui/ColorTexture;->mColor:I

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method
