.class public Lcom/android/phone/MiuiCallCard;
.super Lcom/android/phone/CallCard;
.source "MiuiCallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiCallCard$4;,
        Lcom/android/phone/MiuiCallCard$CallCardInfo;
    }
.end annotation


# instance fields
.field private final STATE_DOUBLE_CALLS:I

.field private final STATE_NO_CALL:I

.field private final STATE_RINGING_CALL:I

.field private final STATE_SINGLE_CALL:I

.field private bAddLockScreen:Z

.field private mBigPhoto:Landroid/widget/ImageView;

.field private mCallCard:Landroid/widget/LinearLayout;

.field private mCallCardPhoto:Landroid/graphics/drawable/Drawable;

.field private mCallCardPhotoCache:Landroid/graphics/drawable/Drawable;

.field private mCallStatus:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mConferenceManagerButton:Landroid/view/View;

.field private mDoubleCallsInfoBar:Landroid/view/View;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mExtraInfo:Landroid/widget/TextView;

.field private mFirstCallCard:Landroid/widget/LinearLayout;

.field private mFirstCallStatus:Landroid/widget/TextView;

.field private mFirstCallStatusImage:Landroid/widget/ImageView;

.field private mFirstCallTime:Lcom/android/phone/CallTime;

.field private mFirstConferenceManagerButton:Landroid/view/View;

.field private mFirstElapsedTime:Landroid/widget/TextView;

.field private mFirstName:Landroid/widget/TextView;

.field private mFirstPhoneNumber:Landroid/widget/TextView;

.field private mFirstTelocation:Landroid/widget/TextView;

.field private mImageRoundCorner:I

.field private mInfoBar:Landroid/view/ViewGroup;

.field private mInfoBarMask:Landroid/view/View;

.field private mLockScreenWallpaper:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mScaledDensity:F

.field private mSecondCallCard:Landroid/widget/LinearLayout;

.field private mSecondCallStatus:Landroid/widget/TextView;

.field private mSecondCallStatusImage:Landroid/widget/ImageView;

.field private mSecondCallTime:Lcom/android/phone/CallTime;

.field private mSecondConferenceManagerButton:Landroid/view/View;

.field private mSecondElapsedTime:Landroid/widget/TextView;

.field private mSecondName:Landroid/widget/TextView;

.field private mSecondPhoneNumber:Landroid/widget/TextView;

.field private mSecondTelocation:Landroid/widget/TextView;

.field private mState:I

.field private mTelocation:Landroid/widget/TextView;

.field private mTelocationMaxWidthWithPhoto:I

.field private mTelocationMaxWidthWithoutPhoto:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallCard;->bAddLockScreen:Z

    .line 115
    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_NO_CALL:I

    .line 116
    iput v2, p0, Lcom/android/phone/MiuiCallCard;->STATE_RINGING_CALL:I

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_SINGLE_CALL:I

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_DOUBLE_CALLS:I

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 142
    .local v6, metrics:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mScaledDensity:F

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mImageRoundCorner:I

    .line 145
    const/high16 v0, 0x428c

    invoke-static {v2, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithPhoto:I

    .line 146
    const/high16 v0, 0x4334

    invoke-static {v2, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithoutPhoto:I

    .line 148
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0e0033

    invoke-direct {v7, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 149
    .local v7, span1:Landroid/text/style/TextAppearanceSpan;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0e0036

    invoke-direct {v8, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v8, span2:Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/phone/MiuiCallCard;->updateElapsedTimeWidget(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method private createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 9
    .parameter "call"
    .parameter "callerInfo"

    .prologue
    const/4 v7, -0x1

    .line 558
    new-instance v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/android/phone/MiuiCallCard$CallCardInfo;-><init>(Lcom/android/phone/MiuiCallCard;Lcom/android/phone/MiuiCallCard$1;)V

    .line 559
    .local v8, info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    if-eqz p2, :cond_0

    .line 560
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->isCdmaThreeWayOrConf(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0c03ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 567
    :goto_0
    const-string v0, ""

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 602
    :cond_0
    :goto_1
    return-object v8

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0c03ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 570
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_4

    .line 572
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 587
    :cond_3
    :goto_2
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 588
    const-string v0, ""

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 598
    :goto_3
    invoke-static {p2}, Lcom/android/phone/MiuiPhoneUtils;->getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 599
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-object v0, v0, Lmiui/telephony/ExtraCallerInfo;->company:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    goto :goto_1

    .line 573
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 576
    :cond_5
    iget-wide v0, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 578
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 580
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 582
    .local v6, personUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    move-object v0, p2

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto :goto_2

    .line 589
    .end local v6           #personUri:Landroid/net/Uri;
    :cond_6
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 590
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 591
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 592
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 595
    :cond_8
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3
.end method

.method private createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;
    .locals 6

    .prologue
    .line 162
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v2}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v4}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1089
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1090
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1091
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1093
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1094
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_0
    return-void
.end method

.method private getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f0c016c

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 609
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 612
    if-nez v5, :cond_3

    .line 618
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 685
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v1

    .line 687
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 688
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0191

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 693
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->isForwarded(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c02c8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 697
    :cond_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 699
    iget-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 700
    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 701
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 704
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 706
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c016d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 707
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 765
    :cond_2
    :goto_2
    return-object v1

    .line 625
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 626
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 627
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 631
    :goto_3
    if-eqz v3, :cond_f

    .line 632
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v3}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 637
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 638
    invoke-static {v5}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v6

    .line 639
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    .line 640
    if-eqz v3, :cond_5

    .line 641
    if-eqz v6, :cond_4

    iget-object v8, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v2

    .line 645
    :cond_4
    if-eqz v7, :cond_5

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v2

    .line 652
    :cond_5
    if-eqz v0, :cond_7

    .line 654
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_0

    .line 628
    :cond_6
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_10

    move-object v0, v1

    .line 629
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    goto :goto_3

    .line 660
    :cond_7
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_8

    .line 662
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 663
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 664
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    move-object v0, v3

    goto/16 :goto_0

    .line 669
    :cond_8
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_9

    move-object v0, v3

    goto/16 :goto_0

    .line 675
    :cond_9
    const-string v0, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCall: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_0

    .line 690
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v3}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    goto/16 :goto_1

    .line 709
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 710
    sget-object v3, Lcom/android/phone/MiuiCallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 762
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallCardInfo: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 713
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    check-cast v0, Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallNotifier;->getRedialTimes()I

    move-result v0

    .line 714
    if-gez v0, :cond_c

    .line 715
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 719
    :goto_5
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 717
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02c6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    goto :goto_5

    .line 724
    :pswitch_1
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 728
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_d

    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v2, :cond_d

    .line 730
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 732
    :cond_d
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 736
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0173

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 737
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 741
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0172

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 742
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 746
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0171

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 747
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 748
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 750
    iget-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0341

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 754
    :cond_e
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 759
    :pswitch_6
    const-string v0, "CallCard"

    const-string v2, "getCallCardInfo: IDLE call in the call card"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    move-object v3, v4

    goto/16 :goto_3

    .line 710
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 14
    .parameter "call"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 497
    new-instance v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;

    invoke-direct {v6, p0, v12}, Lcom/android/phone/MiuiCallCard$CallCardInfo;-><init>(Lcom/android/phone/MiuiCallCard;Lcom/android/phone/MiuiCallCard$1;)V

    .line 499
    .local v6, info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    iput-boolean v11, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    .line 500
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c016e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 501
    iput-object v12, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 510
    iput-boolean v13, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    .line 511
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    .line 547
    .end local v6           #info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    :cond_0
    :goto_0
    return-object v6

    .line 513
    .restart local v6       #info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 514
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 515
    .local v3, count:I
    const/4 v1, 0x0

    .line 516
    .local v1, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    if-lez v3, :cond_5

    .line 517
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 518
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 519
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 520
    .local v7, o:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_2

    .line 521
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #o:Ljava/lang/Object;
    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 527
    :goto_2
    iget-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 528
    invoke-direct {p0, p1, v1}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 517
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 522
    .restart local v7       #o:Ljava/lang/Object;
    :cond_2
    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_3

    move-object v1, v7

    .line 523
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_2

    .line 525
    :cond_3
    const-string v9, "CallCard"

    const-string v10, "getConferenceCallCardInfo: no caller info"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 530
    .end local v7           #o:Ljava/lang/Object;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1, v1}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 534
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02ed

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 536
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_6

    .line 537
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0172

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 541
    :cond_6
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    .line 542
    .local v4, digitsPressed:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 543
    iget-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 544
    iput-object v4, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 545
    const-string v9, ""

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "call"

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 771
    return-object v0
.end method

.method private inflateDoubleCallsInfoBar()V
    .locals 3

    .prologue
    .line 247
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 248
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 250
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    .line 252
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    .line 253
    const v1, 0x7f07002c

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    .line 255
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    .line 256
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    .line 257
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    .line 258
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    .line 259
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    .line 260
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    .line 261
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    .line 262
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v1, Lcom/android/phone/CallTime;

    new-instance v2, Lcom/android/phone/MiuiCallCard$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiCallCard$2;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v1, v2}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    .line 270
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    .line 271
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    .line 272
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    .line 273
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    .line 274
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    .line 275
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    .line 276
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    .line 277
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v1, Lcom/android/phone/CallTime;

    new-instance v2, Lcom/android/phone/MiuiCallCard$3;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiCallCard$3;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v1, v2}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    .line 284
    return-void
.end method

.method private isCdmaThreeWayOrConf(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 551
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    .line 552
    .local v0, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshAfterInflate()V
    .locals 2

    .prologue
    .line 225
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    .line 227
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    .line 228
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    .line 229
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    .line 230
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance v0, Lcom/android/phone/CallTime;

    new-instance v1, Lcom/android/phone/MiuiCallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiCallCard$1;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v0, v1}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 244
    return-void
.end method

.method private switchFrontgroundCallCard(ZZ)V
    .locals 5
    .parameter "isFirstFrontground"
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 457
    if-eqz p2, :cond_2

    const-wide/16 v0, 0xc8

    .line 458
    .local v0, duration:J
    :goto_0
    if-eqz p1, :cond_3

    .line 459
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 461
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 462
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 466
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 467
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 481
    :cond_1
    :goto_1
    return-void

    .line 457
    .end local v0           #duration:J
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 470
    .restart local v0       #duration:J
    :cond_3
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 471
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 472
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 473
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 475
    :cond_4
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 477
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 478
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 816
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 818
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIONE:call.state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {}, Lmiui/content/res/ExtraConfiguration;->getScaleMode()I

    move-result v3

    .line 822
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v1

    move-object v2, v1

    .line 825
    :goto_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 826
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 830
    :goto_1
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v1}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 833
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 834
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    :goto_2
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 841
    if-eqz p7, :cond_0

    .line 842
    const/4 v1, 0x0

    invoke-virtual {p7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 844
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 855
    const-string v1, "CallCard"

    const-string v4, "MIONE:call timer reset"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    move-object/from16 v0, p9

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 857
    invoke-virtual/range {p9 .. p9}, Lcom/android/phone/CallTime;->reset()V

    .line 858
    invoke-virtual/range {p9 .. p9}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 867
    :goto_4
    iget-boolean v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    if-eqz v1, :cond_9

    .line 868
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 869
    move/from16 v0, p10

    invoke-virtual {p5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 874
    :goto_5
    if-eqz p10, :cond_1

    .line 876
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "button_incall_screen_background"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 879
    if-eqz v1, :cond_a

    .line 880
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/16 v4, 0xc8

    if-le v1, v4, :cond_b

    .line 887
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 912
    :cond_1
    :goto_7
    invoke-virtual {p6}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_e

    invoke-virtual/range {p8 .. p8}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_e

    .line 914
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 915
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    :goto_8
    return-void

    .line 822
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    .line 828
    :cond_3
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    .line 836
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 846
    :cond_5
    if-eqz p7, :cond_6

    .line 847
    const/16 v1, 0x8

    invoke-virtual {p7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 849
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 859
    :cond_7
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 860
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    const/16 v1, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 863
    :cond_8
    invoke-virtual/range {p9 .. p9}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 864
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 871
    :cond_9
    const/16 v1, 0x8

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 882
    :cond_a
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 891
    :cond_b
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_d

    .line 892
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v4, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eq v1, v4, :cond_c

    .line 895
    iget-object v1, v2, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhoto:Landroid/graphics/drawable/Drawable;

    .line 896
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhoto:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mImageRoundCorner:I

    iget v7, p0, Lcom/android/phone/MiuiCallCard;->mImageRoundCorner:I

    invoke-static {v1, v6, v7}, Lmiui/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhotoCache:Landroid/graphics/drawable/Drawable;

    .line 900
    :cond_c
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mCallCardPhotoCache:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 902
    const/16 v1, 0xe

    if-lt v3, v1, :cond_1

    .line 903
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 907
    :cond_d
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 908
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 917
    :cond_e
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private updateCallCard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 287
    iget v0, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 305
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->hideCallCardElements()V

    .line 307
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->inflateDoubleCallsInfoBar()V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDoubleCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V
    .locals 12
    .parameter "firstCall"
    .parameter "secondCall"
    .parameter "isFirstCallFrontground"

    .prologue
    const/4 v11, 0x1

    .line 443
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    move-object v0, p0

    move-object v1, p1

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 448
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    if-nez p3, :cond_0

    move v10, v11

    :goto_0
    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 453
    invoke-direct {p0, p3, v11}, Lcom/android/phone/MiuiCallCard;->switchFrontgroundCallCard(ZZ)V

    .line 454
    return-void

    .line 448
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static updateElapsedTimeWidget(Landroid/widget/TextView;J)V
    .locals 2
    .parameter "elapsedTime"
    .parameter "timeElapsed"

    .prologue
    .line 975
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 976
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNoCall()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method private updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .parameter "call"
    .parameter "phoneNumber"
    .parameter "number"

    .prologue
    .line 797
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 798
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 799
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 801
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 802
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 805
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #ssb:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->updateSingleCall(Lcom/android/internal/telephony/Call;)V

    .line 437
    return-void
.end method

.method private updateSingleCall(Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter "call"

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 493
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1061
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1062
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1063
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1064
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1069
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1072
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1073
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1074
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1075
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1076
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1077
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1078
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1079
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1080
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1082
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1083
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1085
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f040007

    return v0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 997
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBarMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1007
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1010
    sparse-switch v0, :sswitch_data_0

    .line 1020
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :goto_0
    return-void

    .line 1016
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 1010
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070028 -> :sswitch_0
        0x7f070030 -> :sswitch_0
        0x7f07003f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/high16 v7, 0x60a

    const/16 v6, 0x30

    const/4 v5, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 189
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    .line 190
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 194
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v5}, Lcom/android/phone/MiuiCallCard;->addView(Landroid/view/View;I)V

    .line 199
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    .line 200
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    .line 201
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 208
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->refreshAfterInflate()V

    .line 212
    return-void

    .line 203
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 960
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 961
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 962
    .local v1, success:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 963
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 964
    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 965
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 967
    :cond_0
    return-void

    .line 961
    .end local v1           #success:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 941
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 948
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 950
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 172
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 178
    :cond_1
    return-void
.end method

.method public updateForDigitPressed()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    .line 1029
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1030
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, digits:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1033
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget v3, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    if-ne v3, v5, :cond_2

    .line 1036
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1037
    :cond_2
    iget v3, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1038
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1039
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1042
    :cond_3
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1043
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 1044
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1046
    :cond_4
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 778
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 779
    .local v1, call:Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v1, :cond_0

    .line 780
    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 781
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 794
    :cond_0
    :goto_1
    return-void

    .line 778
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 782
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 783
    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 784
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 785
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    move v3, v4

    .line 786
    .local v3, isFgCallFirst:Z
    :goto_2
    if-eqz v3, :cond_3

    if-eq v1, v2, :cond_4

    :cond_3
    if-nez v3, :cond_6

    if-ne v1, v0, :cond_6

    .line 787
    .local v4, isFirst:Z
    :cond_4
    :goto_3
    if-eqz v4, :cond_7

    .line 788
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #isFgCallFirst:Z
    .end local v4           #isFirst:Z
    :cond_5
    move v3, v5

    .line 785
    goto :goto_2

    .restart local v3       #isFgCallFirst:Z
    :cond_6
    move v4, v5

    .line 786
    goto :goto_3

    .line 790
    .restart local v4       #isFirst:Z
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateLockScreenWallpaper()V
    .locals 3

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallCard;->bAddLockScreen:Z

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallCard;->bAddLockScreen:Z

    .line 217
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    .line 317
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 318
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 319
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 322
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 323
    .local v2, firstCall:Lcom/android/internal/telephony/Call;
    const/4 v4, 0x0

    .line 325
    .local v4, secondCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_2

    .line 334
    iput v5, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 335
    move-object v2, v3

    .line 391
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->updateCallCard()V

    .line 393
    iget v7, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 404
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->updateNoCall()V

    .line 411
    :goto_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    if-eq v5, v12, :cond_1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v11, :cond_a

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 416
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 421
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 422
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithPhoto:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 426
    :goto_3
    return-void

    .line 337
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    .line 348
    iput v12, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 349
    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 350
    move-object v2, v1

    .line 351
    move-object v4, v0

    goto :goto_0

    .line 353
    :cond_3
    move-object v2, v0

    .line 354
    move-object v4, v1

    goto :goto_0

    .line 357
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_8

    .line 359
    :cond_5
    iput v11, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 360
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_6

    move-object v2, v1

    .line 361
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v11, :cond_0

    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v7, v8, :cond_0

    .line 363
    iput v12, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 364
    invoke-static {v2}, Lcom/android/phone/MiuiCdmaSecondCall;->getInstance(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCdmaSecondCall;

    move-result-object v4

    .line 365
    if-nez v4, :cond_7

    .line 366
    iput v11, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    .line 360
    goto :goto_4

    .line 368
    :cond_7
    move-object v1, v4

    goto/16 :goto_0

    .line 387
    :cond_8
    iput v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    goto/16 :goto_0

    .line 395
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/phone/MiuiCallCard;->updateRingingCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 398
    :pswitch_1
    if-ne v2, v1, :cond_9

    :goto_5
    invoke-direct {p0, v2, v4, v5}, Lcom/android/phone/MiuiCallCard;->updateDoubleCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V

    goto/16 :goto_1

    :cond_9
    move v5, v6

    goto :goto_5

    .line 401
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->updateSingleCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 418
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_2

    .line 424
    :cond_b
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithoutPhoto:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
