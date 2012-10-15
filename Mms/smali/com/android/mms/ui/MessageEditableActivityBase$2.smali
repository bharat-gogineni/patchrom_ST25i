.class Lcom/android/mms/ui/MessageEditableActivityBase$2;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V
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
    .line 329
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$2;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 332
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$2;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$2;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->sendMessage()V

    .line 342
    :goto_0
    return v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$2;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v2, 0x7f0a005a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
