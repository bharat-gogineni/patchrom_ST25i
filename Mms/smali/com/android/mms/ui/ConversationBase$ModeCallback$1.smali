.class Lcom/android/mms/ui/ConversationBase$ModeCallback$1;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase$ModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase$ModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAllowTranscriptOnResize(Z)V

    .line 1750
    return-void
.end method
