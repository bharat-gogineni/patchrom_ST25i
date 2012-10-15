.class final Lcom/android/mms/transaction/MessagingNotification$3;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$sp:Landroid/content/SharedPreferences;

.field final synthetic val$timeMillis:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/CharSequence;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$sp:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$message:Ljava/lang/CharSequence;

    iput-wide p4, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$timeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$sp:Landroid/content/SharedPreferences;

    #calls: Lcom/android/mms/transaction/MessagingNotification;->playDeliveryReportRingTone(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->access$500(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 571
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$message:Ljava/lang/CharSequence;

    iget-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$timeMillis:J

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 572
    return-void
.end method
