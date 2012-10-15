.class Lcom/android/mms/ui/ConversationBase$7;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->batchLockMessages(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;

.field final synthetic val$mmsSelectionBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$smsSelectionBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;Ljava/lang/StringBuilder;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationBase$7;->val$smsSelectionBuilder:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/android/mms/ui/ConversationBase$7;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/mms/ui/ConversationBase$7;->val$mmsSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 813
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$7;->val$smsSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$7;->val$values:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase$7;->val$smsSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$7;->val$mmsSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$7;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$7;->val$values:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase$7;->val$mmsSelectionBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 821
    :cond_1
    return-void
.end method
