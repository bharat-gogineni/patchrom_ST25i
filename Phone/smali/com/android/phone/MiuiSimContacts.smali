.class public Lcom/android/phone/MiuiSimContacts;
.super Lcom/android/phone/SimContacts;
.source "MiuiSimContacts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiSimContacts$ModeCallback;,
        Lcom/android/phone/MiuiSimContacts$SimContactOP;
    }
.end annotation


# static fields
.field private static sService:Lcom/android/phone/MiuiSimContactService;


# instance fields
.field private isBindSimContactService:Z

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEmptyText:Landroid/widget/TextView;

.field private mList:Landroid/widget/EditableListView;

.field private mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/SimContacts;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    .line 249
    new-instance v0, Lcom/android/phone/MiuiSimContacts$4;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiSimContacts$4;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Lcom/android/phone/MiuiSimContactService;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/MiuiSimContactService;)Lcom/android/phone/MiuiSimContactService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->startDeleteSelected()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiSimContacts;Landroid/util/SparseBooleanArray;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiSimContacts;->startDeleteAll(Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MiuiSimContacts;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->startImportSelected()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiSimContacts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->showDeleteSelectedDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/MiuiSimContacts;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/MiuiSimContacts;->showProgressDialog(IIII)V

    return-void
.end method

.method private buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-direct {p0, p2}, Lcom/android/phone/MiuiSimContacts;->buildStringArrayList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 364
    const/4 v0, 0x0

    .line 365
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/MiuiSimContactService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 369
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "com.android.contacts.extra.ACCOUNT"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    :cond_0
    return-object v0
.end method

.method private buildStringArrayList(Landroid/util/SparseBooleanArray;)Ljava/util/ArrayList;
    .locals 9
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 379
    :cond_0
    const/4 v2, 0x0

    .line 401
    :cond_1
    return-object v2

    .line 382
    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 383
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 384
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 385
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 386
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 388
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 392
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_4
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 396
    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MiuiSimContactService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 321
    iput-boolean v2, p0, Lcom/android/phone/MiuiSimContacts;->isBindSimContactService:Z

    .line 322
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/phone/MiuiSimContacts;->isBindSimContactService:Z

    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/android/phone/MiuiSimContacts;->sService:Lcom/android/phone/MiuiSimContactService;

    invoke-virtual {v0}, Lcom/android/phone/MiuiSimContactService;->switchToBackground()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->unbindService(Landroid/content/ServiceConnection;)V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiSimContacts;->isBindSimContactService:Z

    .line 332
    :cond_1
    return-void
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 79
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 82
    return-void
.end method

.method private showDeleteAllDialog()V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MiuiSimContacts$3;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSimContacts$3;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 188
    return-void
.end method

.method private showDeleteSelectedDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03a7

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/MiuiSimContacts$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiSimContacts$2;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 168
    return-void
.end method

.method private showProgressDialog(IIII)V
    .locals 6
    .parameter "titleId"
    .parameter "messageId"
    .parameter "count"
    .parameter "max"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 152
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 135
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 140
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/phone/MiuiSimContacts$1;

    invoke-direct {v5, p0}, Lcom/android/phone/MiuiSimContacts$1;-><init>(Lcom/android/phone/MiuiSimContacts;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 148
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 150
    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private startDeleteAll(Landroid/util/SparseBooleanArray;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 342
    const-string v1, "android.intent.action.DELETE"

    invoke-direct {p0, v1, p1}, Lcom/android/phone/MiuiSimContacts;->buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;

    move-result-object v0

    .line 343
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 346
    :cond_0
    return-void
.end method

.method private startDeleteSelected()V
    .locals 3

    .prologue
    .line 356
    const-string v1, "android.intent.action.DELETE"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;

    move-result-object v0

    .line 357
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 360
    :cond_0
    return-void
.end method

.method private startImportAll(Landroid/util/SparseBooleanArray;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 335
    const-string v1, "android.intent.action.INSERT"

    invoke-direct {p0, v1, p1}, Lcom/android/phone/MiuiSimContacts;->buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    :cond_0
    return-void
.end method

.method private startImportSelected()V
    .locals 3

    .prologue
    .line 349
    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MiuiSimContacts;->buildOpIntent(Ljava/lang/String;Landroid/util/SparseBooleanArray;)Landroid/content/Intent;

    move-result-object v0

    .line 350
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiSimContacts;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method protected displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0c013e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 120
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, p0}, Lcom/android/phone/MiuiSimContacts;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0141

    goto :goto_0

    :cond_1
    const v0, 0x7f0c013f

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, -0x2

    goto :goto_1
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 6

    .prologue
    .line 107
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f04002f

    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/MiuiSimContacts;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/MiuiSimContacts;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 109
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/phone/SimContacts;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v3, 0x7f04002d

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiSimContacts;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast v3, Landroid/widget/EditableListView;

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    .line 59
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v3, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 61
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setCheckBoxVisiableInNoneEditMode(Z)V

    .line 62
    new-instance v3, Lcom/android/phone/MiuiSimContacts$ModeCallback;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    invoke-direct {v3, p0, v4}, Lcom/android/phone/MiuiSimContacts$ModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    .line 63
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    const v4, 0x7f0f0001

    invoke-virtual {v3, v4}, Lcom/android/phone/MiuiSimContacts$ModeCallback;->setSplitActionBarMenuId(I)V

    .line 64
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    iget-object v4, p0, Lcom/android/phone/MiuiSimContacts;->mModeCallBack:Lcom/android/phone/MiuiSimContacts$ModeCallback;

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 65
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiSimContacts;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mEmptyText:Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->setupActionBar()V

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 69
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 70
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAccount:Landroid/accounts/Account;

    .line 76
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/phone/MiuiSimContacts;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mList:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/EditableListView;->setItemChecked(IZ)V

    .line 217
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 211
    invoke-super {p0, p1}, Lcom/android/phone/SimContacts;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 194
    :sswitch_0
    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.activities.PeopleActivity"

    invoke-static {p0, v3, v4}, Lcom/android/phone/MiuiPhoneUtils;->goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 198
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 199
    .local v1, list:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 200
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/MiuiSimContacts;->startImportAll(Landroid/util/SparseBooleanArray;)V

    goto :goto_0

    .line 206
    .end local v0           #i:I
    .end local v1           #list:Landroid/util/SparseBooleanArray;
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MiuiSimContacts;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->showDeleteAllDialog()V

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0700fd -> :sswitch_1
        0x7f0700fe -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/phone/SimContacts;->onPause()V

    .line 99
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->doUnbindService()V

    .line 100
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/phone/SimContacts;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/phone/MiuiSimContacts;->doBindService()V

    .line 94
    return-void
.end method
