.class Lcom/android/mms/ui/ConversationFragment$1;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$1;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$1;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #calls: Lcom/android/mms/ui/ConversationFragment;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationFragment;->access$100(Lcom/android/mms/ui/ConversationFragment;)V

    .line 126
    return-void
.end method
