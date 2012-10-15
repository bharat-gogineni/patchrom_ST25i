.class public Lcom/android/mms/ui/SimplePduDoc;
.super Ljava/lang/Object;
.source "SimplePduDoc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SimplePduDoc$SlideHandler;
    }
.end annotation


# static fields
.field private static final PART_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCidParts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mCompleteSize:Ljava/lang/Integer;

.field private mContentLocation:[B

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDate:Ljava/lang/Long;

.field private mDocPart:Lcom/android/mms/ui/SimplePduPart;

.field private mDocType:I

.field private mExpiry:Ljava/lang/Integer;

.field private mFrom:Lcom/google/android/mms/pdu/EncodedStringValue;

.field private mId:J

.field private mIsSlideShow:Z

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPage;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:Ljava/lang/Integer;

.field private mSrcParts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "chset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SimplePduDoc;->PART_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mDocType:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mIsSlideShow:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mSrcParts:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mCidParts:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduDoc;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mContentResolver:Landroid/content/ContentResolver;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SimplePduDoc;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mCidParts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SimplePduDoc;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mSrcParts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SimplePduDoc;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadAddress()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/SimplePduDoc;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/mms/ui/SimplePduDoc;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v10

    const-string v5, "charset"

    aput-object v5, v3, v11

    const-string v5, "type"

    aput-object v5, v3, v12

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 128
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 130
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, addr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 134
    .local v8, addrType:I
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_2
    return-void

    .line 134
    :pswitch_data_0
    .packed-switch 0x89
        :pswitch_0
    .end packed-switch
.end method

.method private loadAttachments()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 409
    iget-object v3, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 410
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    .line 411
    iget-object v3, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/SimplePduDoc;->loadAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 412
    .local v0, isSlide:Z
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/SimplePduDoc;->mIsSlideShow:Z

    .line 415
    .end local v0           #isSlide:Z
    :goto_0
    return v2

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method private loadAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPage;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimplePduPage;>;"
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimplePduPart;>;"
    const/4 v8, 0x1

    .line 425
    const/4 v6, 0x0

    .line 426
    .local v6, textCount:I
    const/4 v3, 0x0

    .line 427
    .local v3, mediaCount:I
    const/4 v4, 0x0

    .line 428
    .local v4, page:Lcom/android/mms/ui/SimplePduPage;
    const/4 v1, 0x0

    .line 429
    .local v1, hasText:Z
    const/4 v0, 0x0

    .line 430
    .local v0, hasMedia:Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/SimplePduPart;

    .line 431
    .local v5, part:Lcom/android/mms/ui/SimplePduPart;
    if-eqz v4, :cond_1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 432
    :cond_1
    new-instance v4, Lcom/android/mms/ui/SimplePduPage;

    .end local v4           #page:Lcom/android/mms/ui/SimplePduPage;
    invoke-direct {v4}, Lcom/android/mms/ui/SimplePduPage;-><init>()V

    .line 433
    .restart local v4       #page:Lcom/android/mms/ui/SimplePduPage;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const/4 v1, 0x0

    .line 435
    const/4 v0, 0x0

    .line 437
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v7

    .line 439
    .local v7, type:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 440
    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduPage;->addPart(Lcom/android/mms/ui/SimplePduPart;)V

    .line 441
    if-nez v7, :cond_3

    .line 442
    const/4 v1, 0x1

    .line 443
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 445
    :cond_3
    const/4 v0, 0x1

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v5           #part:Lcom/android/mms/ui/SimplePduPart;
    .end local v7           #type:I
    :cond_4
    if-gt v6, v8, :cond_5

    if-le v3, v8, :cond_6

    :cond_5
    :goto_1
    return v8

    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private loadByteArray(Landroid/database/Cursor;I)[B
    .locals 2
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 603
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 605
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 607
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadInt(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 2
    .parameter "c"
    .parameter "column"

    .prologue
    .line 596
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 598
    :goto_0
    return-object v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadParts()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SimplePduDoc;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/SimplePduDoc;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/SimplePduDoc;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 154
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 271
    :cond_0
    if-eqz v11, :cond_1

    .line 272
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mSrcParts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mCidParts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 160
    :cond_3
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 161
    new-instance v22, Lcom/android/mms/ui/SimplePduPart;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/android/mms/ui/SimplePduPart;-><init>(Landroid/content/Context;)V

    .line 162
    .local v22, part:Lcom/android/mms/ui/SimplePduPart;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/SimplePduDoc;->loadInt(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v12

    .line 164
    .local v12, charset:Ljava/lang/Integer;
    if-eqz v12, :cond_4

    .line 165
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setCharset(I)V

    .line 168
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/SimplePduDoc;->loadByteArray(Landroid/database/Cursor;I)[B

    move-result-object v14

    .line 170
    .local v14, contentDisposition:[B
    if-eqz v14, :cond_5

    .line 171
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/SimplePduPart;->setContentDisposition([B)V

    .line 174
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/SimplePduDoc;->loadByteArray(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 176
    .local v15, contentId:[B
    if-eqz v15, :cond_6

    .line 177
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/mms/ui/SimplePduPart;->setContentId([B)V

    .line 180
    :cond_6
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/SimplePduDoc;->loadByteArray(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 182
    .local v16, contentLocation:[B
    if-eqz v16, :cond_7

    .line 183
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimplePduPart;->setContentLocation([B)V

    .line 186
    :cond_7
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/SimplePduDoc;->loadByteArray(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 188
    .local v17, contentType:[B
    if-nez v17, :cond_10

    const/16 v26, 0x0

    .line 189
    .local v26, type:Ljava/lang/String;
    :goto_2
    if-eqz v17, :cond_1a

    .line 190
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimplePduPart;->setContentType([B)V

    .line 191
    const-string v2, "application/smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 192
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SimplePduDoc;->mDocPart:Lcom/android/mms/ui/SimplePduPart;

    .line 193
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mDocType:I

    .line 229
    :cond_8
    :goto_3
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/SimplePduDoc;->loadByteArray(Landroid/database/Cursor;I)[B

    move-result-object v20

    .line 231
    .local v20, fileName:[B
    if-eqz v20, :cond_9

    .line 232
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimplePduPart;->setFilename([B)V

    .line 235
    :cond_9
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/SimplePduDoc;->loadByteArray(Landroid/database/Cursor;I)[B

    move-result-object v21

    .line 237
    .local v21, name:[B
    if-eqz v21, :cond_a

    .line 238
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimplePduPart;->setName([B)V

    .line 241
    :cond_a
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 242
    .local v23, partId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setDataUri(Landroid/net/Uri;)V

    .line 244
    const-string v2, "text/plain"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "application/smil"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "text/html"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 246
    :cond_b
    const/16 v2, 0x8

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 247
    .local v25, text:Ljava/lang/String;
    if-eqz v25, :cond_c

    .line 248
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 249
    .local v10, blob:[B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v9, v10, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 251
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setData([B)V

    .line 255
    .end local v9           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v10           #blob:[B
    .end local v25           #text:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 257
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SimplePduPart;->getContentLocation()[B

    move-result-object v2

    if-eqz v2, :cond_d

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mSrcParts:Ljava/util/Map;

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SimplePduPart;->getContentLocation()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SimplePduPart;->getContentId()[B

    move-result-object v2

    if-eqz v2, :cond_e

    .line 261
    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SimplePduPart;->getContentId()[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 262
    .local v13, cid:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_e

    .line 263
    const/4 v2, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mCidParts:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v13           #cid:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 271
    .end local v12           #charset:Ljava/lang/Integer;
    .end local v14           #contentDisposition:[B
    .end local v15           #contentId:[B
    .end local v16           #contentLocation:[B
    .end local v17           #contentType:[B
    .end local v20           #fileName:[B
    .end local v21           #name:[B
    .end local v22           #part:Lcom/android/mms/ui/SimplePduPart;
    .end local v23           #partId:J
    .end local v26           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_f

    .line 272
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2

    .line 188
    .restart local v12       #charset:Ljava/lang/Integer;
    .restart local v14       #contentDisposition:[B
    .restart local v15       #contentId:[B
    .restart local v16       #contentLocation:[B
    .restart local v17       #contentType:[B
    .restart local v22       #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_10
    :try_start_2
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_2

    .line 195
    .restart local v26       #type:Ljava/lang/String;
    :cond_11
    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_12

    .line 198
    :try_start_3
    new-instance v18, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SimplePduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 199
    .local v18, dw:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v26

    .line 207
    .end local v18           #dw:Lcom/android/mms/drm/DrmWrapper;
    :cond_12
    :goto_4
    if-eqz v26, :cond_8

    .line 208
    :try_start_4
    const-string v2, "text/x-vCard"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 209
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setAttachmentType(I)V

    goto/16 :goto_3

    .line 200
    :catch_0
    move-exception v19

    .line 201
    .local v19, e:Landroid/drm/mobile1/DrmException;
    const-string v2, "Mms/SimplePduDoc"

    invoke-virtual/range {v19 .. v19}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 202
    .end local v19           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v19

    .line 203
    .local v19, e:Ljava/io/IOException;
    const-string v2, "Mms/SimplePduDoc"

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 210
    .end local v19           #e:Ljava/io/IOException;
    :cond_13
    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 212
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setAttachmentType(I)V

    goto/16 :goto_3

    .line 213
    :cond_15
    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 214
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setAttachmentType(I)V

    goto/16 :goto_3

    .line 215
    :cond_16
    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "application/ogg"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 217
    :cond_17
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setAttachmentType(I)V

    goto/16 :goto_3

    .line 218
    :cond_18
    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 219
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setAttachmentType(I)V

    goto/16 :goto_3

    .line 221
    :cond_19
    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SimplePduPart;->setAttachmentType(I)V

    goto/16 :goto_3

    .line 226
    :cond_1a
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Content-Type must be set."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    .end local v12           #charset:Ljava/lang/Integer;
    .end local v14           #contentDisposition:[B
    .end local v15           #contentId:[B
    .end local v16           #contentLocation:[B
    .end local v17           #contentType:[B
    .end local v22           #part:Lcom/android/mms/ui/SimplePduPart;
    .end local v26           #type:Ljava/lang/String;
    :cond_1b
    if-eqz v11, :cond_1

    .line 272
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private loadSlides()Z
    .locals 14

    .prologue
    .line 356
    iget v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mDocType:I

    if-eqz v12, :cond_0

    .line 357
    const/4 v12, 0x0

    .line 405
    :goto_0
    return v12

    .line 359
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    .line 360
    new-instance v9, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;

    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    invoke-direct {v9, p0, v12}, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;-><init>(Lcom/android/mms/ui/SimplePduDoc;Ljava/util/ArrayList;)V

    .line 362
    .local v9, slideHandler:Lcom/android/mms/ui/SimplePduDoc$SlideHandler;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 363
    .local v5, parser:Ljavax/xml/parsers/SAXParser;
    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mDocPart:Lcom/android/mms/ui/SimplePduPart;

    invoke-virtual {v12}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v1

    .line 364
    .local v1, data:[B
    if-eqz v1, :cond_1

    .line 365
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 366
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v5, v0, v9}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 375
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    :cond_1
    invoke-virtual {v9}, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->isSlideshow()Z

    move-result v3

    .line 378
    .local v3, isSlide:Z
    invoke-virtual {v9}, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->getRestParts()Ljava/util/ArrayList;

    move-result-object v8

    .line 379
    .local v8, restParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimplePduPart;>;"
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 380
    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-direct {p0, v12, v8}, Lcom/android/mms/ui/SimplePduDoc;->loadAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v3, :cond_8

    :cond_2
    const/4 v3, 0x1

    .line 385
    :goto_1
    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 387
    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/SimplePduPart;

    .line 388
    .local v6, part1:Lcom/android/mms/ui/SimplePduPart;
    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SimplePduPart;

    .line 390
    .local v7, part2:Lcom/android/mms/ui/SimplePduPart;
    invoke-virtual {v6}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v10

    .line 391
    .local v10, type1:I
    invoke-virtual {v7}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v11

    .line 393
    .local v11, type2:I
    if-nez v10, :cond_3

    if-nez v11, :cond_4

    :cond_3
    if-nez v11, :cond_5

    if-eqz v10, :cond_5

    .line 395
    :cond_4
    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 396
    new-instance v4, Lcom/android/mms/ui/SimplePduPage;

    invoke-direct {v4}, Lcom/android/mms/ui/SimplePduPage;-><init>()V

    .line 397
    .local v4, page:Lcom/android/mms/ui/SimplePduPage;
    invoke-virtual {v4, v6}, Lcom/android/mms/ui/SimplePduPage;->addPart(Lcom/android/mms/ui/SimplePduPart;)V

    .line 398
    invoke-virtual {v4, v7}, Lcom/android/mms/ui/SimplePduPage;->addPart(Lcom/android/mms/ui/SimplePduPart;)V

    .line 399
    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v4           #page:Lcom/android/mms/ui/SimplePduPage;
    :cond_5
    const/4 v3, 0x0

    .line 404
    .end local v6           #part1:Lcom/android/mms/ui/SimplePduPart;
    .end local v7           #part2:Lcom/android/mms/ui/SimplePduPart;
    .end local v10           #type1:I
    .end local v11           #type2:I
    :cond_6
    if-nez v3, :cond_7

    iget-object v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    :cond_7
    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, p0, Lcom/android/mms/ui/SimplePduDoc;->mIsSlideShow:Z

    .line 405
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 368
    .end local v1           #data:[B
    .end local v3           #isSlide:Z
    .end local v5           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v8           #restParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimplePduPart;>;"
    :catch_0
    move-exception v2

    .line 369
    .local v2, e:Lorg/xml/sax/SAXException;
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 370
    .end local v2           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v2

    .line 371
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 372
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v2

    .line 373
    .local v2, e:Ljava/io/IOException;
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 380
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #data:[B
    .restart local v3       #isSlide:Z
    .restart local v5       #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v8       #restParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimplePduPart;>;"
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 404
    :cond_9
    const/4 v12, 0x0

    goto :goto_2
.end method


# virtual methods
.method public canShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v0

    .line 464
    .local v0, type:I
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduDoc;->isSlideShow()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCompleteSize()I
    .locals 4

    .prologue
    .line 500
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mCompleteSize:Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 501
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mCompleteSize:Ljava/lang/Integer;

    .line 502
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mDocPart:Lcom/android/mms/ui/SimplePduPart;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mDocPart:Lcom/android/mms/ui/SimplePduPart;

    invoke-virtual {v2}, Lcom/android/mms/ui/SimplePduPart;->loadData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mCompleteSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SimplePduDoc;->mDocPart:Lcom/android/mms/ui/SimplePduPart;

    invoke-virtual {v3}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mCompleteSize:Ljava/lang/Integer;

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SimplePduPart;

    .line 509
    .local v1, simplePduPart:Lcom/android/mms/ui/SimplePduPart;
    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->loadData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mCompleteSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mCompleteSize:Ljava/lang/Integer;

    goto :goto_0

    .line 514
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #simplePduPart:Lcom/android/mms/ui/SimplePduPart;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mCompleteSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getContentLocation()[B
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mContentLocation:[B

    return-object v0
.end method

.method public getDate()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mDate:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mDate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getExpiry()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mExpiry:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mExpiry:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mFrom:Lcom/google/android/mms/pdu/EncodedStringValue;

    return-object v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPage(I)Lcom/android/mms/ui/SimplePduPage;
    .locals 1
    .parameter "index"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SimplePduPage;

    .line 528
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageAppearancePart(I)Lcom/android/mms/ui/SimplePduPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPage;->getPageAppearancePart()Lcom/android/mms/ui/SimplePduPart;

    move-result-object v0

    .line 535
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageAppearanceType(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearancePart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v0

    .line 540
    .local v0, part:Lcom/android/mms/ui/SimplePduPart;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v1

    .line 543
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPageImage(III)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "index"
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/mms/ui/SimplePduPage;->getImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPagePartUri(II)Landroid/net/Uri;
    .locals 1
    .parameter "index"
    .parameter "type"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/SimplePduPage;->getPartUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageText(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPage;->getText()Ljava/lang/String;

    move-result-object v0

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageTextPart(I)Lcom/android/mms/ui/SimplePduPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/SimplePduDoc;->getPageTypedPart(II)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v0

    return-object v0
.end method

.method public getPageTypedPart(II)Lcom/android/mms/ui/SimplePduPart;
    .locals 1
    .parameter "index"
    .parameter "type"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/SimplePduPage;->getTypedPart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSlideShow()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/mms/ui/SimplePduDoc;->mIsSlideShow:Z

    return v0
.end method

.method public load(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduDoc;->mUri:Landroid/net/Uri;

    .line 105
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mId:J

    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/SimplePduDoc;->loadAddress()V

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SimplePduDoc;->loadParts()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mDocType:I

    if-nez v2, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/mms/ui/SimplePduDoc;->loadSlides()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/SimplePduDoc;->loadAttachments()Z

    .line 119
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Lcom/google/android/mms/MmsException;
    goto :goto_1

    .line 117
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SimplePduDoc;->loadAttachments()Z

    goto :goto_0
.end method

.method public setContentLocation([B)V
    .locals 0
    .parameter "contentLocation"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduDoc;->mContentLocation:[B

    .line 481
    return-void
.end method

.method public setDate(Ljava/lang/Long;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduDoc;->mDate:Ljava/lang/Long;

    .line 580
    return-void
.end method

.method public setExpiry(Ljava/lang/Integer;)V
    .locals 0
    .parameter "expiry"

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduDoc;->mExpiry:Ljava/lang/Integer;

    .line 588
    return-void
.end method

.method public setMessageSize(Ljava/lang/Integer;)V
    .locals 0
    .parameter "size"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduDoc;->mSize:Ljava/lang/Integer;

    .line 493
    return-void
.end method
