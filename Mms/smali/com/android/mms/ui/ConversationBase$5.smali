.class Lcom/android/mms/ui/ConversationBase$5;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$5;->this$0:Lcom/android/mms/ui/ConversationBase;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationBase$5;->val$listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;

    iput-object p3, p0, Lcom/android/mms/ui/ConversationBase$5;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$5;->val$listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$5;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->setDeleteLockedMessage(Z)V

    .line 713
    return-void
.end method
