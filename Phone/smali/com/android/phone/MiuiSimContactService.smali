.class public Lcom/android/phone/MiuiSimContactService;
.super Landroid/app/Service;
.source "MiuiSimContactService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiSimContactService$SimContactsThread;,
        Lcom/android/phone/MiuiSimContactService$MyBinder;,
        Lcom/android/phone/MiuiSimContactService$ProgressListener;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mBinder:Lcom/android/phone/MiuiSimContactService$MyBinder;

.field private mCanceled:Z

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBackground:Z

.field private mIsTaskRunning:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

.field private mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/android/phone/MiuiSimContactService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiSimContactService$MyBinder;-><init>(Lcom/android/phone/MiuiSimContactService;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mBinder:Lcom/android/phone/MiuiSimContactService$MyBinder;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiSimContactService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiSimContactService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mCanceled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/MiuiSimContactService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService$ProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContacts$SimContactOP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiSimContactService;Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MiuiSimContactService;->buildInsertOperations(Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiSimContactService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/phone/MiuiSimContactService;->mTotalCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiSimContactService;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSimContactService;->deleteOneSimContact(Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/MiuiSimContactService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/phone/MiuiSimContactService;->mIsTaskRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiSimContactService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mIsBackground:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiSimContactService;IIZZ)Landroid/app/Notification;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/MiuiSimContactService;->constructNotification(IIZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private buildInsertOperations(Lmiui/provider/BatchOperation;Landroid/content/ContentValues;)V
    .locals 15
    .parameter "ops"
    .parameter "values"

    .prologue
    .line 203
    sget-object v13, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, phoneName:Ljava/lang/String;
    sget-object v13, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, phoneNumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 263
    :cond_0
    return-void

    .line 211
    :cond_1
    new-instance v8, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v9, v10

    .end local v9           #phoneName:Ljava/lang/String;
    :cond_2
    invoke-direct {v8, v9}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 213
    .local v8, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v9, v8, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 214
    .restart local v9       #phoneName:Ljava/lang/String;
    iget v11, v8, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 215
    .local v11, phoneType:I
    sget-object v13, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, emailAddresses:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 219
    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, emailAddressArray:[Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lmiui/provider/BatchOperation;->size()I

    move-result v12

    .line 225
    .local v12, rawContactIdIndex:I
    sget-object v13, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 227
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v13, p0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    if-eqz v13, :cond_4

    .line 228
    const-string v13, "account_name"

    iget-object v14, p0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 229
    const-string v13, "account_type"

    iget-object v14, p0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 234
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 236
    sget-object v13, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 237
    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 238
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 239
    const-string v13, "data1"

    invoke-virtual {v2, v13, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 240
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 242
    sget-object v13, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 243
    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 244
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 245
    const-string v13, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 246
    const-string v13, "data1"

    invoke-virtual {v2, v13, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 247
    const-string v13, "is_primary"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 248
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 250
    if-eqz v5, :cond_0

    .line 251
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 252
    .local v3, emailAddress:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 251
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 221
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #emailAddressArray:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v12           #rawContactIdIndex:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_0

    .line 231
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v12       #rawContactIdIndex:I
    :cond_4
    const-string v13, "account_name"

    const-string v14, "default"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 232
    const-string v13, "account_type"

    const-string v14, "com.android.contacts.default"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 255
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #emailAddress:Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_5
    sget-object v13, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 256
    const-string v13, "raw_contact_id"

    invoke-virtual {v2, v13, v12}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 257
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 258
    const-string v13, "data2"

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 259
    const-string v13, "data1"

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 260
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    goto :goto_3
.end method

.method private constructNotification(IIZZ)Landroid/app/Notification;
    .locals 4
    .parameter "messageId"
    .parameter "iconId"
    .parameter "autoCancel"
    .parameter "onGoing"

    .prologue
    const/4 v3, 0x0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MiuiSimContacts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiSimContactService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private deleteOneSimContact(Landroid/content/ContentValues;)I
    .locals 8
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 195
    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    .local v0, adnUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, name:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, number:Ljava/lang/String;
    const-string v4, "tag=\'%s\' AND number=\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContactService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mBinder:Lcom/android/phone/MiuiSimContactService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContactService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    .line 70
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 79
    if-nez p1, :cond_0

    move v1, v2

    .line 100
    :goto_0
    return v1

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mAccount:Landroid/accounts/Account;

    .line 86
    const-string v1, "android.intent.extra.TITLE"

    iget-object v4, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MiuiSimContactService;->mTotalCount:I

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    sget-object v1, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    .line 97
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/phone/MiuiSimContactService$SimContactsThread;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiSimContactService$SimContactsThread;-><init>(Lcom/android/phone/MiuiSimContactService;)V

    invoke-virtual {v1}, Lcom/android/phone/MiuiSimContactService$SimContactsThread;->start()V

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/MiuiSimContactService;->mCanceled:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/phone/MiuiSimContactService;->mIsTaskRunning:Z

    move v1, v3

    .line 100
    goto :goto_0

    .line 94
    :cond_4
    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    sget-object v1, Lcom/android/phone/MiuiSimContacts$SimContactOP;->DELETE:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    iput-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    goto :goto_1
.end method

.method public setProgressListener(Lcom/android/phone/MiuiSimContactService$ProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/MiuiSimContactService;->mProgressListener:Lcom/android/phone/MiuiSimContactService$ProgressListener;

    .line 74
    return-void
.end method

.method public stopTask()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mCanceled:Z

    .line 105
    return-void
.end method

.method public switchToBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    iget-boolean v1, p0, Lcom/android/phone/MiuiSimContactService;->mIsTaskRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mOp:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    sget-object v2, Lcom/android/phone/MiuiSimContacts$SimContactOP;->IMPORT:Lcom/android/phone/MiuiSimContacts$SimContactOP;

    if-ne v1, v2, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, notification:Landroid/app/Notification;
    const v1, 0x7f0c0325

    const v2, 0x7f02004d

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/phone/MiuiSimContactService;->constructNotification(IIZZ)Landroid/app/Notification;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 121
    .end local v0           #notification:Landroid/app/Notification;
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/MiuiSimContactService;->mIsBackground:Z

    .line 122
    return-void
.end method

.method public switchToForeground()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService;->mNM:Landroid/app/NotificationManager;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContactService;->mIsBackground:Z

    .line 111
    return-void
.end method
