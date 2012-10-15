.class Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BookmarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedMessage"
.end annotation


# instance fields
.field private mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

.field private mEditNewPhraseDialog:Landroid/app/AlertDialog;

.field private mEditNewPhraseView:Landroid/widget/TextView;

.field private mIsPhrase:Z

.field private mNewPhrase:Z

.field private mPhraseForForward:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/BookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BookmarkFragment;Z)V
    .locals 1
    .parameter
    .parameter "isPickerMode"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    .line 248
    if-nez p2, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->buildEditNewPhraseDialog()V

    .line 251
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Landroid/util/Pair;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mNewPhrase:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mNewPhrase:Z

    return p1
.end method

.method private buildEditNewPhraseDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040038

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseView:Landroid/widget/TextView;

    .line 389
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 391
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 392
    const v1, 0x7f0a00e4

    new-instance v2, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$2;-><init>(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    const v1, 0x7f0a0078

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseDialog:Landroid/app/AlertDialog;

    .line 418
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    .prologue
    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0a015c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 332
    iget-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0a015d

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 334
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 336
    iget-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a00a5

    :goto_2
    new-instance v2, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage$1;-><init>(Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    const v1, 0x7f0a0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    return-void

    .line 330
    :cond_0
    const v1, 0x7f0a0154

    goto :goto_0

    .line 332
    :cond_1
    const v1, 0x7f0a0156

    goto :goto_1

    .line 336
    :cond_2
    const v1, 0x7f0a0077

    goto :goto_2
.end method

.method public edit()V
    .locals 4

    .prologue
    .line 352
    iget-boolean v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v2, :cond_0

    .line 355
    iget-boolean v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mNewPhrase:Z

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 357
    .local v0, text:Ljava/lang/String;
    const v1, 0x7f0a0159

    .line 363
    .local v1, titleId:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mEditNewPhraseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 369
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #titleId:I
    :cond_0
    return-void

    .line 359
    :cond_1
    const/4 v0, 0x0

    .line 360
    .restart local v0       #text:Ljava/lang/String;
    const v1, 0x7f0a0158

    .restart local v1       #titleId:I
    goto :goto_0
.end method

.method public forwardMessage()V
    .locals 3

    .prologue
    .line 318
    iget-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v1, :cond_0

    .line 319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "forwarded_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BookmarkFragment;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->forwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 281
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isMms()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    goto :goto_0
.end method

.method public returnPickerResult()V
    .locals 3

    .prologue
    .line 373
    iget-boolean v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 379
    .local v0, body:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #body:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mPickerMode:Z
    invoke-static {v2}, Lcom/android/mms/ui/BookmarkFragment;->access$500(Lcom/android/mms/ui/BookmarkFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/PickerActivity;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/PickerActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 384
    :cond_1
    return-void

    .line 376
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #body:Ljava/lang/String;
    goto :goto_0
.end method

.method public saveToIcc()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 297
    iget-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, address:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    .line 302
    .local v4, time:J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v13, :cond_1

    .line 303
    new-instance v0, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;-><init>(Lcom/android/mms/ui/BookmarkFragment;)V

    .line 304
    .local v0, dpg:Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;

    move-result-object v12

    .line 305
    .local v12, dp:Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v6, v12, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedScAddress:[B

    iget-object v7, v12, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedMessage:[B

    invoke-virtual {v1, v6, v7, v13}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    .line 315
    .end local v0           #dpg:Lcom/android/mms/ui/BookmarkFragment$GSMDeliveryPduGenerator;
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #time:J
    .end local v12           #dp:Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    :cond_0
    :goto_0
    return-void

    .line 307
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #message:Ljava/lang/String;
    .restart local v4       #time:J
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 308
    new-instance v0, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;-><init>(Lcom/android/mms/ui/BookmarkFragment;)V

    .line 309
    .local v0, dpg:Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;
    const/4 v9, 0x0

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/BookmarkFragment$CDMADeliveryPduGenerator;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;ZJ)Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;

    move-result-object v12

    .line 310
    .restart local v12       #dp:Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v6, v12, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedScAddress:[B

    iget-object v7, v12, Lcom/android/mms/ui/BookmarkFragment$DeliveryPdu;->encodedMessage:[B

    invoke-virtual {v1, v6, v7, v13}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    goto :goto_0
.end method

.method public selectBookmark(Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "messageItem"

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    .line 255
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    .line 256
    return-void
.end method

.method public selectPhrase(ILjava/lang/String;)V
    .locals 2
    .parameter "position"
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    .line 260
    if-nez p2, :cond_0

    .line 261
    iput-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mNewPhrase:Z

    .line 266
    :goto_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mPhraseForForward:Landroid/util/Pair;

    .line 267
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mNewPhrase:Z

    goto :goto_0
.end method

.method public viewOrigin()V
    .locals 4

    .prologue
    .line 286
    iget-boolean v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mIsPhrase:Z

    if-eqz v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 291
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v1, "select_id"

    iget-object v2, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->mBookmarkForForward:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkFragment$SelectedMessage;->this$0:Lcom/android/mms/ui/BookmarkFragment;

    #getter for: Lcom/android/mms/ui/BookmarkFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BookmarkFragment;->access$000(Lcom/android/mms/ui/BookmarkFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
