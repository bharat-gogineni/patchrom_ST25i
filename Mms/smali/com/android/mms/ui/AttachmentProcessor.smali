.class public Lcom/android/mms/ui/AttachmentProcessor;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;,
        Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_STATE_FOR_MMS:[I

.field private static final ATTACHMENT_STATE_FOR_SLIDESHOW:[I

.field private static final AUDIO_URI:Ljava/lang/String;

.field private static final IMAGE_URI:Ljava/lang/String;

.field private static final VIDEO_URI:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

.field private mAttachmentPanel:Landroid/widget/ViewSwitcher;

.field private mAttachmentPanelPreviousWidth:I

.field private mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

.field private mAttachmentTypeScreens:Lmiui/widget/ScreenView;

.field private mAttachmentTypes:[Landroid/view/View;

.field private mCategoryCount:I

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSlideLeftInAnimation:Landroid/view/animation/Animation;

.field private mSlideLeftOutAnimation:Landroid/view/animation/Animation;

.field private mSlideRightInAnimation:Landroid/view/animation/Animation;

.field private mSlideRightOutAnimation:Landroid/view/animation/Animation;

.field private mSmileyBack:Landroid/view/View;

.field private mSmileyPanel:Landroid/view/View;

.field private mSmileyScreens:Landroid/view/ViewGroup;

.field private mSmileyTabWidget:Landroid/widget/TabWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 75
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->VIDEO_URI:Ljava/lang/String;

    .line 77
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->IMAGE_URI:Ljava/lang/String;

    .line 79
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->AUDIO_URI:Ljava/lang/String;

    .line 203
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->ATTACHMENT_STATE_FOR_SLIDESHOW:[I

    .line 206
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->ATTACHMENT_STATE_FOR_MMS:[I

    return-void

    .line 203
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 206
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v2, 0xe

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    .line 830
    new-instance v2, Lcom/android/mms/ui/AttachmentProcessor$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AttachmentProcessor$6;-><init>(Lcom/android/mms/ui/AttachmentProcessor;)V

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    .line 103
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f10004d

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/ScreenView;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    .line 104
    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {v2, v3}, Lcom/android/mms/ui/AttachmentTypeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    .line 106
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f10004c

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    .line 107
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f10004e

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyPanel:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f100055

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f10004f

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    .line 110
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    :goto_0
    iput v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mCategoryCount:I

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mCategoryCount:I

    if-ge v0, v2, :cond_1

    .line 113
    move v1, v0

    .line 114
    .local v1, index:I
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/AttachmentProcessor$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/AttachmentProcessor$1;-><init>(Lcom/android/mms/ui/AttachmentProcessor;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0           #i:I
    .end local v1           #index:I
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 121
    .restart local v0       #i:I
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mCategoryCount:I

    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f100056

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyBack:Landroid/view/View;

    .line 125
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyBack:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyBack:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;-><init>(Lcom/android/mms/ui/AttachmentProcessor;Lcom/android/mms/ui/AttachmentProcessor$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f050002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftInAnimation:Landroid/view/animation/Animation;

    .line 129
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f050003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftOutAnimation:Landroid/view/animation/Animation;

    .line 130
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightInAnimation:Landroid/view/animation/Animation;

    .line 131
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f050005

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightOutAnimation:Landroid/view/animation/Animation;

    .line 133
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->selectSmileyTab(I)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentProcessor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor;->selectSmileyTab(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/AttachmentProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->backspace()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/AttachmentProcessor;Lcom/android/mms/ui/StaticGridView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/AttachmentProcessor;->loadSmileyGridView(Lcom/android/mms/ui/StaticGridView;IIII)V

    return-void
.end method

.method private addAudio(Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 881
    if-eqz p1, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 883
    const v1, 0x7f0a00e1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    .line 885
    :cond_0
    return-void
.end method

.method private addImage(Landroid/net/Uri;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 860
    const-string v0, "AttachmentProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage: append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 863
    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 865
    :cond_0
    const-string v0, "AttachmentProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage: resize image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    .line 871
    :goto_0
    return-void

    .line 870
    :cond_1
    const v1, 0x7f0a00e2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    goto :goto_0
.end method

.method private addVideo(Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 874
    if-eqz p1, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 876
    const v1, 0x7f0a00e3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    .line 878
    :cond_0
    return-void
.end method

.method private arrangeAttachmentTypeScreens(I)V
    .locals 17
    .parameter "width"

    .prologue
    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-nez v2, :cond_1

    .line 275
    const/4 v4, 0x3

    .line 276
    .local v4, columnCount:I
    const/4 v3, 0x2

    .line 277
    .local v3, rowCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    const v5, 0x7f02000b

    invoke-virtual {v2, v5}, Lmiui/widget/ScreenView;->setBackgroundResource(I)V

    .line 278
    const v2, 0x7f0b002d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v12

    .line 279
    .local v12, screenHeight:I
    const v2, 0x7f0b002e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v6

    .line 287
    .local v6, rowHeight:I
    :goto_0
    mul-int v11, v4, v3

    .line 288
    .local v11, screenGridCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/AttachmentTypeListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v11

    add-int/lit8 v10, v2, 0x1

    .line 290
    .local v10, screenCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v5, v15, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Lmiui/widget/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v5, -0x2

    const/16 v15, 0x31

    invoke-direct {v14, v2, v5, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 295
    .local v14, seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    mul-int v5, v6, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v2, v5, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v14}, Lmiui/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScreenView;->removeAllScreens()V

    .line 299
    const/4 v13, 0x0

    .local v13, screenIndex:I
    :goto_1
    if-ge v13, v10, :cond_3

    .line 300
    new-instance v1, Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    div-int v5, p1, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    .line 304
    .local v1, gridView:Lcom/android/mms/ui/StaticGridView;
    const/4 v8, 0x0

    .local v8, gridIndex:I
    :goto_2
    if-ge v8, v11, :cond_0

    .line 305
    mul-int v2, v13, v3

    mul-int/2addr v2, v4

    add-int v9, v8, v2

    .line 306
    .local v9, listIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/AttachmentTypeListAdapter;->getCount()I

    move-result v2

    if-lt v9, v2, :cond_2

    .line 319
    .end local v9           #listIndex:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v1}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 299
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 281
    .end local v1           #gridView:Lcom/android/mms/ui/StaticGridView;
    .end local v3           #rowCount:I
    .end local v4           #columnCount:I
    .end local v6           #rowHeight:I
    .end local v8           #gridIndex:I
    .end local v10           #screenCount:I
    .end local v11           #screenGridCount:I
    .end local v12           #screenHeight:I
    .end local v13           #screenIndex:I
    .end local v14           #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x5

    .line 282
    .restart local v4       #columnCount:I
    const/4 v3, 0x1

    .line 283
    .restart local v3       #rowCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    const v5, 0x7f02000a

    invoke-virtual {v2, v5}, Lmiui/widget/ScreenView;->setBackgroundResource(I)V

    .line 284
    const v2, 0x7f0b002f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v12

    .line 285
    .restart local v12       #screenHeight:I
    const v2, 0x7f0b0030

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v6

    .restart local v6       #rowHeight:I
    goto/16 :goto_0

    .line 309
    .restart local v1       #gridView:Lcom/android/mms/ui/StaticGridView;
    .restart local v8       #gridIndex:I
    .restart local v9       #listIndex:I
    .restart local v10       #screenCount:I
    .restart local v11       #screenGridCount:I
    .restart local v13       #screenIndex:I
    .restart local v14       #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    const/4 v5, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v9, v5, v15}, Lcom/android/mms/ui/AttachmentTypeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 310
    .local v7, grid:Landroid/view/View;
    new-instance v2, Lcom/android/mms/ui/AttachmentProcessor$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/android/mms/ui/AttachmentProcessor$2;-><init>(Lcom/android/mms/ui/AttachmentProcessor;I)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v1, v7}, Lcom/android/mms/ui/StaticGridView;->addView(Landroid/view/View;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    aput-object v7, v2, v9

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 321
    .end local v1           #gridView:Lcom/android/mms/ui/StaticGridView;
    .end local v7           #grid:Landroid/view/View;
    .end local v8           #gridIndex:I
    .end local v9           #listIndex:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Lmiui/widget/ScreenView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/AttachmentProcessor;->updateAttachmentTypeStates()V

    .line 323
    return-void
.end method

.method private arrangeSmileyScreens(I)V
    .locals 18
    .parameter "width"

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageEditableActivityBase;->mIsLandscape:Z

    if-nez v2, :cond_0

    .line 331
    const/4 v4, 0x5

    .line 332
    .local v4, columnCount:I
    const/4 v3, 0x3

    .line 333
    .local v3, rowCount:I
    const v2, 0x7f0b0031

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v15

    .line 334
    .local v15, screenHeight:I
    const v2, 0x7f0b0032

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v6

    .line 341
    .local v6, rowHeight:I
    :goto_0
    mul-int v14, v4, v3

    .line 342
    .local v14, screenGridCount:I
    const/4 v9, 0x0

    .local v9, category:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mCategoryCount:I

    if-ge v9, v2, :cond_2

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lmiui/widget/ScreenView;

    .line 344
    .local v16, screens:Lmiui/widget/ScreenView;
    invoke-static {v9}, Lcom/android/mms/util/SmileyParser;->getSmileyCount(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v14

    add-int/lit8 v13, v2, 0x1

    .line 346
    .local v13, screenCount:I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lmiui/widget/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v5, -0x2

    const/16 v7, 0x31

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 351
    .local v17, seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    mul-int v5, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    invoke-virtual/range {v16 .. v17}, Lmiui/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 353
    invoke-virtual/range {v16 .. v16}, Lmiui/widget/ScreenView;->removeAllScreens()V

    .line 355
    const/4 v10, 0x0

    .local v10, screenIndex:I
    :goto_2
    if-ge v10, v13, :cond_1

    .line 356
    new-instance v1, Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    div-int v5, p1, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    .line 360
    .local v1, gridView:Lcom/android/mms/ui/StaticGridView;
    new-instance v7, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;

    move-object/from16 v8, p0

    move v11, v3

    move v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;-><init>(Lcom/android/mms/ui/AttachmentProcessor;IIII)V

    invoke-virtual {v1, v7}, Lcom/android/mms/ui/StaticGridView;->setInitializer(Lcom/android/mms/ui/StaticGridView$Initializer;)V

    .line 362
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 355
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 336
    .end local v1           #gridView:Lcom/android/mms/ui/StaticGridView;
    .end local v3           #rowCount:I
    .end local v4           #columnCount:I
    .end local v6           #rowHeight:I
    .end local v9           #category:I
    .end local v10           #screenIndex:I
    .end local v13           #screenCount:I
    .end local v14           #screenGridCount:I
    .end local v15           #screenHeight:I
    .end local v16           #screens:Lmiui/widget/ScreenView;
    .end local v17           #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/16 v4, 0x8

    .line 337
    .restart local v4       #columnCount:I
    const/4 v3, 0x1

    .line 338
    .restart local v3       #rowCount:I
    const v2, 0x7f0b0033

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v15

    .line 339
    .restart local v15       #screenHeight:I
    const v2, 0x7f0b0034

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v6

    .restart local v6       #rowHeight:I
    goto :goto_0

    .line 364
    .restart local v9       #category:I
    .restart local v10       #screenIndex:I
    .restart local v13       #screenCount:I
    .restart local v14       #screenGridCount:I
    .restart local v16       #screens:Lmiui/widget/ScreenView;
    .restart local v17       #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 342
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 366
    .end local v10           #screenIndex:I
    .end local v13           #screenCount:I
    .end local v16           #screens:Lmiui/widget/ScreenView;
    .end local v17           #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private backspace()V
    .locals 5

    .prologue
    const/16 v4, 0x43

    .line 187
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getEditMessageFocus()Landroid/widget/EditText;

    move-result-object v2

    .line 189
    .local v2, focus:Landroid/view/View;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 190
    .local v0, eventDown:Landroid/view/KeyEvent;
    invoke-virtual {v2, v4, v0}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 192
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 193
    .local v1, eventUp:Landroid/view/KeyEvent;
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 194
    return-void
.end method

.method public static computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J
    .locals 4
    .parameter "slideShow"
    .parameter "currentSlideSize"

    .prologue
    .line 583
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, -0x400

    int-to-long v0, v2

    .line 584
    .local v0, sizeLimit:J
    if-eqz p0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 592
    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 594
    :cond_0
    return-wide v0
.end method

.method private editSlideshow()V
    .locals 2

    .prologue
    .line 888
    new-instance v0, Lcom/android/mms/ui/AttachmentProcessor$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentProcessor$7;-><init>(Lcom/android/mms/ui/AttachmentProcessor;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 910
    return-void
.end method

.method private getDimen(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private loadSmileyGridView(Lcom/android/mms/ui/StaticGridView;IIII)V
    .locals 10
    .parameter "gridView"
    .parameter "category"
    .parameter "screenIndex"
    .parameter "rowCount"
    .parameter "columnCount"

    .prologue
    const/4 v9, 0x0

    .line 389
    mul-int v3, p4, p5

    .line 390
    .local v3, screenGridCount:I
    const/4 v1, 0x0

    .local v1, gridIndex:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 391
    mul-int v6, p3, p4

    mul-int/2addr v6, p5

    add-int v2, v1, v6

    .line 392
    .local v2, listIndex:I
    invoke-static {p2}, Lcom/android/mms/util/SmileyParser;->getSmileyCount(I)I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 426
    .end local v2           #listIndex:I
    :cond_0
    return-void

    .line 395
    .restart local v2       #listIndex:I
    :cond_1
    invoke-static {p2, v2}, Lcom/android/mms/util/SmileyParser;->getSmileyString(II)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, smileyString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageEditableActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04004d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 398
    .local v0, grid:Landroid/view/ViewGroup;
    const v6, 0x7f1000d3

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 399
    .local v5, textGrid:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    packed-switch p2, :pswitch_data_0

    .line 416
    :cond_2
    :goto_1
    new-instance v6, Lcom/android/mms/ui/AttachmentProcessor$3;

    invoke-direct {v6, p0, v4}, Lcom/android/mms/ui/AttachmentProcessor$3;-><init>(Lcom/android/mms/ui/AttachmentProcessor;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/StaticGridView;->addView(Landroid/view/View;)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :pswitch_0
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const/high16 v7, 0x4040

    mul-float/2addr v6, v7

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 407
    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x7

    if-ge v6, v7, :cond_2

    .line 408
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const v7, 0x3fa66666

    mul-float/2addr v6, v7

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 412
    :pswitch_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private selectSmileyTab(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 198
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 201
    :cond_1
    return-void
.end method

.method private viewAttachment()V
    .locals 2

    .prologue
    .line 772
    new-instance v0, Lcom/android/mms/ui/AttachmentProcessor$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentProcessor$5;-><init>(Lcom/android/mms/ui/AttachmentProcessor;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 828
    return-void
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5
    .parameter "type"
    .parameter "uri"
    .parameter "append"

    .prologue
    .line 433
    if-eqz p2, :cond_2

    .line 439
    if-eqz p1, :cond_0

    const-string v3, "*/*"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 441
    .local v2, wildcard:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 442
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/AttachmentProcessor;->IMAGE_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    const-string p1, "image/*"

    .line 455
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 456
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->addImage(Landroid/net/Uri;Z)V

    .line 464
    .end local v2           #wildcard:Z
    :cond_2
    :goto_2
    return-void

    .line 439
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 444
    .restart local v2       #wildcard:Z
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/AttachmentProcessor;->VIDEO_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 445
    const-string p1, "video/*"

    goto :goto_1

    .line 446
    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/AttachmentProcessor;->AUDIO_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 447
    const-string p1, "audio/*"

    goto :goto_1

    .line 448
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, src:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, extension:Ljava/lang/String;
    if-nez v0, :cond_7

    const/4 p1, 0x0

    :goto_3
    goto :goto_1

    :cond_7
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 457
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #src:Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 458
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->addVideo(Landroid/net/Uri;Z)V

    goto :goto_2

    .line 459
    :cond_9
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "application/ogg"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->addAudio(Landroid/net/Uri;Z)V

    goto :goto_2
.end method

.method public arrangeAttachmentPanel(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 262
    iget v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanelPreviousWidth:I

    if-ne v0, p1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanelPreviousWidth:I

    .line 265
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeAttachmentTypeScreens(I)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeSmileyScreens(I)V

    goto :goto_0
.end method

.method public gotoAttachmentPanel(Z)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 237
    :cond_0
    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public gotoSmileyPanel(Z)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    if-eqz p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 258
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public handleAddAttachmentError(II)V
    .locals 2
    .parameter "error"
    .parameter "mediaTypeStringId"

    .prologue
    .line 698
    if-nez p1, :cond_0

    .line 732
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    new-instance v1, Lcom/android/mms/ui/AttachmentProcessor$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/ui/AttachmentProcessor$4;-><init>(Lcom/android/mms/ui/AttachmentProcessor;II)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public handleAttachentMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 735
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 769
    :goto_0
    return-void

    .line 737
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->editSlideshow()V

    goto :goto_0

    .line 744
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->viewAttachment()V

    goto :goto_0

    .line 748
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentProcessor;->onAttachmentTypeClick(I)V

    goto :goto_0

    .line 752
    :sswitch_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentProcessor;->onAttachmentTypeClick(I)V

    goto :goto_0

    .line 756
    :sswitch_4
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentProcessor;->onAttachmentTypeClick(I)V

    goto :goto_0

    .line 763
    :sswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    goto :goto_0

    .line 735
    :sswitch_data_0
    .sparse-switch
        0x7f100003 -> :sswitch_1
        0x7f100004 -> :sswitch_4
        0x7f100005 -> :sswitch_5
        0x7f10002f -> :sswitch_2
        0x7f100048 -> :sswitch_1
        0x7f100049 -> :sswitch_5
        0x7f1000c6 -> :sswitch_1
        0x7f1000c7 -> :sswitch_0
        0x7f1000c8 -> :sswitch_5
        0x7f1000d8 -> :sswitch_1
        0x7f1000d9 -> :sswitch_3
        0x7f1000da -> :sswitch_5
    .end sparse-switch
.end method

.method public isOnAttachmentPanel()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    .line 598
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    .line 599
    .local v7, workingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 602
    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 605
    :cond_0
    const/4 v8, -0x1

    if-eq p2, v8, :cond_2

    .line 695
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 636
    :pswitch_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/AttachmentProcessor;->addImage(Landroid/net/Uri;Z)V

    .line 637
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto :goto_0

    .line 611
    :pswitch_2
    if-eqz p3, :cond_1

    .line 612
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9, v10}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    .line 613
    if-eqz v7, :cond_4

    .line 614
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 615
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8, v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->setWorkingMessage(Lcom/android/mms/data/WorkingMessage;)V

    .line 616
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->getAttachmentView()Lcom/android/mms/ui/AttachmentView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 617
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawTopPanel()V

    .line 618
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 619
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 620
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentProcessor;->updateAttachmentTypeStates()V

    .line 622
    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto :goto_0

    .line 629
    :pswitch_3
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-static {v8}, Lcom/android/mms/TempFileProvider;->getScrapPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 631
    .local v6, uri:Landroid/net/Uri;
    invoke-direct {p0, v6, v10}, Lcom/android/mms/ui/AttachmentProcessor;->addImage(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 642
    .end local v1           #file:Ljava/io/File;
    .end local v6           #uri:Landroid/net/Uri;
    :pswitch_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/AttachmentProcessor;->addVideo(Landroid/net/Uri;Z)V

    .line 643
    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto :goto_0

    .line 647
    :pswitch_5
    const-string v8, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 648
    .restart local v6       #uri:Landroid/net/Uri;
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 649
    invoke-direct {p0, v6, v10}, Lcom/android/mms/ui/AttachmentProcessor;->addAudio(Landroid/net/Uri;Z)V

    .line 651
    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto/16 :goto_0

    .line 656
    .end local v6           #uri:Landroid/net/Uri;
    :pswitch_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/AttachmentProcessor;->addAudio(Landroid/net/Uri;Z)V

    .line 657
    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto/16 :goto_0

    .line 661
    :pswitch_7
    if-eqz p3, :cond_1

    .line 663
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->getTextEditor()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 664
    .local v4, text:Landroid/text/Editable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v2, formatRecipient:Ljava/lang/StringBuilder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 667
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_8

    .line 671
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .end local v3           #str:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-static {v8}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/android/mms/model/ContactParser;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->getTextEditor()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 679
    .local v0, cusorPos:I
    invoke-interface {v4, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 680
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto/16 :goto_0

    .line 685
    .end local v0           #cusorPos:I
    .end local v2           #formatRecipient:Ljava/lang/StringBuilder;
    .end local v4           #text:Landroid/text/Editable;
    :pswitch_8
    if-eqz p3, :cond_1

    .line 686
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->getTextEditor()Landroid/widget/EditText;

    move-result-object v5

    .line 687
    .local v5, textEditor:Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 689
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto/16 :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onAttachmentTypeClick(I)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 467
    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_4

    .line 470
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 473
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 579
    :goto_1
    return-void

    .line 475
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/AttachmentProcessor;->gotoSmileyPanel(Z)V

    goto :goto_1

    .line 479
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    const-string v1, "vnd.android.cursor.dir/contact_pick_single"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x6d

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->insertChenghu()V

    goto :goto_1

    .line 490
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_1

    .line 494
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    const-string v1, "output"

    sget-object v2, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 496
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 501
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const-class v2, Lcom/android/mms/ui/PickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    sget-object v1, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_KEY:Ljava/lang/String;

    sget v2, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_PHRASE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x70

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 509
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto :goto_1

    .line 514
    :pswitch_7
    invoke-static {v2, v0}, Lcom/android/mms/ui/AttachmentProcessor;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v2

    .line 515
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 516
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    .line 517
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 520
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x67

    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 532
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const-class v2, Lcom/android/mms/ui/PickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    sget-object v1, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_KEY:Ljava/lang/String;

    sget v2, Lcom/android/mms/ui/PickerActivity;->PICK_TYPE_FESTIVAL:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x6f

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 540
    :pswitch_9
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 545
    :pswitch_a
    invoke-static {v2, v0}, Lcom/android/mms/ui/AttachmentProcessor;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v2

    .line 546
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x69

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;IJ)V

    goto/16 :goto_1

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0a019e

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 556
    :pswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->editSlideshow()V

    goto/16 :goto_1

    .line 560
    :pswitch_c
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->setTiming()V

    goto/16 :goto_1

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->cancelTiming()V

    goto/16 :goto_1

    .line 568
    :pswitch_d
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_c
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public updateAttachmentTypeStates()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 211
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    aget-object v1, v1, v3

    if-nez v1, :cond_1

    .line 227
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    aget-object v4, v1, v0

    sget-object v1, Lcom/android/mms/ui/AttachmentProcessor;->ATTACHMENT_STATE_FOR_SLIDESHOW:[I

    aget v1, v1, v0

    if-lez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 216
    goto :goto_1

    .line 218
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    aget-object v4, v1, v0

    sget-object v1, Lcom/android/mms/ui/AttachmentProcessor;->ATTACHMENT_STATE_FOR_MMS:[I

    aget v1, v1, v0

    if-lez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    .line 220
    goto :goto_3

    .line 223
    .end local v0           #i:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypes:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
