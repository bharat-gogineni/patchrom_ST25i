.class Lcom/android/mms/ui/MessageListItem$6;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindGroupMessageCancelButton(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$date:J

.field final synthetic val$thread_id:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-wide p2, p0, Lcom/android/mms/ui/MessageListItem$6;->val$thread_id:J

    iput-wide p4, p0, Lcom/android/mms/ui/MessageListItem$6;->val$date:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 568
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/mms/ui/MessageListItem$6$1;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/MessageListItem$6$1;-><init>(Lcom/android/mms/ui/MessageListItem$6;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$6$1;->start()V

    .line 578
    return-void
.end method
