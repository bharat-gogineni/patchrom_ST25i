.class Lcom/android/mms/ui/NewMessageActivity$16;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->onMessageSent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1136
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/NewMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1138
    .local v0, convInCache:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->update()V

    .line 1139
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/NewMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 1141
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "new_message_count"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1142
    const-string v2, "was_soft_keyboard_on"

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-boolean v3, v3, Lcom/android/mms/ui/NewMessageActivity;->mIsSoftInputEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1144
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-static {v2, v1}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1145
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/NewMessageActivity;->finish()V

    .line 1146
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    const/high16 v3, 0x10a

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/NewMessageActivity;->overridePendingTransition(II)V

    .line 1147
    return-void
.end method
