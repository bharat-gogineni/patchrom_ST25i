.class Lcom/android/mms/ui/TimedMessageExpiredActivity$1;
.super Landroid/database/DataSetObserver;
.source "TimedMessageExpiredActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TimedMessageExpiredActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    #getter for: Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->access$000(Lcom/android/mms/ui/TimedMessageExpiredActivity;)Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->finish()V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    #getter for: Lcom/android/mms/ui/TimedMessageExpiredActivity;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->access$100(Lcom/android/mms/ui/TimedMessageExpiredActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    const v2, 0x7f0a01ab

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;->this$0:Lcom/android/mms/ui/TimedMessageExpiredActivity;

    #getter for: Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->access$000(Lcom/android/mms/ui/TimedMessageExpiredActivity;)Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
