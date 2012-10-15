.class public Lcom/android/mms/ui/TimedMessageExpiredActivity;
.super Landroid/app/ListActivity;
.source "TimedMessageExpiredActivity.java"


# static fields
.field private static TIMED_SMS_URI:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

.field private mHomeKeyExpiredMsgReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->TIMED_SMS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 103
    new-instance v0, Lcom/android/mms/ui/TimedMessageExpiredActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity$3;-><init>(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mHomeKeyExpiredMsgReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/TimedMessageExpiredActivity;)Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/TimedMessageExpiredActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->markExpiredMsgAsFailed()V

    return-void
.end method

.method private markExpiredMsgAsFailed()V
    .locals 13

    .prologue
    .line 121
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 126
    .local v9, time:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 128
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    .line 131
    .local v8, item:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 133
    const-string v0, "date_full"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v0, "timed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "msg_box"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 142
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 150
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 151
    const-string v0, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v0, "timed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/TimedMessageExpiredActivity;->TIMED_SMS_URI:Landroid/net/Uri;

    const-string v4, "timed > 0 AND date < ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getStartupTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public static raiseIfNecessary(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 47
    sget-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_EXPIRED_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsApp;->getStartupTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/TimedMessageExpiredActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v4, 0x7f04004f

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->setContentView(I)V

    .line 67
    new-instance v4, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    .line 68
    const v4, 0x7f1000d6

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mTitleView:Landroid/widget/TextView;

    .line 69
    iget-object v4, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v4, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->load()V

    .line 71
    iget-object v4, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mAdapter:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    new-instance v5, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity$1;-><init>(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 82
    const v4, 0x7f1000d7

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, close:Landroid/view/View;
    new-instance v4, Lcom/android/mms/ui/TimedMessageExpiredActivity$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity$2;-><init>(Lcom/android/mms/ui/TimedMessageExpiredActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 92
    .local v2, window:Landroid/view/Window;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 93
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 95
    .local v3, wl:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 96
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 98
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/mms/ui/TimedMessageExpiredActivity;->mHomeKeyExpiredMsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/mms/ui/TimedMessageExpiredActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method
