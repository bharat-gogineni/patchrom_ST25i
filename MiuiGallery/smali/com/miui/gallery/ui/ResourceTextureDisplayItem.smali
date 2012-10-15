.class public Lcom/miui/gallery/ui/ResourceTextureDisplayItem;
.super Lcom/miui/gallery/ui/DisplayItem;
.source "ResourceTextureDisplayItem.java"


# instance fields
.field protected mHeight:I

.field protected final mResourceTexture:Lcom/miui/gallery/ui/ResourceTexture;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 13
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p3, p4}, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;-><init>(Lcom/miui/gallery/ui/ResourceTexture;II)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/ui/ResourceTexture;II)V
    .locals 0
    .parameter "texture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/ui/DisplayItem;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;->mResourceTexture:Lcom/miui/gallery/ui/ResourceTexture;

    .line 18
    iput p2, p0, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;->mWidth:I

    .line 19
    iput p3, p0, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;->mHeight:I

    .line 20
    return-void
.end method


# virtual methods
.method public getIdentity()J
    .locals 2

    .prologue
    .line 31
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 6
    .parameter "canvas"
    .parameter "pass"

    .prologue
    const/4 v2, 0x0

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;->mResourceTexture:Lcom/miui/gallery/ui/ResourceTexture;

    iget v4, p0, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;->mWidth:I

    iget v5, p0, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;->mHeight:I

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 25
    return v2
.end method
