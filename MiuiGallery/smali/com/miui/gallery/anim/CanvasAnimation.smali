.class public abstract Lcom/miui/gallery/anim/CanvasAnimation;
.super Lcom/miui/gallery/anim/Animation;
.source "CanvasAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/gallery/anim/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/miui/gallery/ui/GLCanvas;)V
.end method

.method public abstract getCanvasSaveFlags()I
.end method
