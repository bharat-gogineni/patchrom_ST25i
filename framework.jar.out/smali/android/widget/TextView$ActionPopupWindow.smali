.class Landroid/widget/TextView$ActionPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900c1


# instance fields
.field private mPasteTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 10693
    iput-object p1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10693
    invoke-direct {p0, p1}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 5
    .parameter "positionY"

    .prologue
    .line 10770
    if-gez p1, :cond_0

    .line 10771
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->getTextOffset()I

    move-result v2

    .line 10772
    .local v2, offset:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 10773
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v4, v4, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    .line 10774
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 10777
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$6800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v4}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10778
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr p1, v3

    .line 10781
    .end local v0           #handle:Landroid/graphics/drawable/Drawable;
    .end local v1           #line:I
    .end local v2           #offset:I
    :cond_0
    return p1
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 10701
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$6300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 10703
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 10704
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 10760
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 10765
    iget-object v0, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x10900c1

    const/4 v5, -0x2

    .line 10708
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10709
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10710
    iput-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 10711
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x108089d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 10714
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 10717
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10720
    .local v2, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 10721
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10722
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10723
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v4, 0x104000b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10724
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10726
    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 10727
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10728
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10729
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v4, 0x10403ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10730
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10731
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 10747
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10748
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10749
    invoke-virtual {p0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 10756
    :cond_0
    :goto_0
    return-void

    .line 10750
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 10751
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 10752
    .local v0, middle:I
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->stopSelectionActionMode()V
    invoke-static {v1}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;)V

    .line 10753
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10754
    iget-object v1, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->showSuggestions()V

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 10735
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5900(Landroid/widget/TextView;)Z

    move-result v0

    .line 10736
    .local v0, canPaste:Z
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isCursorInsideSuggestionSpanWithPopup()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 10737
    .local v1, canSuggest:Z
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10738
    iget-object v3, p0, Landroid/widget/TextView$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10740
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 10743
    :goto_3
    return-void

    .end local v1           #canSuggest:Z
    :cond_0
    move v1, v2

    .line 10736
    goto :goto_0

    .restart local v1       #canSuggest:Z
    :cond_1
    move v3, v4

    .line 10737
    goto :goto_1

    :cond_2
    move v2, v4

    .line 10738
    goto :goto_2

    .line 10742
    :cond_3
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    goto :goto_3
.end method
