.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"

# interfaces
.implements Lcom/android/mms/util/EditableListView$EditableListIdMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field static final GROUP_MSG_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCheckedIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mConversationThreadId:J

.field private mDeliverReportMode:I

.field private mGroupByTime:Z

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsCheckMode:Z

.field private mIsGroup:Z

.field private mIsReadOnly:Z

.field private mItemStyle:Ljava/lang/String;

.field private final mMessageItemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mx_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "date_ms_part"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mx_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "need_download"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mx_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "date_ms_part"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mx_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "need_download"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->GROUP_MSG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    const/4 v6, 0x0

    .line 202
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;ZZJ)V

    .line 203
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v6}, Lcom/android/mms/ui/MessageListAdapter;->initLayoutStyle(Ljava/lang/String;ZI)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;ZZJ)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "isGroup"
    .parameter "isReadOnly"
    .parameter "threadId"

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 196
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    .line 197
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    .line 211
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 212
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 214
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 217
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    .line 219
    if-eqz p4, :cond_0

    .line 220
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 225
    :goto_0
    iput-boolean p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroup:Z

    .line 226
    iput-boolean p7, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsReadOnly:Z

    .line 227
    iput-wide p8, p0, Lcom/android/mms/ui/MessageListAdapter;->mConversationThreadId:J

    .line 229
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 239
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private adjustCursorStartPosition(Landroid/database/Cursor;I)V
    .locals 5
    .parameter "cursor"
    .parameter "newPosition"

    .prologue
    .line 324
    if-gez p2, :cond_0

    .line 325
    const/4 p2, 0x0

    .line 328
    :cond_0
    instance-of v4, p1, Landroid/database/CursorWrapper;

    if-nez v4, :cond_2

    .line 351
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 331
    .restart local p1
    :cond_2
    check-cast p1, Landroid/database/CursorWrapper;

    .end local p1
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 333
    .local v1, c:Landroid/database/Cursor;
    instance-of v4, v1, Landroid/database/AbstractWindowedCursor;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 336
    check-cast v0, Landroid/database/AbstractWindowedCursor;

    .line 338
    .local v0, awc:Landroid/database/AbstractWindowedCursor;
    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 339
    .local v2, cw:Landroid/database/CursorWindow;
    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    .line 344
    .local v3, startPosition:I
    if-ge p2, v3, :cond_1

    .line 345
    add-int/lit16 v3, p2, -0x3e8

    .line 346
    if-gez v3, :cond_3

    .line 347
    const/4 v3, 0x0

    .line 349
    :cond_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method private createCachedMessageItem(Ljava/lang/String;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 12
    .parameter "type"
    .parameter "c"

    .prologue
    .line 248
    const/4 v11, 0x0

    .line 249
    .local v11, item:Lcom/android/mms/ui/MessageItem;
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroup:Z

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsReadOnly:Z

    iget-wide v8, p0, Lcom/android/mms/ui/MessageListAdapter;->mConversationThreadId:J

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZJ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v11           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :goto_0
    return-object v0

    .line 252
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v11       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v10

    .line 253
    .local v10, e:Lcom/google/android/mms/MmsException;
    const-string v1, "MessageListAdapter"

    const-string v2, "createCachedMessageItem :"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v10           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    move-object v0, v11

    .end local v11           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 274
    .local v0, msgId:J
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    return-object v3
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 459
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    neg-long p1, p1

    .line 462
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 452
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, checked:Z
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    if-eqz v6, :cond_0

    .line 391
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 392
    .local v1, id:J
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, type:Ljava/lang/String;
    invoke-static {v5, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v3

    .line 394
    .local v3, key:J
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 396
    .end local v1           #id:J
    .end local v3           #key:J
    .end local v5           #type:Ljava/lang/String;
    :cond_0
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    invoke-virtual {p1, v6, v7, v0}, Lcom/android/mms/ui/MessageListItem;->rebind(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 397
    return-void
.end method

.method public enterCheckMode()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    .line 468
    return-void
.end method

.method public exitCheckMode()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCheckMode:Z

    .line 472
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    .line 473
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 5
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 261
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0, p1, p4}, Lcom/android/mms/ui/MessageListAdapter;->createCachedMessageItem(Ljava/lang/String;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 268
    :goto_0
    return-object v1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 268
    goto :goto_0
.end method

.method public getCheckedItems(Ljava/util/HashSet;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 281
    .local v3, position:I
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 282
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #position:I
    :cond_0
    return-object v2
.end method

.method public getItemViewType(I)I
    .locals 8
    .parameter "position"

    .prologue
    .line 355
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->adjustCursorStartPosition(Landroid/database/Cursor;I)V

    .line 356
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 357
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 358
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, prevMsgItem:Lcom/android/mms/ui/MessageItem;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 362
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 364
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMiXin()Z

    move-result v2

    .line 365
    .local v2, showMxType:Z
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-nez v4, :cond_4

    const/4 v3, 0x1

    .line 366
    .local v3, showTimeStamp:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 367
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 368
    :cond_1
    const/4 v3, 0x1

    .line 370
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMiXin()Z

    move-result v4

    xor-int/2addr v2, v4

    .line 377
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mItemStyle:Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeliverReportMode:I

    invoke-virtual {v0, v4, v3, v5, v2}, Lcom/android/mms/ui/MessageItem;->initLayoutStyle(Ljava/lang/String;ZIZ)V

    .line 379
    .end local v1           #prevMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #showMxType:Z
    .end local v3           #showTimeStamp:Z
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v4

    return v4

    .line 365
    .restart local v1       #prevMsgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v2       #showMxType:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 373
    .restart local v3       #showTimeStamp:Z
    :cond_5
    const/4 v3, 0x1

    .line 374
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x6

    return v0
.end method

.method public initLayoutStyle(Ljava/lang/String;ZI)V
    .locals 0
    .parameter "itemStyle"
    .parameter "groupByTime"
    .parameter "deliverReportMode"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mItemStyle:Ljava/lang/String;

    .line 243
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    .line 244
    iput p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeliverReportMode:I

    .line 245
    return-void
.end method

.method public mapPositionToId(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 291
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 294
    .local v1, msgId:J
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    return-wide v4
.end method

.method public needShowMxType(Landroid/database/Cursor;I)Z
    .locals 5
    .parameter "nCursor"
    .parameter "position"

    .prologue
    .line 312
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 313
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 314
    .local v1, oldItem:Lcom/android/mms/ui/MessageItem;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, type:Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/MessageListAdapter;->createCachedMessageItem(Ljava/lang/String;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 316
    .local v0, newItem:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isMiXin()Z

    move-result v2

    .line 317
    .local v2, showMxType:Z
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMiXin()Z

    move-result v4

    xor-int/2addr v2, v4

    .line 318
    return v2
.end method

.method public needShowTimeStamp(Landroid/database/Cursor;I)Z
    .locals 8
    .parameter "nCursor"
    .parameter "position"

    .prologue
    .line 299
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 300
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 301
    .local v1, oldItem:Lcom/android/mms/ui/MessageItem;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, type:Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/MessageListAdapter;->createCachedMessageItem(Ljava/lang/String;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 303
    .local v0, newItem:Lcom/android/mms/ui/MessageItem;
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 304
    .local v2, showTimeStamp:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 305
    :cond_0
    const/4 v2, 0x1

    .line 307
    :cond_1
    return v2

    .line 303
    .end local v2           #showTimeStamp:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 401
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 403
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002b

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 408
    .local v0, mli:Lcom/android/mms/ui/MessageListItem;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V

    .line 409
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 410
    return-object v0

    .line 406
    .end local v0           #mli:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002a

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .restart local v0       #mli:Lcom/android/mms/ui/MessageListItem;
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 431
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 439
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 448
    :cond_0
    return-void
.end method

.method public setCheckedItem(Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 477
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedIds:Ljava/util/HashSet;

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 424
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 420
    return-void
.end method
