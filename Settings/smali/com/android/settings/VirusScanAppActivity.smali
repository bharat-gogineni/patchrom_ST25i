.class public Lcom/android/settings/VirusScanAppActivity;
.super Landroid/app/Activity;
.source "VirusScanAppActivity.java"

# interfaces
.implements Lcom/android/settings/VirusScanService$OnVirusScanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VirusScanAppActivity$7;,
        Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;,
        Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;,
        Lcom/android/settings/VirusScanAppActivity$StopScan;,
        Lcom/android/settings/VirusScanAppActivity$NormalScan;,
        Lcom/android/settings/VirusScanAppActivity$ScanImp;,
        Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;,
        Lcom/android/settings/VirusScanAppActivity$ViewHolder;,
        Lcom/android/settings/VirusScanAppActivity$RunState;,
        Lcom/android/settings/VirusScanAppActivity$AppData;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;

.field mAppData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/VirusScanAppActivity$AppData;",
            ">;"
        }
    .end annotation
.end field

.field mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

.field mButtonFinish:Landroid/widget/Button;

.field mButtonScan:Landroid/widget/Button;

.field mContentList:Landroid/widget/ListView;

.field mFinish:Z

.field mInfo:Landroid/widget/TextView;

.field mMsgHandler:Landroid/os/Handler;

.field mProgress:Landroid/widget/TextView;

.field mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

.field mStatus:Landroid/widget/TextView;

.field mTitle:Landroid/widget/LinearLayout;

.field mTitleIcon:Landroid/widget/ImageView;

.field private mUninstallCount:I

.field mconn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->mFinish:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    .line 460
    return-void
.end method

.method private FinishScan()V
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->mFinish:Z

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->mFinish:Z

    .line 546
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->stopScan()V

    .line 547
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->Finish()V

    .line 548
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mconn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/VirusScanAppActivity;->finish()V

    .line 552
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->updateData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/VirusScanAppActivity$ScanImp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/VirusScanAppActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/VirusScanAppActivity;->mUninstallCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/VirusScanAppActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/VirusScanAppActivity;->mUninstallCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->FinishScan()V

    return-void
.end method

.method private buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService$ScanBinder;->isForceStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$StopScan;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanAppActivity$StopScan;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    .line 295
    .local v0, imp:Lcom/android/settings/VirusScanAppActivity$ScanImp;
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity$ScanImp;->updateUi()V

    .line 297
    return-object v0

    .line 286
    .end local v0           #imp:Lcom/android/settings/VirusScanAppActivity$ScanImp;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService$ScanBinder;->getScannedCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 287
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$NormalScan;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanAppActivity$NormalScan;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    .restart local v0       #imp:Lcom/android/settings/VirusScanAppActivity$ScanImp;
    goto :goto_0

    .line 289
    .end local v0           #imp:Lcom/android/settings/VirusScanAppActivity$ScanImp;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService$ScanBinder;->getRiskCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 290
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    .restart local v0       #imp:Lcom/android/settings/VirusScanAppActivity$ScanImp;
    goto :goto_0

    .line 292
    .end local v0           #imp:Lcom/android/settings/VirusScanAppActivity$ScanImp;
    :cond_2
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    .restart local v0       #imp:Lcom/android/settings/VirusScanAppActivity$ScanImp;
    goto :goto_0
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0b06ac

    .line 218
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 219
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0200d9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 220
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const/high16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3, p1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 235
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    return-void
.end method

.method private updateData()V
    .locals 5

    .prologue
    .line 90
    iget-object v4, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v4, p0}, Lcom/android/settings/VirusScanService$ScanBinder;->setOnVirusScanListener(Lcom/android/settings/VirusScanService$OnVirusScanListener;)V

    .line 91
    iget-object v4, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v4}, Lcom/android/settings/VirusScanService$ScanBinder;->getScanDataCount()I

    move-result v0

    .line 92
    .local v0, count:I
    iget-object v4, p0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 93
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 94
    new-instance v1, Lcom/android/settings/VirusScanAppActivity$AppData;

    invoke-direct {v1}, Lcom/android/settings/VirusScanAppActivity$AppData;-><init>()V

    .line 95
    .local v1, data:Lcom/android/settings/VirusScanAppActivity$AppData;
    iget-object v4, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v4, v2}, Lcom/android/settings/VirusScanService$ScanBinder;->getData(I)Lcom/android/settings/ScanAppData;

    move-result-object v3

    .line 96
    .local v3, sad:Lcom/android/settings/ScanAppData;
    iget-object v4, v3, Lcom/android/settings/ScanAppData;->mAppName:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/settings/VirusScanAppActivity$AppData;->mAppName:Ljava/lang/String;

    .line 97
    iget-boolean v4, v3, Lcom/android/settings/ScanAppData;->mChecked:Z

    iput-boolean v4, v1, Lcom/android/settings/VirusScanAppActivity$AppData;->mChecked:Z

    .line 98
    iget-object v4, v3, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    iput-object v4, v1, Lcom/android/settings/VirusScanAppActivity$AppData;->mState:Lcom/android/settings/ScanState;

    .line 99
    iget-object v4, p0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v1           #data:Lcom/android/settings/VirusScanAppActivity$AppData;
    .end local v3           #sad:Lcom/android/settings/ScanAppData;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 608
    sget-object v1, Lcom/android/settings/VirusScanAppActivity$RunState;->RS_Scanning:Lcom/android/settings/VirusScanAppActivity$RunState;

    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanAppActivity$ScanImp;->getState()Lcom/android/settings/VirusScanAppActivity$RunState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 609
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 611
    const v1, 0x7f0b06ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 612
    const v1, 0x7f0b06c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 613
    const v1, 0x7f0b06b4

    new-instance v2, Lcom/android/settings/VirusScanAppActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings/VirusScanAppActivity$5;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 619
    const v1, 0x7f0b06b5

    new-instance v2, Lcom/android/settings/VirusScanAppActivity$6;

    invoke-direct {v2, p0}, Lcom/android/settings/VirusScanAppActivity$6;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 631
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->FinishScan()V

    .line 629
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v1, 0x7f040080

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->setContentView(I)V

    .line 109
    new-instance v1, Lcom/android/settings/VirusScanAppActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/VirusScanAppActivity$1;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mconn:Landroid/content/ServiceConnection;

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.service.VIRUS_SCAN_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mconn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/VirusScanAppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    const v1, 0x7f08016c

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mTitle:Landroid/widget/LinearLayout;

    .line 132
    const v1, 0x7f08016d

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mProgress:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f08016f

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mStatus:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f080170

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mInfo:Landroid/widget/TextView;

    .line 135
    const v1, 0x7f08016e

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mTitleIcon:Landroid/widget/ImageView;

    .line 136
    const v1, 0x7f080173

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    .line 137
    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    .line 138
    const v1, 0x7f080174

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    .line 140
    new-instance v1, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;-><init>(Lcom/android/settings/VirusScanAppActivity;Lcom/android/settings/VirusScanAppActivity$1;)V

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mAdapter:Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;

    .line 141
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mAdapter:Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/VirusScanAppActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/VirusScanAppActivity$2;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/VirusScanAppActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/VirusScanAppActivity$3;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v1, Lcom/android/settings/VirusScanAppActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/VirusScanAppActivity$4;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mMsgHandler:Landroid/os/Handler;

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->FinishScan()V

    .line 215
    return-void
.end method

.method public onItemScanFinished(IZ)V
    .locals 4
    .parameter "index"
    .parameter "passed"

    .prologue
    .line 567
    if-eqz p2, :cond_0

    .line 568
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/VirusScanAppActivity$AppData;

    sget-object v3, Lcom/android/settings/ScanState;->ESS_PASSED:Lcom/android/settings/ScanState;

    iput-object v3, v2, Lcom/android/settings/VirusScanAppActivity$AppData;->mState:Lcom/android/settings/ScanState;

    .line 574
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 576
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 577
    .restart local v0       #bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Message;

    .end local v1           #msg:Landroid/os/Message;
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 578
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 579
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 581
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 582
    return-void

    .line 571
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/VirusScanAppActivity$AppData;

    sget-object v3, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    iput-object v3, v2, Lcom/android/settings/VirusScanAppActivity$AppData;->mState:Lcom/android/settings/ScanState;

    goto :goto_0
.end method

.method public onItemScanning(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/VirusScanAppActivity$AppData;

    sget-object v3, Lcom/android/settings/ScanState;->ESS_SCANNING:Lcom/android/settings/ScanState;

    iput-object v3, v2, Lcom/android/settings/VirusScanAppActivity$AppData;->mState:Lcom/android/settings/ScanState;

    .line 557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 558
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 559
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 560
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 562
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 563
    return-void
.end method

.method public onItemUninstalled(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 586
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 587
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 588
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 589
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/VirusScanService$ScanBinder;->setOnVirusScanListener(Lcom/android/settings/VirusScanService$OnVirusScanListener;)V

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/VirusScanAppActivity;->mFinish:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity$ScanImp;->getStringDesp()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/VirusScanAppActivity;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v1, p0}, Lcom/android/settings/VirusScanService$ScanBinder;->setOnVirusScanListener(Lcom/android/settings/VirusScanService$OnVirusScanListener;)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    if-eqz v1, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->updateData()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/VirusScanAppActivity;->buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    .line 194
    :cond_1
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/VirusScanAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 195
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 196
    return-void
.end method

.method public onScanFinished()V
    .locals 2

    .prologue
    .line 600
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 601
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 602
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    return-void
.end method

.method public onScanForceStopped()V
    .locals 2

    .prologue
    .line 593
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 594
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 595
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    return-void
.end method
