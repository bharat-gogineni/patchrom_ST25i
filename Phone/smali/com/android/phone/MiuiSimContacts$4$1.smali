.class Lcom/android/phone/MiuiSimContacts$4$1;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Lcom/android/phone/MiuiSimContactService$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiSimContacts$4;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts$4;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContacts;->finish()V

    .line 308
    return-void
.end method

.method public onFinished(Lcom/android/phone/MiuiSimContacts$SimContactOP;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 284
    :cond_0
    const/4 v1, 0x0

    .line 285
    .local v1, toastMsgId:I
    sget-object v2, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p1, v2, :cond_2

    .line 286
    const v1, 0x7f0c0328

    .line 290
    :cond_1
    :goto_0
    move v0, v1

    .line 291
    .local v0, fToastMsgId:I
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    new-instance v3, Lcom/android/phone/MiuiSimContacts$4$1$2;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/MiuiSimContacts$4$1$2;-><init>(Lcom/android/phone/MiuiSimContacts$4$1;I)V

    invoke-virtual {v2, v3}, Lcom/android/phone/MiuiSimContacts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v2, v2, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    invoke-virtual {v2}, Lcom/android/phone/MiuiSimContacts;->finish()V

    .line 300
    return-void

    .line 287
    .end local v0           #fToastMsgId:I
    :cond_2
    sget-object v2, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p1, v2, :cond_1

    .line 288
    const v1, 0x7f0c0329

    goto :goto_0
.end method

.method public onProgress(IIILcom/android/phone/MiuiSimContacts$SimContactOP;)V
    .locals 9
    .parameter "totalCount"
    .parameter "max"
    .parameter "count"
    .parameter "op"

    .prologue
    .line 256
    const/4 v7, 0x0

    .local v7, titleId:I
    const/4 v6, 0x0

    .line 257
    .local v6, messageId:I
    sget-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p4, v0, :cond_2

    .line 258
    if-ne p2, p1, :cond_1

    .line 259
    const v7, 0x7f0c0327

    .line 263
    :goto_0
    const v6, 0x7f0c0325

    .line 268
    :cond_0
    :goto_1
    move v2, v7

    .local v2, fTitleId:I
    move v3, v6

    .line 269
    .local v3, fMessageId:I
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$4$1;->this$1:Lcom/android/phone/MiuiSimContacts$4;

    iget-object v8, v0, Lcom/android/phone/MiuiSimContacts$4;->this$0:Lcom/android/phone/MiuiSimContacts;

    new-instance v0, Lcom/android/phone/MiuiSimContacts$4$1$1;

    move-object v1, p0

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiSimContacts$4$1$1;-><init>(Lcom/android/phone/MiuiSimContacts$4$1;IIII)V

    invoke-virtual {v8, v0}, Lcom/android/phone/MiuiSimContacts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void

    .line 261
    .end local v2           #fTitleId:I
    .end local v3           #fMessageId:I
    :cond_1
    const v7, 0x7f0c0326

    goto :goto_0

    .line 264
    :cond_2
    sget-object v0, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne p4, v0, :cond_0

    .line 265
    const v7, 0x7f0c03a9

    .line 266
    const v6, 0x7f0c03a8

    goto :goto_1
.end method
