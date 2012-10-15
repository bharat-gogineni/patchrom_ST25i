.class public Lcom/android/mms/ui/RowLayout;
.super Landroid/view/ViewGroup;
.source "RowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RowLayout$LayoutParams;,
        Lcom/android/mms/ui/RowLayout$RowInfo;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field protected mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RowLayout$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 15
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 15
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0, p2}, Lcom/android/mms/ui/RowLayout;->initAttributes(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 15
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0, p2}, Lcom/android/mms/ui/RowLayout;->initAttributes(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private initAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/mms/R$styleable;->RowLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RowLayout;->setVerticalSpacing(I)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RowLayout;->setHorizontalSpacing(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/RowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/mms/ui/RowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/mms/ui/RowLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 73
    new-instance v0, Lcom/android/mms/ui/RowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/RowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getPaddingTop()I

    move-result v7

    add-int v6, p3, v7

    .line 157
    .local v6, y:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getPaddingLeft()I

    move-result v7

    add-int v4, p2, v7

    .line 159
    .local v4, x:I
    const/4 v1, 0x0

    .local v1, column:I
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/RowLayout$RowInfo;

    iget v7, v7, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    if-ge v1, v7, :cond_1

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v5, v4, v7

    .line 164
    .local v5, x2:I
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_0

    .line 165
    move v5, p4

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/view/View;->layout(IIII)V

    .line 169
    iget v7, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    add-int v4, v5, v7

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v0           #child:Landroid/view/View;
    .end local v5           #x2:I
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/RowLayout$RowInfo;

    iget v7, v7, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    iget v8, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    .end local v1           #column:I
    .end local v4           #x:I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 92
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 93
    .local v16, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 94
    .local v17, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 95
    .local v10, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 97
    .local v11, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getChildCount()I

    move-result v9

    .line 98
    .local v9, count:I
    const/4 v6, 0x0

    .line 99
    .local v6, heightUsed:I
    const/4 v13, 0x0

    .line 101
    .local v13, maxRowWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 102
    new-instance v15, Lcom/android/mms/ui/RowLayout$RowInfo;

    invoke-direct {v15}, Lcom/android/mms/ui/RowLayout$RowInfo;-><init>()V

    .line 103
    .local v15, rowInfo:Lcom/android/mms/ui/RowLayout$RowInfo;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v9, :cond_1

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, child:Landroid/view/View;
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/RowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 109
    .local v7, childHeight:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 111
    .local v8, childWidth:I
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    add-int v14, v1, v8

    .line 112
    .local v14, newWidth:I
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    if-lez v1, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    add-int/2addr v14, v1

    .line 115
    :cond_0
    if-eqz v16, :cond_6

    move/from16 v0, v17

    if-le v14, v0, :cond_6

    .line 117
    if-eqz v10, :cond_4

    if-lt v6, v11, :cond_4

    .line 140
    .end local v2           #child:Landroid/view/View;
    .end local v7           #childHeight:I
    .end local v8           #childWidth:I
    .end local v14           #newWidth:I
    :cond_1
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    if-lez v1, :cond_3

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    add-int/2addr v6, v1

    .line 144
    :cond_2
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    add-int/2addr v6, v1

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    move/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/mms/ui/RowLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/mms/ui/RowLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/RowLayout;->setMeasuredDimension(II)V

    .line 151
    return-void

    .line 122
    .restart local v2       #child:Landroid/view/View;
    .restart local v7       #childHeight:I
    .restart local v8       #childWidth:I
    .restart local v14       #newWidth:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    add-int/2addr v6, v1

    .line 125
    :cond_5
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    add-int/2addr v6, v1

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v15, Lcom/android/mms/ui/RowLayout$RowInfo;

    .end local v15           #rowInfo:Lcom/android/mms/ui/RowLayout$RowInfo;
    invoke-direct {v15}, Lcom/android/mms/ui/RowLayout$RowInfo;-><init>()V

    .line 130
    .restart local v15       #rowInfo:Lcom/android/mms/ui/RowLayout$RowInfo;
    :cond_6
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    if-lez v1, :cond_7

    .line 131
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    add-int/2addr v1, v3

    iput v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    .line 133
    :cond_7
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    add-int/2addr v1, v8

    iput v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    .line 134
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    .line 135
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 136
    iget v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v15, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    .line 103
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "horizontalSpacing"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 83
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->requestLayout()V

    .line 84
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "verticalSpacing"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 78
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->requestLayout()V

    .line 79
    return-void
.end method
