.class Lcom/android/mms/ui/ConversationBase$4;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->updateSendFailedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$4;->this$0:Lcom/android/mms/ui/ConversationBase;

    iput-wide p2, p0, Lcom/android/mms/ui/ConversationBase$4;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$4;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationBase$4;->val$threadId:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 505
    return-void
.end method
