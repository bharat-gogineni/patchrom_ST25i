.class final Lcom/android/mms/transaction/MessagingNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isNew:Z

.field final synthetic val$isStatusMessage:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$isNew:Z

    iput-boolean p3, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$isStatusMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$isNew:Z

    iget-boolean v2, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$isStatusMessage:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 169
    return-void
.end method
