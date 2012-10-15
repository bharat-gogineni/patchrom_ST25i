.class final Lcom/android/mms/ui/ConversationFragment$4;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$4;->val$listener:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationFragment$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$4;->val$listener:Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 344
    return-void
.end method
