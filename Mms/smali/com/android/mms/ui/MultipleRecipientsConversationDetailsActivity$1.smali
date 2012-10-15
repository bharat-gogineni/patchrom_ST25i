.class Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity$1;
.super Ljava/lang/Object;
.source "MultipleRecipientsConversationDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;->initMessageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity$1;->this$0:Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    .line 65
    check-cast p2, Lcom/android/mms/ui/MessageListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 67
    :cond_0
    return-void
.end method
