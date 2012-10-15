.class public Lcom/android/mms/ui/MmsTextEditor;
.super Landroid/widget/EditText;
.source "MmsTextEditor.java"


# instance fields
.field private mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

.field private mNickNamePressed:Z

.field private mPressedNickNamePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 26
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTextEditor;->initContext(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTextEditor;->initContext(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 36
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTextEditor;->initContext(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private getNicknameSpan(Z)Lcom/android/mms/ui/WidgetDrawableSpan;
    .locals 3
    .parameter "pressed"

    .prologue
    .line 212
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, textView:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0026

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 216
    if-eqz p1, :cond_0

    const v1, 0x7f020115

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 217
    new-instance v1, Lcom/android/mms/ui/WidgetDrawableSpan;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/mms/ui/WidgetDrawableSpan;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 216
    :cond_0
    const v1, 0x7f020114

    goto :goto_0
.end method

.method private getPosition(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 67
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    move v3, v5

    .line 95
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 72
    .local v2, line:I
    int-to-float v6, p1

    invoke-virtual {v0, v2, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 73
    .local v3, offset:I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v1, v6

    .line 74
    .local v1, left:I
    if-le v1, p1, :cond_3

    .line 75
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    if-ne v3, v6, :cond_2

    move v3, v5

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 79
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v1, v6

    .line 81
    :cond_3
    add-int/lit8 v6, v1, 0x6

    if-ge p1, v6, :cond_4

    move v3, v5

    .line 82
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v3, v6, :cond_5

    .line 87
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v4, v6

    .line 92
    .local v4, right:I
    :goto_1
    add-int/lit8 v6, v4, -0x6

    if-le p1, v6, :cond_0

    move v3, v5

    .line 93
    goto :goto_0

    .line 89
    .end local v4           #right:I
    :cond_5
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v4, v6

    .restart local v4       #right:I
    goto :goto_1
.end method

.method private initContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    instance-of v0, p1, Lcom/android/mms/ui/MessageEditableActivityBase;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lcom/android/mms/ui/MessageEditableActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    .line 46
    return-void

    .line 43
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmsTextEditor can only be used by MessageEditableActivityBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isOnPosition(III)Z
    .locals 6
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 100
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v4

    .line 103
    :cond_1
    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 104
    .local v2, line:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v1, v5

    .line 108
    .local v1, left:I
    add-int/lit8 v5, v1, 0x6

    if-lt p2, v5, :cond_0

    .line 113
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt p1, v5, :cond_2

    .line 114
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    float-to-int v3, v5

    .line 119
    .local v3, right:I
    :goto_1
    add-int/lit8 v5, v3, -0x6

    if-gt p2, v5, :cond_0

    .line 122
    const/4 v4, 0x1

    goto :goto_0

    .line 116
    .end local v3           #right:I
    :cond_2
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    float-to-int v3, v5

    .restart local v3       #right:I
    goto :goto_1
.end method

.method private setNickNamePressed(Z)V
    .locals 5
    .parameter "pressed"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    if-ne p1, v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsTextEditor;->mNickNamePressed:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTextEditor;->getNicknameSpan(Z)Lcom/android/mms/ui/WidgetDrawableSpan;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    iget v3, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->performShowSoftKeyboardRequest()V

    .line 225
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 50
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getSelectionStart()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getSelectionEnd()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 60
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->cancelTiming()V

    goto :goto_0

    .line 60
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 200
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 201
    check-cast v1, Landroid/text/Spannable;

    .line 202
    .local v1, s:Landroid/text/Spannable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 203
    invoke-interface {v1, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_0

    .line 204
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsTextEditor;->getNicknameSpan(Z)Lcom/android/mms/ui/WidgetDrawableSpan;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0           #i:I
    .end local v1           #s:Landroid/text/Spannable;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 209
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 137
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 138
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 139
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v3, v6

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v4, v6

    .line 141
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getScrollX()I

    move-result v6

    add-int/2addr v3, v6

    .line 142
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getScrollY()I

    move-result v6

    add-int/2addr v4, v6

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, consumed:Z
    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 193
    :goto_1
    return v5

    .line 147
    :pswitch_0
    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MmsTextEditor;->getPosition(II)I

    move-result v2

    .line 148
    .local v2, position:I
    if-eq v2, v7, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTextEditor;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const v7, 0xffff

    if-ne v6, v7, :cond_0

    .line 152
    iput v2, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 153
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 154
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    .end local v2           #position:I
    :pswitch_1
    iget v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    if-ltz v6, :cond_0

    .line 161
    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 162
    iput v7, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    .line 163
    const/4 v1, 0x1

    goto :goto_0

    .line 168
    :pswitch_2
    iget v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    if-ltz v6, :cond_0

    .line 169
    iget v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    invoke-direct {p0, v6, v3, v4}, Lcom/android/mms/ui/MmsTextEditor;->isOnPosition(III)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 174
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    goto :goto_2

    .line 179
    :pswitch_3
    iget v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    invoke-direct {p0, v6, v3, v4}, Lcom/android/mms/ui/MmsTextEditor;->isOnPosition(III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsTextEditor;->setNickNamePressed(Z)V

    .line 181
    iget-object v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    if-eqz v6, :cond_2

    .line 182
    iget-object v6, p0, Lcom/android/mms/ui/MmsTextEditor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 184
    :cond_2
    const/4 v1, 0x1

    .line 186
    :cond_3
    iput v7, p0, Lcom/android/mms/ui/MmsTextEditor;->mPressedNickNamePosition:I

    goto :goto_0

    .line 193
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
