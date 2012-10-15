.class Lcom/android/mms/ui/MessageListItem$15;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$record:Lcom/android/mms/model/ContactMessage$ContactRecord;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$15;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$15;->val$record:Lcom/android/mms/model/ContactMessage$ContactRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$15;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$15;->val$record:Lcom/android/mms/model/ContactMessage$ContactRecord;

    #calls: Lcom/android/mms/ui/MessageListItem;->previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageListItem;->access$1300(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    .line 1115
    return-void
.end method
