.class public Lcom/miui/player/ui/view/ComboPreference;
.super Landroid/preference/Preference;
.source "ComboPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lmiui/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/ComboPreference$SizeConverter;,
        Lcom/miui/player/ui/view/ComboPreference$DurationConverter;,
        Lcom/miui/player/ui/view/ComboPreference$ConstantConverter;,
        Lcom/miui/player/ui/view/ComboPreference$RawConverter;,
        Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    }
.end annotation


# static fields
.field private static final CONVERTER_CONSTANT:I = 0x3

.field private static final CONVERTER_DURATION:I = 0x2

.field private static final CONVERTER_RAW:I = 0x0

.field private static final CONVERTER_SIZE:I = 0x1

.field private static final K_SIZE:I = 0x400


# instance fields
.field private final mConverter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;

.field private mCurrentParent:Landroid/view/View;

.field private mCurrentPrefix:Ljava/lang/CharSequence;

.field private mCurrentView:Landroid/widget/TextView;

.field private final mMaxName:Ljava/lang/CharSequence;

.field private final mMaxValue:I

.field private final mMinName:Ljava/lang/CharSequence;

.field private final mMinValue:I

.field private final mProgressKey:Ljava/lang/String;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekParent:Landroid/view/View;

.field private mSlidingButton:Lmiui/widget/SlidingButton;

.field private mSlidingButtonParent:Landroid/view/View;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/player/ui/view/ComboPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const v4, 0x7f030015

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/view/ComboPreference;->setLayoutResource(I)V

    .line 61
    sget-object v4, Lcom/miui/player/R$styleable;->ComboPreference:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mProgressKey:Ljava/lang/String;

    .line 65
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mProgressKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad progress key for preference %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    .line 70
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mTitle:Ljava/lang/CharSequence;

    .line 71
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinName:Ljava/lang/CharSequence;

    .line 72
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxName:Ljava/lang/CharSequence;

    .line 73
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    .line 74
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxValue:I

    .line 75
    iget v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    iget v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxValue:I

    if-lt v4, v5, :cond_1

    .line 76
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad bound for preference %s, with minValue=%d and maxValue=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/player/ui/view/ComboPreference;->mTitle:Ljava/lang/CharSequence;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxValue:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentPrefix:Ljava/lang/CharSequence;

    .line 83
    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 84
    .local v3, type:I
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, extra:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/miui/player/ui/view/ComboPreference;->createConverter(ILjava/lang/Object;)Lcom/miui/player/ui/view/ComboPreference$ValueConverter;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mConverter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    sget-object v4, Lcom/miui/player/R$styleable;->PreferenceCommon:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .local v1, b:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 94
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryOff:Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void

    .line 96
    :catchall_1
    move-exception v4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method private absoluteProgress(I)I
    .locals 1
    .parameter "progress"

    .prologue
    .line 214
    iget v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    add-int/2addr p1, v0

    .line 216
    iget v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 217
    iget p1, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    .line 222
    :cond_0
    :goto_0
    return p1

    .line 218
    :cond_1
    iget v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 219
    iget p1, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxValue:I

    goto :goto_0
.end method

.method private static createConverter(ILjava/lang/Object;)Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    .locals 4
    .parameter "type"
    .parameter "extra"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    packed-switch p0, :pswitch_data_0

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :pswitch_0
    new-instance v0, Lcom/miui/player/ui/view/ComboPreference$RawConverter;

    .end local v0           #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    invoke-direct {v0}, Lcom/miui/player/ui/view/ComboPreference$RawConverter;-><init>()V

    .line 302
    .end local p1
    .restart local v0       #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    :goto_0
    return-object v0

    .line 290
    .restart local p1
    :pswitch_1
    new-instance v0, Lcom/miui/player/ui/view/ComboPreference$SizeConverter;

    .end local v0           #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    invoke-direct {v0}, Lcom/miui/player/ui/view/ComboPreference$SizeConverter;-><init>()V

    .line 291
    .restart local v0       #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    goto :goto_0

    .line 293
    :pswitch_2
    new-instance v0, Lcom/miui/player/ui/view/ComboPreference$DurationConverter;

    .end local v0           #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    invoke-direct {v0}, Lcom/miui/player/ui/view/ComboPreference$DurationConverter;-><init>()V

    .line 294
    .restart local v0       #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    goto :goto_0

    .line 296
    :pswitch_3
    new-instance v0, Lcom/miui/player/ui/view/ComboPreference$ConstantConverter;

    .end local v0           #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, p1}, Lcom/miui/player/ui/view/ComboPreference$ConstantConverter;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    .restart local v0       #converter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;
    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshSummary()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 227
    .local v0, summary:Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    return-void

    .line 226
    .end local v0           #summary:Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 228
    .restart local v0       #summary:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isPersistent()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/view/ComboPreference;->refresh(Z)V

    .line 184
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 176
    .local v0, newValue:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/ComboPreference;->refresh(Z)V

    .line 178
    return-void

    .line 175
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "parent"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0c0007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v4, 0x7f0c0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v4, 0x7f0c0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 109
    .local v0, checked:Z
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mProgressKey:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/player/util/PreferenceCache;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    .local v1, current:I
    const v4, 0x7f0c004d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButtonParent:Landroid/view/View;

    .line 112
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButtonParent:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButtonParent:Landroid/view/View;

    const v5, 0x7f0c004f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/SlidingButton;

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    .line 114
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v4, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 115
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v4, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangedListener(Lmiui/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 116
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButtonParent:Landroid/view/View;

    const v5, 0x7f0c0050

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryView:Landroid/widget/TextView;

    .line 118
    const v4, 0x7f0c0051

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentParent:Landroid/view/View;

    .line 119
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentParent:Landroid/view/View;

    const v5, 0x7f0c0052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, prefix:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentPrefix:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_0
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentParent:Landroid/view/View;

    const v5, 0x7f0c0053

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentView:Landroid/widget/TextView;

    .line 127
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mConverter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;

    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/miui/player/ui/view/ComboPreference$ValueConverter;->convert(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v4, 0x7f0c0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSeekParent:Landroid/view/View;

    .line 130
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSeekParent:Landroid/view/View;

    const v5, 0x7f0c0056

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 131
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 132
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mMaxValue:I

    iget v6, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 133
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/miui/player/ui/view/ComboPreference;->mMinValue:I

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    invoke-direct {p0}, Lcom/miui/player/ui/view/ComboPreference;->refreshSummary()V

    .line 136
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/ComboPreference;->refreshVisibility(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->shouldDisableDependents()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/view/ComboPreference;->notifyDependencyChange(Z)V

    .line 139
    return-object v3

    .line 123
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v4, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentPrefix:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 188
    if-nez p3, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mConverter:Lcom/miui/player/ui/view/ComboPreference$ValueConverter;

    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/miui/player/ui/view/ComboPreference;->absoluteProgress(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/miui/player/ui/view/ComboPreference$ValueConverter;->convert(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 198
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/ComboPreference;->absoluteProgress(I)I

    move-result v0

    .line 203
    .local v0, progress:I
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/view/ComboPreference;->mProgressKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/player/util/PreferenceCache;->setPrefAsInteger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 204
    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/ComboPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public refresh(Z)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/player/util/PreferenceCache;->setPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0}, Lcom/miui/player/ui/view/ComboPreference;->refreshSummary()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/view/ComboPreference;->refreshVisibility(Z)V

    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/ComboPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ComboPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/ComboPreference;->notifyDependencyChange(Z)V

    .line 171
    return-void
.end method

.method public refreshVisibility(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 209
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mSeekParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/miui/player/ui/view/ComboPreference;->mCurrentParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-void

    .line 208
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 154
    invoke-virtual {p0, p1, p1}, Lcom/miui/player/ui/view/ComboPreference;->setSummary(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "summaryOn"
    .parameter "summaryOff"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 159
    iput-object p2, p0, Lcom/miui/player/ui/view/ComboPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 160
    invoke-direct {p0}, Lcom/miui/player/ui/view/ComboPreference;->refreshSummary()V

    .line 161
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/view/ComboPreference;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
