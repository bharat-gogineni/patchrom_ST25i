.class Lcom/android/mms/ui/MmsTabActivity$2;
.super Ljava/lang/Object;
.source "MmsTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsTabActivity;->askUploadOldMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsTabActivity;

.field final synthetic val$currentAccount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsTabActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity$2;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsTabActivity$2;->val$currentAccount:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$2;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mms_upload_old_msg_state"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$2;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mms_upload_old_msg_accounts"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity$2;->val$currentAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "bind_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$2;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account is not null and account != ?"

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/MmsTabActivity$2;->val$currentAccount:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$2;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account is not null and account != ?"

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/MmsTabActivity$2;->val$currentAccount:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$2;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->forceSync(Landroid/content/Context;)V

    .line 187
    return-void
.end method
