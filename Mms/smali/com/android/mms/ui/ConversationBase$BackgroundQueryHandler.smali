.class public final Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationBase;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    .line 1293
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1294
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$210(Lcom/android/mms/ui/ConversationBase;)I

    .line 1316
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$200(Lcom/android/mms/ui/ConversationBase;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1317
    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$300()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1318
    invoke-static {}, Lcom/android/mms/ui/ConversationBase;->access$300()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1319
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$302(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1322
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1298
    if-nez p3, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1300
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1302
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mIsStopped:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$1100(Lcom/android/mms/ui/ConversationBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->requestChangeCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/ConversationBase;->access$1200(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1300
    nop

    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
    .end packed-switch
.end method
