.class public Lcom/miui/gallery/ui/StringView;
.super Lcom/miui/gallery/ui/GLView;
.source "StringView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/StringView$LabelSpec;
    }
.end annotation


# instance fields
.field private final mSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;

.field private mTextTexture:Lcom/miui/gallery/ui/StringTexture;


# virtual methods
.method public render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/StringView;->mTextTexture:Lcom/miui/gallery/ui/StringTexture;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/StringView;->mSpec:Lcom/miui/gallery/ui/StringView$LabelSpec;

    iget v2, v2, Lcom/miui/gallery/ui/StringView$LabelSpec;->boxHeight:I

    iget-object v3, p0, Lcom/miui/gallery/ui/StringView;->mTextTexture:Lcom/miui/gallery/ui/StringTexture;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/StringTexture;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 61
    return-void
.end method
