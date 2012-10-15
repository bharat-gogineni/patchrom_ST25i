.class Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/photoeditor/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoRenderer"
.end annotation


# instance fields
.field flippedHorizontalDegrees:F

.field flippedVerticalDegrees:F

.field photo:Lcom/miui/gallery/photoeditor/Photo;

.field final photoBounds:Landroid/graphics/RectF;

.field final queue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field renderContext:Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;

.field rotatedDegrees:F

.field final synthetic this$0:Lcom/miui/gallery/photoeditor/PhotoView;

.field viewHeight:I

.field viewWidth:I


# direct methods
.method private constructor <init>(Lcom/miui/gallery/photoeditor/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->this$0:Lcom/miui/gallery/photoeditor/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/photoeditor/PhotoView;Lcom/miui/gallery/photoeditor/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;-><init>(Lcom/miui/gallery/photoeditor/PhotoView;)V

    return-void
.end method


# virtual methods
.method flipPhoto(FF)V
    .locals 7
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/photoeditor/RendererUtils;->setRenderToFlip(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;IIIIFF)V

    .line 164
    iput p1, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    .line 165
    iput p2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    .line 167
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, r:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    monitor-enter v3

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 176
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v1, :cond_1

    .line 178
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->this$0:Lcom/miui/gallery/photoeditor/PhotoView;

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/PhotoView;->requestRender()V

    .line 183
    :cond_2
    invoke-static {}, Lcom/miui/gallery/photoeditor/RendererUtils;->renderBackground()V

    .line 184
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v5, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/photoeditor/RendererUtils;->renderTexture(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;III)V

    .line 187
    :cond_3
    return-void

    .line 176
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 191
    iput p2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    .line 192
    iput p3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->updateSurface(ZZ)V

    .line 194
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 198
    invoke-static {}, Lcom/miui/gallery/photoeditor/RendererUtils;->createProgram()Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;

    .line 199
    return-void
.end method

.method rotatePhoto(F)V
    .locals 6
    .parameter "degrees"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/photoeditor/RendererUtils;->setRenderToRotate(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;IIIIF)V

    .line 156
    iput p1, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    .line 158
    :cond_0
    return-void
.end method

.method setPhoto(Lcom/miui/gallery/photoeditor/Photo;Z)V
    .locals 9
    .parameter "photo"
    .parameter "clearTransform"

    .prologue
    const/4 v3, 0x0

    .line 117
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v2

    .line 118
    .local v2, width:I
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v1

    .line 120
    .local v1, height:I
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    monitor-enter v4

    .line 121
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v6, v1

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 122
    .local v0, changed:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 123
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v2

    int-to-float v8, v1

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    .line 127
    invoke-virtual {p0, p2, v0}, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->updateSurface(ZZ)V

    .line 128
    return-void

    .end local v0           #changed:Z
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_2
    move v2, v3

    .line 117
    goto :goto_0

    .restart local v2       #width:I
    :cond_3
    move v1, v3

    .line 118
    goto :goto_1

    .restart local v1       #height:I
    :cond_4
    move v0, v3

    .line 121
    goto :goto_2

    .line 125
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method updateSurface(ZZ)V
    .locals 8
    .parameter "clearTransform"
    .parameter "sizeChanged"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 131
    iget v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_5

    :cond_0
    move v0, v3

    .line 132
    .local v0, flipped:Z
    :goto_0
    iget v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    if-eqz v0, :cond_6

    :cond_1
    move v1, v3

    .line 133
    .local v1, transformed:Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_3

    :cond_2
    if-eqz p2, :cond_7

    if-nez v1, :cond_7

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    if-eqz v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->renderContext:Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v3}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->photo:Lcom/miui/gallery/photoeditor/Photo;

    invoke-virtual {v4}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewWidth:I

    iget v6, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->viewHeight:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/gallery/photoeditor/RendererUtils;->setRenderToFit(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;IIII)V

    .line 138
    iput v7, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    .line 139
    iput v7, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    .line 140
    iput v7, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    .line 150
    :cond_4
    :goto_2
    return-void

    .end local v0           #flipped:Z
    .end local v1           #transformed:Z
    :cond_5
    move v0, v2

    .line 131
    goto :goto_0

    .restart local v0       #flipped:Z
    :cond_6
    move v1, v2

    .line 132
    goto :goto_1

    .line 144
    .restart local v1       #transformed:Z
    :cond_7
    iget v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_8

    .line 145
    iget v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->rotatedDegrees:F

    invoke-virtual {p0, v2}, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->rotatePhoto(F)V

    goto :goto_2

    .line 146
    :cond_8
    if-eqz v0, :cond_4

    .line 147
    iget v2, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedHorizontalDegrees:F

    iget v3, p0, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flippedVerticalDegrees:F

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/photoeditor/PhotoView$PhotoRenderer;->flipPhoto(FF)V

    goto :goto_2
.end method
