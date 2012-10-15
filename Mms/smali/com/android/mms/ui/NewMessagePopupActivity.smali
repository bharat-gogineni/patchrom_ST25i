.class public Lcom/android/mms/ui/NewMessagePopupActivity;
.super Landroid/app/ListActivity;
.source "NewMessagePopupActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;,
        Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;


# instance fields
.field private mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

.field private mBottomPanel:Landroid/view/View;

.field private mButtonDelete:Landroid/widget/ImageView;

.field private mButtonDismiss:Landroid/widget/ImageView;

.field private mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

.field mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMessageList:Landroid/widget/ListView;

.field private mMessageSender:Landroid/widget/TextView;

.field mMessageThreads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;",
            ">;"
        }
    .end annotation
.end field

.field private mPushStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSendButton:Landroid/widget/Button;

.field private mSenderDetails:Landroid/widget/TextView;

.field private mSenderPanel:Landroid/view/View;

.field private mTextCounter:Landroid/widget/TextView;

.field private mTextEditor:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 522
    new-instance v0, Lcom/android/mms/ui/NewMessagePopupActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$8;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mPushStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->deleteMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismissMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->sendMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->gotoConversation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/NewMessagePopupActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/NewMessagePopupActivity;Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsRead(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/NewMessagePopupActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->updateMiMessageStyle(Z)V

    return-void
.end method

.method private addMessage(Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;Ljava/lang/String;)V
    .locals 3
    .parameter "entry"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-direct {p0, p2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findMessageThreadAndRemoveFromList(Ljava/lang/String;)Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    move-result-object v0

    .line 305
    .local v0, messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .end local v0           #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;Lcom/android/mms/ui/NewMessagePopupActivity$1;)V

    .line 307
    .restart local v0       #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    iput-object p2, v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    .line 310
    :cond_0
    iget-object v1, v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    iget-object v1, v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 315
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    if-ne v1, v0, :cond_3

    .line 316
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iput-boolean v2, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    .line 317
    invoke-direct {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThread(Z)V

    .line 322
    :cond_2
    :goto_0
    return-void

    .line 318
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->canSwitchThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iput-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 320
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThread(Z)V

    goto :goto_0
.end method

.method private canSwitchThread()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteMessage()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 422
    new-instance v0, Lcom/android/mms/ui/NewMessagePopupActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$6;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupActivity$6;->start()V

    .line 433
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->proceedToNextThread()V

    .line 434
    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->hideSoftInputMethod(Landroid/app/Activity;)V

    .line 110
    sget-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->finish()V

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    .line 113
    :cond_0
    return-void
.end method

.method private dismissMessage()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 439
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->proceedToNextThread()V

    .line 440
    return-void
.end method

.method private findMessageThreadAndRemoveFromList(Ljava/lang/String;)Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    .locals 3
    .parameter "address"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 330
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 332
    .local v1, messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    iget-object v2, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 337
    .end local v1           #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private gotoConversation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 466
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 467
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/NewMessagePopupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 468
    .local v1, clip:Landroid/content/ClipboardManager;
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const v3, 0x7f0a0199

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 472
    .end local v1           #clip:Landroid/content/ClipboardManager;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v3, v3, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 473
    .local v2, l:Lcom/android/mms/data/ContactList;
    invoke-static {p0, v2, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 474
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 476
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->finish()V

    .line 477
    return-void
.end method

.method private static hideSoftInputMethod(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 116
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 118
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 119
    return-void
.end method

.method private markAsRead(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    .locals 5
    .parameter "thread"

    .prologue
    const/4 v4, 0x1

    .line 409
    iget-boolean v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    if-eqz v3, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iput-boolean v4, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    .line 413
    iget-object v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 414
    .local v1, threadId:J
    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 415
    .local v0, c:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsReadSync()V

    goto :goto_0
.end method

.method private markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V
    .locals 5
    .parameter "thread"

    .prologue
    const/4 v4, 0x1

    .line 397
    iget-boolean v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    if-eqz v3, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iput-boolean v4, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->markedRead:Z

    .line 401
    iget-object v3, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 402
    .local v1, threadId:J
    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 403
    .local v0, c:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsReadAsync()V

    goto :goto_0
.end method

.method private proceedToNextThread()V
    .locals 3

    .prologue
    .line 379
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 382
    .local v1, messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    if-ne v1, v2, :cond_0

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 387
    .end local v1           #messageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    .line 391
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThread(Z)V

    .line 392
    invoke-static {}, Lcom/android/mms/MmsApp;->isPushAvailable()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->updateMiMessageStyle(Z)V

    goto :goto_0
.end method

.method private processCommonMessage(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 285
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 287
    .local v5, msgs:[Landroid/telephony/SmsMessage;
    const-string v1, ""

    .line 288
    .local v1, body:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_0
    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 294
    .local v4, msg:Landroid/telephony/SmsMessage;
    new-instance v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    .line 295
    .local v2, entry:Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    .line 296
    iput-object v1, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->body:Ljava/lang/String;

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->time:J

    .line 299
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->addMessage(Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private processMessage(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 248
    const-string v1, "mxType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, miType:Ljava/lang/String;
    const-string v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->processMiSmsMessage(Landroid/content/Intent;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->processCommonMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private processMiSmsMessage(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 257
    new-instance v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    .line 258
    .local v1, entry:Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    .line 259
    const-string v2, "body"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->body:Ljava/lang/String;

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->time:J

    .line 262
    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->addMessage(Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private sendMessage()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    new-instance v0, Lcom/android/mms/ui/NewMessagePopupActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$7;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupActivity$7;->start()V

    .line 462
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->proceedToNextThread()V

    .line 463
    return-void
.end method

.method private showCurrentThread(Z)V
    .locals 2
    .parameter "cleanReply"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThreadHeader()V

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v1, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewMessagePopupListAdapter;->setMessageList(Ljava/util/ArrayList;)V

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupListAdapter;->notifyDataSetChanged()V

    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    return-void

    .line 348
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCurrentThreadHeader()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 352
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-static {v2, v3, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 353
    .local v0, contact:Lcom/android/mms/data/Contact;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageSender:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    if-nez v1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageSender:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageSender:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    if-nez v1, :cond_3

    .line 369
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMiMessageStyle(Z)V
    .locals 5
    .parameter "pushOn"

    .prologue
    .line 267
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    iget-object v0, v3, Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;->address:Ljava/lang/String;

    .line 268
    .local v0, address:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 269
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getMxPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaomi/mms/data/MxIdCache;->getOrQuery(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;

    move-result-object v2

    .line 271
    .local v2, item:Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/mms/data/MxIdCache$MxIdCacheItem;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const v4, 0x7f0a01c5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 273
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 275
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const v4, 0x7f02014c

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCursorDrawableRes(I)V

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const v4, 0x7f0a01c3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 278
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 280
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    const v4, 0x7f02014d

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCursorDrawableRes(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 507
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 511
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 244
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 245
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 123
    sput-object p0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    .line 125
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 129
    .local v0, window:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040035

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SizeAwareLinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    .line 131
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {v2, p0}, Lcom/android/mms/ui/SizeAwareLinearLayout;->setOnMeasureListener(Lcom/android/mms/ui/SizeAwareLinearLayout$OnMeasureListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mContentView:Lcom/android/mms/ui/SizeAwareLinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->setContentView(Landroid/view/View;)V

    .line 134
    const v2, 0x7f1000a9

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDelete:Landroid/widget/ImageView;

    .line 135
    const v2, 0x7f1000ad

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDismiss:Landroid/widget/ImageView;

    .line 136
    const v2, 0x7f1000aa

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderPanel:Landroid/view/View;

    .line 137
    const v2, 0x7f1000ab

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageSender:Landroid/widget/TextView;

    .line 138
    const v2, 0x7f1000ac

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderDetails:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    .line 140
    const v2, 0x7f100057

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mBottomPanel:Landroid/view/View;

    .line 141
    const v2, 0x7f100062

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    .line 142
    const v2, 0x7f100064

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    .line 143
    const v2, 0x7f100063

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    .line 145
    new-instance v2, Lcom/android/mms/ui/NewMessagePopupListAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/NewMessagePopupListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    .line 146
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDelete:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$1;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mButtonDismiss:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$2;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$3;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSenderPanel:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$4;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/ui/NewMessagePopupActivity$5;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/NewMessagePopupActivity$5;-><init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 189
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 191
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->setFinishOnTouchOutside(Z)V

    .line 193
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 195
    .local v1, wl:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 196
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 197
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 198
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/NewMessagePopupActivity;->processMessage(Landroid/content/Intent;)V

    .line 201
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 202
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.xiaomi.push.channel_opened"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.xiaomi.push.channel_closed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 209
    sget-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    if-ne v0, p0, :cond_0

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/NewMessagePopupActivity;->sInstance:Lcom/android/mms/ui/NewMessagePopupActivity;

    .line 212
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->gotoConversation()V

    .line 239
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->setIntent(Landroid/content/Intent;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessagePopupActivity;->processMessage(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mPushStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 227
    return-void
.end method

.method public onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V
    .locals 9
    .parameter "view"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, -0x1

    const/high16 v7, -0x8000

    .line 481
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v4, p2, p3}, Landroid/view/View;->measure(II)V

    .line 485
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLineCount()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_2

    .line 486
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    const v0, 0x186a0

    .line 495
    .local v0, BIG_HEIGHT:I
    const v4, 0x186a0

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, p2, v4}, Lcom/android/mms/ui/SizeAwareLinearLayout;->measure(II)V

    .line 496
    invoke-virtual {p1}, Lcom/android/mms/ui/SizeAwareLinearLayout;->getMeasuredHeight()I

    move-result v3

    .line 497
    .local v3, totalHeight:I
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v1

    .line 499
    .local v1, listHeight:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 500
    .local v2, maxHeight:I
    if-lt v3, v2, :cond_0

    .line 501
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mMessageList:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v6, v3, v2

    sub-int v6, v1, v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 488
    .end local v0           #BIG_HEIGHT:I
    .end local v1           #listHeight:I
    .end local v2           #maxHeight:I
    .end local v3           #totalHeight:I
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 217
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mAdapter:Lcom/android/mms/ui/NewMessagePopupListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessagePopupListAdapter;->notifyDataSetChanged()V

    .line 218
    invoke-static {}, Lcom/android/mms/MmsApp;->isPushAvailable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->updateMiMessageStyle(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mPushStatusReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/NewMessagePopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessagePopupActivity;->showCurrentThreadHeader()V

    .line 221
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mSendButton:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getMessageStats(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupActivity;->mCurrentMessageThread:Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessagePopupActivity;->markAsReadAsync(Lcom/android/mms/ui/NewMessagePopupActivity$MessageThread;)V

    .line 520
    :cond_0
    return-void

    .line 515
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
