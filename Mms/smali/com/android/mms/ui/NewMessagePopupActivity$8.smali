.class Lcom/android/mms/ui/NewMessagePopupActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "NewMessagePopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessagePopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessagePopupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$8;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.xiaomi.push.channel_opened"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$8;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/NewMessagePopupActivity;->updateMiMessageStyle(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$700(Lcom/android/mms/ui/NewMessagePopupActivity;Z)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const-string v1, "com.xiaomi.push.channel_closed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$8;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/NewMessagePopupActivity;->updateMiMessageStyle(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->access$700(Lcom/android/mms/ui/NewMessagePopupActivity;Z)V

    goto :goto_0
.end method
