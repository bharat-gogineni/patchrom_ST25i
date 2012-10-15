.class public Lcom/android/mms/ui/FestivalActivity;
.super Landroid/app/Activity;
.source "FestivalActivity.java"


# static fields
.field private static mKeywords:[Ljava/lang/String;


# instance fields
.field private mBigWordDrawable:Landroid/graphics/drawable/Drawable;

.field private mBigwordView:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mWordsDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mWordsView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "happy new year"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u65b0\u5e74\u5feb\u4e50"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6625\u8282\u5feb\u4e50"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u606d\u8d3a\u65b0\u559c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u65b0\u6625\u5feb\u4e50"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/FestivalActivity;->mKeywords:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/android/mms/ui/FestivalActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FestivalActivity$1;-><init>(Lcom/android/mms/ui/FestivalActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FestivalActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalActivity;->playAnimation1()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FestivalActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalActivity;->playAnimation2()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FestivalActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalActivity;->playAnimation3()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FestivalActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/FestivalActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static checkAndCallFestival(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 207
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 208
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 212
    sget-object v2, Lcom/android/mms/ui/FestivalActivity;->mKeywords:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 213
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/FestivalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    :cond_0
    return-void

    .line 212
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "festival/words"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, words:[Ljava/lang/String;
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v5, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 120
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 121
    .local v3, word:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "festival/words"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v3           #word:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "festival/word.gif"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "word.gif"

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/FestivalActivity;->mBigWordDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "festival/image.gif"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "image.gif"

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/FestivalActivity;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void
.end method

.method private play()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method private playAnimation1()V
    .locals 18

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/FestivalActivity;->mDisplayWidth:I

    div-int/lit8 v3, v1, 0x2

    .line 131
    .local v3, positionX:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/FestivalActivity;->mDisplayHeight:I

    div-int/lit8 v4, v1, 0x3

    .line 132
    .local v4, positionY:I
    const/high16 v14, 0x3f80

    .line 133
    .local v14, startFactor:F
    const v12, 0x3e99999a

    .line 135
    .local v12, endFactor:F
    const/16 v17, 0xbb

    .line 136
    .local v17, width:I
    const/16 v13, 0x12e

    .line 137
    .local v13, height:I
    const/16 v16, 0x26f

    .line 138
    .local v16, startWidth:I
    const/16 v15, 0x3ee

    .line 140
    .local v15, startHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalActivity;->mBigwordView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/FestivalActivity;->mBigWordDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/FestivalActivity;->mBigwordView:Landroid/widget/ImageView;

    const/16 v5, 0x26f

    const/16 v6, 0x3ee

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/FestivalActivity;->setPosition(Landroid/view/View;IIII)V

    .line 143
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const v7, 0x3e99999a

    const/high16 v8, 0x3f80

    const v9, 0x3e99999a

    const v10, 0x439b8000

    const v11, 0x43fb8000

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 145
    .local v5, sa:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v5, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 147
    new-instance v1, Lcom/android/mms/ui/FestivalActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/FestivalActivity$3;-><init>(Lcom/android/mms/ui/FestivalActivity;)V

    invoke-virtual {v5, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FestivalActivity;->mBigwordView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 164
    invoke-virtual {v5}, Landroid/view/animation/ScaleAnimation;->startNow()V

    .line 165
    return-void
.end method

.method private playAnimation2()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 168
    const/16 v8, 0x16d

    .line 169
    .local v8, width:I
    const/16 v6, 0x107

    .line 170
    .local v6, height:I
    iget v0, p0, Lcom/android/mms/ui/FestivalActivity;->mDisplayWidth:I

    div-int/lit8 v2, v0, 0x2

    .line 171
    .local v2, endX:I
    iget v0, p0, Lcom/android/mms/ui/FestivalActivity;->mDisplayHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v0, 0x3

    .line 173
    .local v3, endY:I
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/FestivalActivity;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/android/mms/ui/FestivalActivity;->mImageView:Landroid/widget/ImageView;

    const/16 v4, 0x16d

    const/16 v5, 0x107

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/FestivalActivity;->setPosition(Landroid/view/View;IIII)V

    .line 176
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v0, p0, Lcom/android/mms/ui/FestivalActivity;->mDisplayHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {v7, v9, v9, v0, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    .local v7, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v0, 0x190

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 180
    invoke-virtual {v7}, Landroid/view/animation/TranslateAnimation;->startNow()V

    .line 181
    return-void
.end method

.method private playAnimation3()V
    .locals 6

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/mms/ui/FestivalActivity;->mDisplayWidth:I

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/android/mms/ui/FestivalActivity;->mDisplayHeight:I

    div-int/lit8 v3, v0, 0x3

    const/16 v4, 0x133

    const/16 v5, 0x162

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/FestivalActivity;->setPosition(Landroid/view/View;IIII)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/FestivalActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/FestivalActivity$4;-><init>(Lcom/android/mms/ui/FestivalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 193
    return-void
.end method

.method private setPosition(Landroid/view/View;IIII)V
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 196
    div-int/lit8 v3, p4, 0x2

    sub-int v1, p2, v3

    .local v1, xp:I
    div-int/lit8 v3, p5, 0x2

    sub-int v2, p3, v3

    .line 197
    .local v2, yp:I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v0, p4, p5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 199
    .local v0, para:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v2, 0x7f04000e

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalActivity;->setContentView(I)V

    .line 78
    const v2, 0x7f100008

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/mms/ui/FestivalActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 79
    iget-object v2, p0, Lcom/android/mms/ui/FestivalActivity;->mContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/mms/ui/FestivalActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/FestivalActivity$2;-><init>(Lcom/android/mms/ui/FestivalActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f100009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/FestivalActivity;->mImageView:Landroid/widget/ImageView;

    .line 87
    const v2, 0x7f10003a

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/FestivalActivity;->mBigwordView:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f100039

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/FestivalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/FestivalActivity;->mWordsView:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 91
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/FestivalActivity;->mDisplayWidth:I

    .line 92
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/FestivalActivity;->mDisplayHeight:I

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalActivity;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalActivity;->play()V

    .line 103
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    return-void
.end method
