.class Lcom/android/mms/ui/ConversationBase$2;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$2;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 350
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 353
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$2;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->hideSoftKeyboard()V

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$2;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->disableAttachmentPanel()V

    .line 357
    :cond_0
    return-void
.end method
