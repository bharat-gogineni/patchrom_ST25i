.class public Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;
.super Ljava/lang/Object;
.source "RendererUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/photoeditor/RendererUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderContext"
.end annotation


# instance fields
.field private posCoordHandle:I

.field private posVertices:Ljava/nio/FloatBuffer;

.field private shaderProgram:I

.field private texCoordHandle:I

.field private texSamplerHandle:I

.field private texVertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->posVertices:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->shaderProgram:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->shaderProgram:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->texCoordHandle:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;)Ljava/nio/FloatBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->texVertices:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->texVertices:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->posCoordHandle:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->texSamplerHandle:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/photoeditor/RendererUtils$RenderContext;->texSamplerHandle:I

    return p1
.end method
