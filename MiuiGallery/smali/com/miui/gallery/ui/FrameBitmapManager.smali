.class public Lcom/miui/gallery/ui/FrameBitmapManager;
.super Ljava/lang/Object;
.source "FrameBitmapManager.java"


# instance fields
.field private final HEAVY_COVER_ALPHA:F

.field private final LIGHT_COVER_ALPHA:F

.field private mBlurFrameBitmapH:Landroid/graphics/Bitmap;

.field private mBlurFrameBitmapL:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->mBlurFrameBitmapL:Landroid/graphics/Bitmap;

    .line 12
    iput-object v0, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->mBlurFrameBitmapH:Landroid/graphics/Bitmap;

    .line 14
    const v0, 0x3e99999a

    iput v0, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->LIGHT_COVER_ALPHA:F

    .line 15
    const v0, 0x3f19999a

    iput v0, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->HEAVY_COVER_ALPHA:F

    .line 22
    return-void
.end method


# virtual methods
.method public createBitmapWithFrame(ILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "type"
    .parameter "bitmap"
    .parameter "recycle"

    .prologue
    const/4 v3, 0x0

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, ret:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_0

    .line 53
    const-string v1, "wrong type"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->mBlurFrameBitmapL:Landroid/graphics/Bitmap;

    invoke-static {p2, v1, p3}, Lcom/miui/gallery/common/BitmapUtils;->createBitmapWithFrame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->mBlurFrameBitmapH:Landroid/graphics/Bitmap;

    invoke-static {p2, v1, p3}, Lcom/miui/gallery/common/BitmapUtils;->createBitmapWithFrame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createFrame(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->mBlurFrameBitmapL:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const v0, 0x3e99999a

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/common/BitmapUtils;->createFrameBitmap(IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->mBlurFrameBitmapL:Landroid/graphics/Bitmap;

    .line 29
    const v0, 0x3f19999a

    invoke-static {p1, p2, v0}, Lcom/miui/gallery/common/BitmapUtils;->createFrameBitmap(IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/FrameBitmapManager;->mBlurFrameBitmapH:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
