.class Lcom/android/mms/ui/MessageListItem$6$1;
.super Ljava/lang/Thread;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$6;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$6;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$6$1;->this$1:Lcom/android/mms/ui/MessageListItem$6;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$6$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "thread_id=? AND date=? AND type=5"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$6$1;->this$1:Lcom/android/mms/ui/MessageListItem$6;

    iget-wide v5, v5, Lcom/android/mms/ui/MessageListItem$6;->val$thread_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MessageListItem$6$1;->this$1:Lcom/android/mms/ui/MessageListItem$6;

    iget-wide v5, v5, Lcom/android/mms/ui/MessageListItem$6;->val$date:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    return-void
.end method
