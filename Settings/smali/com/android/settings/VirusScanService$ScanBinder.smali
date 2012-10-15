.class public Lcom/android/settings/VirusScanService$ScanBinder;
.super Landroid/os/Binder;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanService;


# direct methods
.method public constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public Finish()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/VirusScanService;->mIsFinish:Z
    invoke-static {v0, v1}, Lcom/android/settings/VirusScanService;->access$902(Lcom/android/settings/VirusScanService;Z)Z

    .line 133
    return-void
.end method

.method public getData(I)Lcom/android/settings/ScanAppData;
    .locals 1
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    return-object v0
.end method

.method public getRiskCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$700(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRiskItemIndex(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$700(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScanDataCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScannedCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$600(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public getSelectedRiskCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$400(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public getUninstallCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mUninstalledCount:I
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$800(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public isForceStopped()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mIsForceStop:Z
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)Z

    move-result v0

    return v0
.end method

.method public selectUninstallApp(IZ)V
    .locals 3
    .parameter "index"
    .parameter "selected"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    .line 94
    .local v0, data:Lcom/android/settings/ScanAppData;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    iget-object v2, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    if-ne v1, v2, :cond_0

    .line 95
    if-eqz p2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$404(Lcom/android/settings/VirusScanService;)I

    .line 99
    :goto_0
    iput-boolean p2, v0, Lcom/android/settings/ScanAppData;->mChecked:Z

    .line 101
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$406(Lcom/android/settings/VirusScanService;)I

    goto :goto_0
.end method

.method public setOnVirusScanListener(Lcom/android/settings/VirusScanService$OnVirusScanListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #setter for: Lcom/android/settings/VirusScanService;->mListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v0, p1}, Lcom/android/settings/VirusScanService;->access$202(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$OnVirusScanListener;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    .line 86
    return-void
.end method

.method public startScan()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #calls: Lcom/android/settings/VirusScanService;->startScan()V
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$500(Lcom/android/settings/VirusScanService;)V

    .line 105
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/VirusScanService;->mIsForceStop:Z
    invoke-static {v0, v1}, Lcom/android/settings/VirusScanService;->access$102(Lcom/android/settings/VirusScanService;Z)Z

    .line 129
    return-void
.end method

.method public uninstallApps()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #calls: Lcom/android/settings/VirusScanService;->uninstallApps()V
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$300(Lcom/android/settings/VirusScanService;)V

    .line 90
    return-void
.end method
