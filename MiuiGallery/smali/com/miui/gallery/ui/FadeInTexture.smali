.class public Lcom/miui/gallery/ui/FadeInTexture;
.super Ljava/lang/Object;
.source "FadeInTexture.java"

# interfaces
.implements Lcom/miui/gallery/ui/Texture;


# instance fields
.field private final mColor:I

.field private final mFromTexture:Lcom/miui/gallery/ui/BasicTexture;

.field private mIsAnimating:Z

.field private final mStartTime:J

.field private final mToTexture:Lcom/miui/gallery/ui/BasicTexture;


# direct methods
.method public constructor <init>(ILcom/miui/gallery/ui/BasicTexture;)V
    .locals 2
    .parameter "color"
    .parameter "texture"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/miui/gallery/ui/FadeInTexture;->mColor:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mFromTexture:Lcom/miui/gallery/ui/BasicTexture;

    .line 40
    iput-object p2, p0, Lcom/miui/gallery/ui/FadeInTexture;->mToTexture:Lcom/miui/gallery/ui/BasicTexture;

    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/ui/FadeInTexture;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mStartTime:J

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mIsAnimating:Z

    .line 43
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/FadeInTexture;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/gallery/ui/FadeInTexture;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 92
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private now()J
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/ui/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mFromTexture:Lcom/miui/gallery/ui/BasicTexture;

    if-nez v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/ui/FadeInTexture;->mToTexture:Lcom/miui/gallery/ui/BasicTexture;

    iget v2, p0, Lcom/miui/gallery/ui/FadeInTexture;->mColor:I

    invoke-direct {p0}, Lcom/miui/gallery/ui/FadeInTexture;->getRatio()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/miui/gallery/ui/GLCanvas;->drawMixed(Lcom/miui/gallery/ui/BasicTexture;IFIIII)V

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/FadeInTexture;->mFromTexture:Lcom/miui/gallery/ui/BasicTexture;

    iget-object v2, p0, Lcom/miui/gallery/ui/FadeInTexture;->mToTexture:Lcom/miui/gallery/ui/BasicTexture;

    invoke-direct {p0}, Lcom/miui/gallery/ui/FadeInTexture;->getRatio()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/miui/gallery/ui/GLCanvas;->drawMixed(Lcom/miui/gallery/ui/BasicTexture;Lcom/miui/gallery/ui/BasicTexture;FIIII)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mToTexture:Lcom/miui/gallery/ui/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/BasicTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mToTexture:Lcom/miui/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mToTexture:Lcom/miui/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 4

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/miui/gallery/ui/FadeInTexture;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/ui/FadeInTexture;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mIsAnimating:Z

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mIsAnimating:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/ui/FadeInTexture;->mToTexture:Lcom/miui/gallery/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BasicTexture;->isOpaque()Z

    move-result v0

    return v0
.end method
