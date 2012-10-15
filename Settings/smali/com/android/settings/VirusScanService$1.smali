.class Lcom/android/settings/VirusScanService$1;
.super Ljava/lang/Object;
.source "VirusScanService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanService;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanService;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 183
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$600(Lcom/android/settings/VirusScanService;)I

    move-result v2

    .local v2, i:I
    :goto_0
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 184
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    .line 186
    .local v0, data:Lcom/android/settings/ScanAppData;
    sget-object v10, Lcom/android/settings/ScanState;->ESS_SCANNING:Lcom/android/settings/ScanState;

    iput-object v10, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    .line 187
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 188
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v10

    invoke-interface {v10, v2}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onItemScanning(I)V

    .line 191
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 192
    .local v4, startTime:J
    new-instance v10, Ljava/io/File;

    iget-object v11, v0, Lcom/android/settings/ScanAppData;->mFullPath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 194
    .local v9, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v10, v9}, Lmiui/provider/ExtraGuard;->checkApk(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    .line 195
    .local v3, passed:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v4

    .line 196
    .local v7, time:J
    const-wide/16 v10, 0x7d0

    cmp-long v10, v7, v10

    if-gez v10, :cond_1

    .line 198
    const-wide/16 v10, 0x7d0

    sub-long/2addr v10, v7

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 205
    sget-object v10, Lcom/android/settings/ScanState;->ESS_PASSED:Lcom/android/settings/ScanState;

    iput-object v10, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    .line 213
    :goto_2
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$604(Lcom/android/settings/VirusScanService;)I

    .line 215
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 216
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v10

    invoke-interface {v10, v2, v3}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onItemScanFinished(IZ)V

    .line 222
    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mIsForceStop:Z
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 227
    .end local v0           #data:Lcom/android/settings/ScanAppData;
    .end local v3           #passed:Z
    .end local v4           #startTime:J
    .end local v7           #time:J
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 228
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$600(Lcom/android/settings/VirusScanService;)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 229
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onScanForceStopped()V

    .line 240
    :cond_4
    :goto_4
    return-void

    .line 199
    .restart local v0       #data:Lcom/android/settings/ScanAppData;
    .restart local v3       #passed:Z
    .restart local v4       #startTime:J
    .restart local v7       #time:J
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$700(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$404(Lcom/android/settings/VirusScanService;)I

    .line 210
    sget-object v10, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    iput-object v10, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    goto :goto_2

    .line 217
    :cond_6
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mIsFinish:Z
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 218
    const-string v10, "%s(%d%%)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v13}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b06b9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$600(Lcom/android/settings/VirusScanService;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x64

    iget-object v14, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    div-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, str:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v10, v6}, Lcom/android/settings/VirusScanAppActivity;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 183
    .end local v6           #str:Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 231
    .end local v0           #data:Lcom/android/settings/ScanAppData;
    .end local v3           #passed:Z
    .end local v4           #startTime:J
    .end local v7           #time:J
    .end local v9           #uri:Landroid/net/Uri;
    :cond_8
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onScanFinished()V

    goto :goto_4

    .line 232
    :cond_9
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mIsFinish:Z
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 234
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/settings/VirusScanService;->access$700(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 235
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    iget-object v11, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v11}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b06bc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/VirusScanAppActivity;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 237
    :cond_a
    iget-object v10, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    iget-object v11, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v11}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b06c3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/VirusScanAppActivity;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
