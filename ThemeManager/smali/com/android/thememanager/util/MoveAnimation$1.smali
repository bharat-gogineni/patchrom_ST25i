.class Lcom/android/thememanager/util/MoveAnimation$1;
.super Landroid/os/Handler;
.source "MoveAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/util/MoveAnimation;->start(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAnimCnt:I

.field final synthetic this$0:Lcom/android/thememanager/util/MoveAnimation;

.field final synthetic val$animInternal:I

.field final synthetic val$animMostCnt:I

.field final synthetic val$moveOffset:I


# direct methods
.method constructor <init>(Lcom/android/thememanager/util/MoveAnimation;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->this$0:Lcom/android/thememanager/util/MoveAnimation;

    iput p2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$moveOffset:I

    iput p3, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$animMostCnt:I

    iput p4, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$animInternal:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/thememanager/util/MoveAnimation$1;->mAnimCnt:I

    .line 18
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, moveStep:I
    :cond_0
    iget v1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->mAnimCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->mAnimCnt:I

    .line 25
    iget v1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$moveOffset:I

    iget v2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->mAnimCnt:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$animMostCnt:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$moveOffset:I

    iget v3, p0, Lcom/android/thememanager/util/MoveAnimation$1;->mAnimCnt:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$animMostCnt:I

    div-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 27
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->mAnimCnt:I

    iget v2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$animMostCnt:I

    if-lt v1, v2, :cond_0

    .line 29
    :cond_1
    iget v1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->mAnimCnt:I

    iget v2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$animMostCnt:I

    if-le v1, v2, :cond_2

    .line 30
    iget-object v1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->this$0:Lcom/android/thememanager/util/MoveAnimation;

    iget v2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$moveOffset:I

    invoke-virtual {v1, v2}, Lcom/android/thememanager/util/MoveAnimation;->onFinish(I)V

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_2
    if-eqz v0, :cond_3

    .line 33
    iget-object v1, p0, Lcom/android/thememanager/util/MoveAnimation$1;->this$0:Lcom/android/thememanager/util/MoveAnimation;

    invoke-virtual {v1, v0}, Lcom/android/thememanager/util/MoveAnimation;->onMove(I)V

    .line 35
    :cond_3
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/thememanager/util/MoveAnimation$1;->val$animInternal:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/thememanager/util/MoveAnimation$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
