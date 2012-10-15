.class public Lcom/android/mms/ui/WidgetDrawableSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "WidgetDrawableSpan.java"


# static fields
.field private static final MESEASURE_SPEC:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFrame:Landroid/widget/FrameLayout;

.field private final mResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/mms/ui/WidgetDrawableSpan;->MESEASURE_SPEC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mResource:Landroid/content/res/Resources;

    .line 22
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    .line 23
    iget-object v0, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 24
    iget-object v0, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 30
    iget-object v2, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/mms/ui/WidgetDrawableSpan;->MESEASURE_SPEC:I

    sget v4, Lcom/android/mms/ui/WidgetDrawableSpan;->MESEASURE_SPEC:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 31
    iget-object v2, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 33
    iget-object v2, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    .local v1, drawingCache:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/mms/ui/WidgetDrawableSpan;->mResource:Landroid/content/res/Resources;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 35
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 8
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    const-wide/high16 v6, 0x4008

    .line 43
    invoke-super/range {p0 .. p5}, Landroid/text/style/DynamicDrawableSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    .line 45
    .local v1, ret:I
    if-eqz p5, :cond_0

    .line 46
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v0, v2, v3

    .line 49
    .local v0, height:I
    int-to-double v2, v0

    div-double/2addr v2, v6

    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 50
    int-to-double v2, v0

    div-double/2addr v2, v6

    const-wide/high16 v4, 0x3ff0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 52
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 53
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 56
    .end local v0           #height:I
    :cond_0
    return v1
.end method
