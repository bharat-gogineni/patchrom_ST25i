.class public Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static sEllipsis:Ljava/lang/String;

.field private static sTypefaceHighlight:I


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "\u2026"

    sput-object v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->sTypefaceHighlight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 27
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, fullTextLower:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 81
    .local v20, targetStringLower:Ljava/lang/String;
    const/16 v19, 0x0

    .line 82
    .local v19, startPos:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v14

    .line 83
    .local v14, searchStringLength:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 85
    .local v5, bodyLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 86
    .local v10, m:Ljava/util/regex/Matcher;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 87
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v19

    .line 90
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->getPaint()Landroid/text/TextPaint;

    move-result-object v22

    .line 92
    .local v22, tp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 93
    .local v15, searchStringWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .line 95
    .local v21, textFieldWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 96
    .local v16, snippetString:Ljava/lang/String;
    cmpl-float v23, v15, v21

    if-lez v23, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    add-int v24, v19, v14

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 139
    :cond_1
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    .local v17, spannable:Landroid/text/SpannableString;
    const/16 v18, 0x0

    .line 142
    .local v18, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 143
    :goto_0
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 144
    new-instance v23, Landroid/text/style/StyleSpan;

    sget v24, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->sTypefaceHighlight:I

    invoke-direct/range {v23 .. v24}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v24

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    goto :goto_0

    .line 99
    .end local v17           #spannable:Landroid/text/SpannableString;
    .end local v18           #start:I
    :cond_2
    sget-object v23, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 100
    .local v7, ellipsisWidth:F
    const/high16 v23, 0x4000

    mul-float v23, v23, v7

    sub-float v21, v21, v23

    .line 102
    const/4 v13, -0x1

    .line 103
    .local v13, offset:I
    const/16 v18, -0x1

    .line 104
    .restart local v18       #start:I
    const/4 v8, -0x1

    .line 110
    .local v8, end:I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 112
    const/16 v23, 0x0

    sub-int v24, v19, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 113
    .local v12, newstart:I
    add-int v23, v19, v14

    add-int v23, v23, v13

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 115
    .local v11, newend:I
    move/from16 v0, v18

    if-ne v12, v0, :cond_3

    if-eq v11, v8, :cond_1

    .line 119
    :cond_3
    move/from16 v18, v12

    .line 120
    move v8, v11

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, candidate:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    cmpl-float v23, v23, v21

    if-gtz v23, :cond_1

    .line 131
    const-string v24, "%s%s%s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    if-nez v18, :cond_4

    const-string v23, ""

    :goto_2
    aput-object v23, v25, v26

    const/16 v23, 0x1

    aput-object v6, v25, v23

    const/16 v26, 0x2

    if-ne v8, v5, :cond_5

    const-string v23, ""

    :goto_3
    aput-object v23, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 136
    goto :goto_1

    .line 131
    :cond_4
    sget-object v23, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v23, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_3

    .line 147
    .end local v6           #candidate:Ljava/lang/String;
    .end local v7           #ellipsisWidth:F
    .end local v8           #end:I
    .end local v11           #newend:I
    .end local v12           #newstart:I
    .end local v13           #offset:I
    .restart local v17       #spannable:Landroid/text/SpannableString;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 151
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fullText"
    .parameter "target"

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, patternString:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 161
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->requestLayout()V

    .line 164
    return-void
.end method
