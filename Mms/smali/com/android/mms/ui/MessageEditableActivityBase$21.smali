.class Lcom/android/mms/ui/MessageEditableActivityBase$21;
.super Landroid/os/Handler;
.source "MessageEditableActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$21;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1754
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1760
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1761
    :goto_0
    return-void

    .line 1756
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$21;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #getter for: Lcom/android/mms/ui/MessageEditableActivityBase;->mOfflinePhones:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$1100(Lcom/android/mms/ui/MessageEditableActivityBase;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1757
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$21;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->switchMsgType()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$600(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    goto :goto_0

    .line 1754
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
