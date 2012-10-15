.class final Lcom/android/mms/transaction/MessagingNotification$2;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$messageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$messageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$messageUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->access$100(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v0

    .line 192
    .local v0, delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 195
    :cond_0
    return-void
.end method
