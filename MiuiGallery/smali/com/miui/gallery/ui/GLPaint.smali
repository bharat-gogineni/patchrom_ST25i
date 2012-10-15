.class public Lcom/miui/gallery/ui/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field private mColor:I

.field private mFlags:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/miui/gallery/ui/GLPaint;->mFlags:I

    .line 26
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/miui/gallery/ui/GLPaint;->mLineWidth:F

    .line 27
    iput v1, p0, Lcom/miui/gallery/ui/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getAntiAlias()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/ui/GLPaint;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/miui/gallery/ui/GLPaint;->mColor:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/ui/GLPaint;->mLineWidth:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 38
    iput p1, p0, Lcom/miui/gallery/ui/GLPaint;->mColor:I

    .line 39
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 46
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 47
    iput p1, p0, Lcom/miui/gallery/ui/GLPaint;->mLineWidth:F

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
