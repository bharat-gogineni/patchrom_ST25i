.class Lcom/android/mms/ui/MultipleRecipientsConversationHeader$1;
.super Ljava/lang/Object;
.source "MultipleRecipientsConversationHeader.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->showTitleContactInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$1;->this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/MultipleRecipientsConversationHeader$1;->this$0:Lcom/android/mms/ui/MultipleRecipientsConversationHeader;

    #getter for: Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->mTitleArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleRecipientsConversationHeader;->access$000(Lcom/android/mms/ui/MultipleRecipientsConversationHeader;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 133
    return-void
.end method
