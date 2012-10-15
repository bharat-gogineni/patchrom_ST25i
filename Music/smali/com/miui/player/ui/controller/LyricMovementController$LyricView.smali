.class Lcom/miui/player/ui/controller/LyricMovementController$LyricView;
.super Ljava/lang/Object;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricView"
.end annotation


# instance fields
.field private final mLineExtraSpacing:F

.field private final mLyricBuilder:Ljava/lang/StringBuilder;

.field private final mLyricViewAfter:Landroid/widget/TextView;

.field private final mLyricViewBefore:Landroid/widget/TextView;

.field private final mLyricViewCurrent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const v0, 0x7f0c002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f0c002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f0c002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLineExtraSpacing:F

    .line 273
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLineExtraSpacing:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 274
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLineExtraSpacing:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 275
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLineExtraSpacing:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    .line 278
    return-void
.end method


# virtual methods
.method public drawLyric(Lcom/miui/player/meta/LyricParser$Lyric;Lcom/miui/player/meta/LyricParser$LyricShot;II)V
    .locals 6
    .parameter "lyric"
    .parameter "lyricShot"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 309
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 310
    move v1, p3

    .local v1, i:I
    :goto_0
    iget v2, p2, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    if-ge v1, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricContent(I)Lcom/miui/player/meta/LyricParser$LyricEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget v2, p2, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    invoke-virtual {p1, v2}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricContent(I)Lcom/miui/player/meta/LyricParser$LyricEntity;

    move-result-object v2

    iget-object v0, v2, Lcom/miui/player/meta/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 322
    .local v0, current:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 323
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 328
    iget v2, p2, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    add-int/lit8 v1, v2, 0x1

    :goto_1
    if-ge v1, p4, :cond_3

    .line 329
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricContent(I)Lcom/miui/player/meta/LyricParser$LyricEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    return-void
.end method

.method public getAccurateLineHeight()F
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLineExtraSpacing:F

    return v0
.end method

.method public getOffsetNumArr(Lcom/miui/player/meta/LyricParser$Lyric;)[I
    .locals 9
    .parameter "lyric"

    .prologue
    .line 282
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    if-lez v7, :cond_1

    .line 283
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 284
    .local v6, temp:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const/4 v5, -0x5

    .line 287
    .local v5, start:I
    invoke-virtual {p1}, Lcom/miui/player/meta/LyricParser$Lyric;->size()I

    move-result v7

    add-int/lit8 v0, v7, 0x8

    .line 288
    .local v0, end:I
    sub-int v7, v0, v5

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [I

    .line 290
    .local v3, ret:[I
    move v1, v5

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 291
    invoke-virtual {p1, v1}, Lcom/miui/player/meta/LyricParser$Lyric;->getLyricContent(I)Lcom/miui/player/meta/LyricParser$LyricEntity;

    move-result-object v7

    iget-object v4, v7, Lcom/miui/player/meta/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 292
    .local v4, spanned:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 294
    sub-int v2, v1, v5

    .line 297
    .local v2, offset:I
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aput v7, v3, v2

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v2           #offset:I
    .end local v4           #spanned:Ljava/lang/CharSequence;
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v3           #ret:[I
    .end local v5           #start:I
    .end local v6           #temp:Ljava/lang/CharSequence;
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "hint"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewBefore:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewCurrent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$LyricView;->mLyricViewAfter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method
