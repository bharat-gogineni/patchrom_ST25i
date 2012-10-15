.class public Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ExpiredTimedMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field private static TIMED_MMS_URI:Landroid/net/Uri;

.field private static TIMED_SMS_URI:Landroid/net/Uri;


# instance fields
.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;

.field private mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 108
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->TIMED_SMS_URI:Landroid/net/Uri;

    .line 109
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->TIMED_MMS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;

    .line 66
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    new-instance v0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$1;-><init>(Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 77
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->TIMED_SMS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->TIMED_MMS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 215
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    neg-long p1, p1

    .line 218
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 113
    instance-of v10, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v10, :cond_3

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object v10, p1

    .line 115
    check-cast v10, Lcom/android/mms/ui/MessageListItem;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v11, v12}, Lcom/android/mms/ui/MessageListItem;->rebind(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 117
    const v10, 0x7f100036

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 118
    .local v6, recipientView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v2, header:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const v10, 0x7f0a01ad

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v10

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 124
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 125
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    const/4 v4, 0x3

    .line 126
    .local v4, maxRecipients:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    if-ge v3, v4, :cond_1

    .line 127
    if-eqz v3, :cond_0

    .line 128
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    invoke-virtual {v7, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    if-le v10, v4, :cond_2

    .line 133
    const v10, 0x7f0a01ae

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-eqz v10, :cond_4

    const v10, 0x7f100037

    :goto_1
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 138
    .local v9, sendButton2:Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x7f100038

    :goto_2
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 140
    .local v8, sendButton:Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 141
    new-instance v10, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$2;

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v5, v0}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$2;-><init>(Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v2           #header:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #maxRecipients:I
    .end local v5           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v6           #recipientView:Landroid/widget/TextView;
    .end local v7           #recipients:Lcom/android/mms/data/ContactList;
    .end local v8           #sendButton:Landroid/view/View;
    .end local v9           #sendButton2:Landroid/view/View;
    :cond_3
    return-void

    .line 137
    .restart local v1       #conv:Lcom/android/mms/data/Conversation;
    .restart local v2       #header:Ljava/lang/StringBuilder;
    .restart local v3       #i:I
    .restart local v4       #maxRecipients:I
    .restart local v5       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v6       #recipientView:Landroid/widget/TextView;
    .restart local v7       #recipients:Lcom/android/mms/data/ContactList;
    :cond_4
    const v10, 0x7f100038

    goto :goto_1

    .line 139
    .restart local v9       #sendButton2:Landroid/view/View;
    :cond_5
    const v10, 0x7f100037

    goto :goto_2
.end method

.method public getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 4
    .parameter "c"

    .prologue
    .line 186
    iget-object v3, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 189
    .local v0, msgId:J
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    return-object v3
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 193
    iget-object v1, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MessageItem;

    .line 194
    .local v8, item:Lcom/android/mms/ui/MessageItem;
    if-nez v8, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, v0

    .line 203
    :goto_1
    return-object v1

    .line 198
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v7

    move-object v0, v8

    .line 199
    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v7, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v2, "ExpiredTimedMessageListAdapter"

    invoke-virtual {v7}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Caught MmsException"

    :goto_3
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 200
    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 198
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v8       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v8

    .end local v8           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public load()V
    .locals 9

    .prologue
    const/16 v1, 0x3e9

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;->cancelOperation(I)V

    .line 83
    :try_start_0
    sget-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_EXPIRED_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsApp;->getStartupTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 86
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v8

    .line 89
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 101
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 102
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    iget-object v2, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 103
    .local v0, mli:Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V

    .line 104
    iget-object v2, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 105
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 97
    return-void
.end method
