.class Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackspaceExecutor"
.end annotation


# instance fields
.field private mMessageToken:I

.field final synthetic this$1:Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;I)V
    .locals 0
    .parameter
    .parameter "messageToken"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;->this$1:Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;->mMessageToken:I

    .line 146
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;->mMessageToken:I

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;->this$1:Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mCurrentMessageToken:I
    invoke-static {v1}, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->access$200(Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;->this$1:Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentProcessor;->access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;->this$1:Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;

    #getter for: Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->mIsInside:Z
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->access$400(Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener$BackspaceExecutor;->this$1:Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    #calls: Lcom/android/mms/ui/AttachmentProcessor;->backspace()V
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentProcessor;->access$500(Lcom/android/mms/ui/AttachmentProcessor;)V

    .line 155
    :cond_0
    return-void
.end method
