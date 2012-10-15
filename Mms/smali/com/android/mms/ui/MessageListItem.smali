.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$Style;,
        Lcom/android/mms/ui/MessageListItem$UriInfo;
    }
.end annotation


# instance fields
.field private mAttachmentAudio:Landroid/widget/ImageView;

.field private mAttachmentCard:Landroid/widget/ImageView;

.field private mAttachmentDefault:Landroid/widget/ImageView;

.field private mAttachmentPic:Landroid/widget/ImageView;

.field private mAttachmentVideo:Landroid/widget/ImageView;

.field private mBodyLinearLayout:Landroid/widget/LinearLayout;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDateTextView:Landroid/widget/TextView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDeliverStatus:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadView:Landroid/view/View;

.field private mDownloadingLabel:Landroid/view/View;

.field private mEditMode:Z

.field private mFavouriteMark:Landroid/widget/ImageView;

.field private mGroupSendCancelButton:Landroid/widget/Button;

.field private mGroupSendCountTextView:Landroid/widget/TextView;

.field private mGroupSendFailedButton:Landroid/widget/Button;

.field private mGroupSendFailedRoot:Landroid/view/View;

.field private mGroupSendFailedTitle:Landroid/widget/TextView;

.field private mGroupSendIcon:Landroid/widget/ImageView;

.field private mGroupSendToTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mMaxAttachmentPicWidth:I

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMessageItemLayout:Landroid/view/View;

.field private mMessageItemView:Landroid/view/View;

.field private mMmsBubbleImageWidth:I

.field private mMmsDownloadPadding:Landroid/view/View;

.field private mMmsPaddingHeight:I

.field private mMxTypeIndicatorPanel:Landroid/view/View;

.field private mMxTypeView:Landroid/widget/TextView;

.field private mResentButton:Landroid/widget/Button;

.field private mSenderTextView:Landroid/widget/TextView;

.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private mTimedMsgIndicator:Landroid/widget/Button;

.field private mTimedMsgPadding:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 856
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x1030046

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 859
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 177
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 180
    .local v0, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 182
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsPaddingHeight:I

    .line 184
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsBubbleImageWidth:I

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    .line 188
    return-void
.end method

.method private ViewMmsMessageAttachment()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/SimplePduDoc;)V

    .line 897
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->ViewMmsMessageAttachment()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->startIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private bindBackground(Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 2
    .parameter "msgItem"
    .parameter "isEditMode"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 402
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawBackground(Lcom/android/mms/ui/MessageItem;)V

    .line 438
    return-void

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 415
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 421
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 424
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 427
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 433
    :pswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 419
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    .line 614
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 618
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSendingBodyInGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 642
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 647
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 648
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSlideMms()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 649
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsPaddingHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 650
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 651
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 657
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v1

    if-eqz v1, :cond_7

    .line 659
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsBubbleImageWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 664
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 665
    :cond_3
    return-void

    .line 626
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 627
    if-nez v0, :cond_0

    .line 628
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 629
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindContactMesssage(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 632
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 639
    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 636
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 653
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 654
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 661
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2
.end method

.method private bindBodyTextForNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsBubbleImageWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 285
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, 0x3ff

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getExpireTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, msgSizeText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    :cond_1
    return-void
.end method

.method private bindBookmark(Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "msgItem"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindMms(Lcom/android/mms/ui/MessageItem;)V

    .line 278
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimestamp(Lcom/android/mms/ui/MessageItem;)V

    .line 279
    return-void
.end method

.method private bindCheckStatus(Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 3
    .parameter "msgItem"
    .parameter "isEditMode"
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 394
    :goto_0
    if-eqz p3, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 399
    :goto_1
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private bindCommonIndicators(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 1204
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindMxType(Lcom/android/mms/ui/MessageItem;)V

    .line 1205
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimestamp(Lcom/android/mms/ui/MessageItem;)V

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDeliveryInfo(Lcom/android/mms/ui/MessageItem;)V

    .line 1207
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindResentButton(Lcom/android/mms/ui/MessageItem;)V

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindFavouriteMark(Lcom/android/mms/ui/MessageItem;)V

    .line 1209
    return-void
.end method

.method private bindContactMesssage(Lcom/android/mms/ui/MessageItem;)Z
    .locals 12
    .parameter "msgItem"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 668
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-nez v10, :cond_0

    .line 714
    :goto_0
    return v8

    .line 671
    :cond_0
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v0

    .line 674
    .local v0, contactMessage:Lcom/android/mms/model/ContactMessage;
    if-eqz v0, :cond_3

    .line 675
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 676
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->split()Ljava/util/ArrayList;

    move-result-object v6

    .line 677
    .local v6, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 678
    .local v2, first:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 679
    .local v5, part:Ljava/lang/Object;
    new-instance v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 680
    .local v7, tv:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 681
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0b

    invoke-virtual {v10, v11, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 682
    .local v4, multiple:F
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 683
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 698
    :goto_2
    :pswitch_0
    instance-of v10, v5, Lcom/android/mms/model/ContactMessage$ContactRecord;

    if-nez v10, :cond_1

    .line 699
    const/16 v10, 0xf

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 700
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 702
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    if-nez v2, :cond_2

    .line 705
    new-instance v1, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 706
    .local v1, devider:Landroid/widget/ImageView;
    const v10, 0x7f020020

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 707
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 709
    .end local v1           #devider:Landroid/widget/ImageView;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    const/4 v2, 0x0

    .line 711
    goto :goto_1

    .line 688
    :pswitch_1
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v11, 0x7f0e001f

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 693
    :pswitch_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v11, 0x7f0e001e

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #multiple:F
    .end local v5           #part:Ljava/lang/Object;
    .end local v6           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_3
    move v8, v9

    .line 714
    goto/16 :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindDeliveryInfo(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0a0136

    const v5, 0x7f0a0134

    const/4 v4, 0x4

    .line 1297
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    const/4 v0, 0x0

    .line 1301
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1303
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1305
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1306
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1308
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1313
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliverReportMode()I

    move-result v1

    .line 1314
    if-eqz v1, :cond_f

    .line 1315
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_8

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1317
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMxType()I

    move-result v1

    if-nez v1, :cond_7

    .line 1320
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_6

    .line 1322
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1364
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v1, :cond_c

    .line 1365
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1324
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_5

    .line 1326
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1331
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMxType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 1333
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1338
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1344
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1345
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 1347
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_a

    .line 1348
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1355
    :cond_9
    :goto_2
    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_5

    .line 1357
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadReport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1359
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1349
    :cond_a
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_b

    .line 1350
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0138

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1351
    :cond_b
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 1352
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1366
    :cond_c
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1367
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1369
    :cond_d
    if-eqz v0, :cond_e

    .line 1370
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1373
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1377
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1331
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method private bindDownloadButtonForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/16 v1, 0x8

    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    :cond_1
    return-void
.end method

.method private bindDownloadButtonForNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v0

    .line 314
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 323
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 326
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 316
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 330
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private bindFavouriteMark(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindGroupMessageCancelButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    .line 558
    .local v2, thread_id:J
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    .line 559
    .local v4, date:J
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 560
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 581
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;JJ)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private bindGroupMessageFailed(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a013c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageFailedItems(Lcom/android/mms/ui/MessageItem;)V

    .line 486
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageSendFailedButton(Lcom/android/mms/ui/MessageItem;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageCancelButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindGroupMessageFailedItems(Lcom/android/mms/ui/MessageItem;)V
    .locals 13
    .parameter "msgItem"

    .prologue
    const/4 v12, 0x0

    .line 494
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v3

    .line 496
    .local v3, failedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem$FailedItem;>;"
    const v9, 0x7f10007d

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 497
    .local v8, vg:Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 498
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageItem$FailedItem;

    .line 499
    .local v2, failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v10, 0x7f040024

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 500
    .local v7, v:Landroid/view/View;
    const v9, 0x7f100078

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 501
    .local v5, nameView:Landroid/widget/TextView;
    const v9, 0x7f100079

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 502
    .local v6, numberView:Landroid/widget/TextView;
    const v9, 0x7f10007a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 503
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 504
    iget-boolean v9, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v9, :cond_0

    .line 505
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 522
    :goto_1
    iget-object v9, v2, Lcom/android/mms/ui/MessageItem$FailedItem;->number:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 523
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 526
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 507
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 508
    new-instance v9, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v9, p0, p1, v2}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem$FailedItem;)V

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 528
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 532
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v6           #numberView:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private bindGroupMessageSendFailedButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 535
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a013a

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->resendMsgInGroup()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 538
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private bindGroupSendCount(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter "msgItem"

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x0

    .line 441
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->sentMsgInGroup()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 450
    .local v0, current:I
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->totalMsgInGroup()I

    move-result v1

    .line 451
    .local v1, total:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0133

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 463
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 468
    .end local v0           #current:I
    .end local v1           #total:I
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 471
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindMms(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 718
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    .line 719
    .local v0, doc:Lcom/android/mms/ui/SimplePduDoc;
    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v1

    .line 721
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 736
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->setDefaultAttachment()V

    .line 742
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 723
    .restart local v1       #type:I
    :pswitch_0
    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPagePartUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setAudio(Landroid/net/Uri;)V

    goto :goto_0

    .line 726
    :pswitch_1
    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/mms/ui/SimplePduDoc;->getPageImage(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 729
    :pswitch_2
    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPagePartUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setVideo(Landroid/net/Uri;)V

    goto :goto_0

    .line 732
    :pswitch_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setCard(Landroid/net/Uri;)V

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private bindMxType(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 1222
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMxTypeName()Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, mxType:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1224
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeIndicatorPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1225
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeIndicatorPanel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    :cond_1
    :goto_0
    return-void

    .line 1231
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeIndicatorPanel:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1232
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeIndicatorPanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "msgItem"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDownloadButtonForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSendToTitle(Lcom/android/mms/ui/MessageItem;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupSendCount(Lcom/android/mms/ui/MessageItem;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageFailed(Lcom/android/mms/ui/MessageItem;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimedMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindMms(Lcom/android/mms/ui/MessageItem;)V

    .line 271
    :cond_0
    return-void
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDownloadButtonForNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimedMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 254
    return-void
.end method

.method private bindResentButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x0

    .line 1238
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1244
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1246
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1250
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindSendToTitle(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const v4, 0x7f0a0131

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 594
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0132

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->totalMsgInGroup()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 603
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReferenceGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    const v1, 0x7f0a01a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private bindTimedMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReferenceGroup()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindTimestamp(Lcom/android/mms/ui/MessageItem;)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f0a01a8

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1384
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1385
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    .line 1386
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDateSent()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const-string v3, "1"

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getDateType(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1388
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDateSent()J

    move-result-wide v0

    .line 1391
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1392
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1393
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v1, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 1398
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1399
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1405
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1406
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    :cond_5
    :goto_1
    return-void

    .line 1401
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1402
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1408
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1409
    const/4 v2, 0x0

    .line 1410
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getShowTimeStamp()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1411
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1413
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1414
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v1, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    :cond_8
    if-eqz v0, :cond_9

    .line 1418
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1419
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1423
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1424
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1428
    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1430
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 1431
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0a015e

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1435
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_d
    move-object v0, v2

    goto :goto_2
.end method

.method private drawBackground(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter

    .prologue
    .line 1155
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1196
    :goto_0
    :pswitch_0
    return-void

    .line 1157
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1160
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1163
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1166
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMxType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1167
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1176
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1186
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 865
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 866
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 867
    :goto_0
    if-eqz v0, :cond_0

    .line 868
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0028

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 871
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 873
    if-eqz p4, :cond_3

    const-string v4, "text/html"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 874
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 875
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 884
    :cond_1
    :goto_1
    if-eqz p3, :cond_5

    .line 885
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 886
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 887
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 866
    goto :goto_0

    .line 877
    :cond_3
    if-eqz v0, :cond_4

    .line 878
    const-string v0, " - "

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 880
    :cond_4
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 890
    :cond_5
    return-object v3
.end method

.method private getBubbleBodyTextMaxWidth()I
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 301
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f3851ec

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 302
    .local v0, maxWidth:I
    return v0
.end method

.method private getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1002
    new-instance v1, Lcom/android/mms/ui/MessageListItem$UriInfo;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/MessageListItem$UriInfo;-><init>(Lcom/android/mms/ui/MessageListItem$1;)V

    .line 1003
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->uri:Landroid/net/Uri;

    .line 1005
    const-string v0, ""

    .line 1006
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1007
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1008
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1011
    :cond_0
    const-string v3, "tel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1012
    iput v4, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1013
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1014
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1015
    iget-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1016
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1018
    :cond_1
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    .line 1019
    iget-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    .line 1039
    :goto_0
    return-object v1

    .line 1022
    :cond_2
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1024
    :cond_3
    const-string v3, "mailto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1025
    iput v5, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1026
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1028
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1029
    :cond_4
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1031
    :cond_5
    const/4 v0, 0x2

    iput v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1032
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1033
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1035
    :cond_6
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1036
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1037
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private hideMmsViewIfNeeded()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 817
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_0
    return-void
.end method

.method private isMultiSlideMms()Z
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->isSlideShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 918
    new-instance v1, Lcom/android/mms/ui/ContextMenuDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 920
    iget v0, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    packed-switch v0, :pswitch_data_0

    .line 957
    const-string v0, "notes"

    .line 961
    :goto_0
    const v2, 0x7f0a0142

    new-instance v3, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 971
    iget-object v2, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    const v0, 0x7f0a0146

    new-instance v2, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 997
    :goto_1
    iget-object v0, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v1}, Lcom/android/mms/ui/ContextMenuDialog;->show()V

    .line 999
    return-void

    .line 922
    :pswitch_0
    const-string v0, "phone"

    .line 923
    const v2, 0x7f0a013e

    new-instance v3, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 929
    const v2, 0x7f0a013f

    new-instance v3, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 939
    :pswitch_1
    const-string v0, "email"

    .line 940
    const v2, 0x7f0a0141

    new-instance v3, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 948
    :pswitch_2
    const-string v0, "notes"

    .line 949
    const v2, 0x7f0a0140

    new-instance v3, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 978
    :cond_0
    const v2, 0x7f0a0144

    new-instance v3, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 986
    const v2, 0x7f0a0145

    new-instance v3, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_1

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareStyle(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f10000d

    const/4 v1, 0x0

    .line 758
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 779
    :goto_0
    :pswitch_0
    const v0, 0x7f10000f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    .line 780
    const v0, 0x7f100085

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeView:Landroid/widget/TextView;

    .line 781
    const v0, 0x7f100084

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeIndicatorPanel:Landroid/view/View;

    .line 782
    const v0, 0x7f10000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    .line 783
    const v0, 0x7f100071

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 784
    const v0, 0x7f100072

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    .line 785
    const v0, 0x7f100074

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    .line 786
    const v0, 0x7f100075

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    .line 787
    const v0, 0x7f100076

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    .line 788
    const v0, 0x7f10007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    .line 789
    const v0, 0x7f10007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedTitle:Landroid/widget/TextView;

    .line 790
    const v0, 0x7f10007e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    .line 791
    const v0, 0x7f10007f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    .line 792
    const v0, 0x7f10006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    .line 793
    const v0, 0x7f100077

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    .line 794
    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    .line 795
    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 796
    const v0, 0x7f10006f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/view/View;

    .line 797
    const v0, 0x7f100070

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    .line 798
    const v0, 0x7f10000c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    .line 799
    const v0, 0x7f10006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    .line 800
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 802
    const v0, 0x7f100065

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    .line 803
    const v0, 0x7f100067

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    .line 804
    const v0, 0x7f100068

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    .line 805
    const v0, 0x7f100066

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    .line 806
    const v0, 0x7f100069

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    .line 808
    const v0, 0x7f10005c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    .line 810
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const v0, 0x7f10006c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    .line 812
    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    .line 814
    :cond_0
    return-void

    .line 762
    :pswitch_1
    const v0, 0x7f10008a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 766
    :pswitch_2
    const v0, 0x7f100086

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 769
    :pswitch_3
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 772
    :pswitch_4
    const v0, 0x7f100088

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 775
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    .locals 2
    .parameter

    .prologue
    .line 911
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    const-string v1, "vnd.android.cursor.dir/preview_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/mms/model/ContactParser;->putContactToIntent(Lcom/android/mms/model/ContactMessage$ContactRecord;Landroid/content/Intent;)Landroid/content/Intent;

    .line 914
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 915
    return-void
.end method

.method private startIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 900
    const-string v0, "com.android.browser.application_id"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0193

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->prepareStyle(Lcom/android/mms/ui/MessageItem;)V

    .line 197
    return-void
.end method

.method public getListItemDateView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getListItemTypeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMxTypeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public onCheckStateChanged(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/ui/MessageListItem;->bindBackground(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 1044
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1047
    .line 1048
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    move-object v1, v0

    .line 1064
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1065
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    .line 1066
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getTimedValue()J

    move-result-wide v2

    .line 1067
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 1068
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 1070
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1072
    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1075
    const-string v0, "timed_value"

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1078
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1079
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1146
    :cond_0
    :goto_1
    return-void

    .line 1051
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1052
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1054
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 1055
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 1056
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1052
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1060
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/style/URLSpan;

    .line 1061
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    move-object v1, v0

    goto/16 :goto_0

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v0

    .line 1085
    if-nez v0, :cond_6

    .line 1086
    array-length v3, v1

    if-nez v3, :cond_5

    .line 1087
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->ViewMmsMessageAttachment()V

    .line 1088
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v1

    .line 1091
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/ui/FestivalActivity;->checkAndCallFestival(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1092
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/ui/BirthdayActivity;->checkAndCallBirthday(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 1095
    :cond_5
    array-length v3, v1

    if-ne v3, v9, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1096
    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    goto/16 :goto_1

    .line 1099
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->count()I

    move-result v3

    if-ne v3, v9, :cond_8

    array-length v3, v1

    if-nez v3, :cond_8

    .line 1100
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1101
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->getContactRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    goto/16 :goto_1

    .line 1106
    :cond_8
    new-instance v3, Lcom/android/mms/ui/ContextMenuDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 1107
    if-eqz v0, :cond_9

    .line 1108
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->getContactRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    .line 1109
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0147

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage$ContactRecord;->getPreviewString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1111
    new-instance v6, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v6, p0, v0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1119
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1120
    :goto_5
    array-length v4, v1

    if-ge v2, v4, :cond_b

    .line 1121
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 1122
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1123
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1124
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageListItem;->getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;

    move-result-object v4

    .line 1125
    iget-object v5, v4, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    new-instance v6, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v6, p0, v4}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1120
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1133
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1134
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1136
    const v0, 0x7f0a013d

    new-instance v1, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 1144
    :cond_c
    const v0, 0x7f0a00f9

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(I)V

    .line 1145
    invoke-virtual {v3}, Lcom/android/mms/ui/ContextMenuDialog;->show()V

    goto/16 :goto_1
.end method

.method public rebind(Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 1
    .parameter "msgItem"
    .parameter "isEditMode"
    .parameter "checked"

    .prologue
    .line 207
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    .line 208
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 210
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded()V

    .line 212
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBookmarkLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBookmark(Lcom/android/mms/ui/MessageItem;)V

    .line 228
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 225
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindCommonIndicators(Lcom/android/mms/ui/MessageItem;)V

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindCheckStatus(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindBackground(Lcom/android/mms/ui/MessageItem;ZZ)V

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public setAudio(Landroid/net/Uri;)V
    .locals 2
    .parameter "audio"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    return-void
.end method

.method public setCard(Landroid/net/Uri;)V
    .locals 2
    .parameter "card"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    return-void
.end method

.method public setDefaultAttachment()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 854
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/mms/ui/MessageUtils;->setAttachmentImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 845
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    const-string v1, "MessageListItem"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 243
    return-void
.end method

.method public setVideo(Landroid/net/Uri;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 235
    return-void
.end method
