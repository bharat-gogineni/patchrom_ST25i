.class Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;
    }
.end annotation


# instance fields
.field private mCurrentMessageToken:I

.field private mIsInside:Z

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I

    .line 140
    iput-boolean v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mIsInside:Z

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;Lcom/android/mms/ui/AttachmentProcessor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;-><init>(Lcom/android/mms/ui/AttachmentProcessor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mIsInside:Z

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 182
    :goto_0
    return v6

    .line 162
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #calls: Lcom/android/mms/ui/AttachmentProcessor;->backspace()V
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentProcessor;->access$500(Lcom/android/mms/ui/AttachmentProcessor;)V

    .line 163
    iget v2, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I

    .line 164
    iput-boolean v3, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mIsInside:Z

    .line 165
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v2}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;

    iget v4, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;-><init>(Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :pswitch_1
    iget v2, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 173
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 174
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 175
    iput-boolean v3, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mIsInside:Z

    goto :goto_0

    .line 177
    :cond_0
    iput-boolean v6, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mIsInside:Z

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
