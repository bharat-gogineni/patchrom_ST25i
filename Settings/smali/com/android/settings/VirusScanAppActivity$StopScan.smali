.class Lcom/android/settings/VirusScanAppActivity$StopScan;
.super Lcom/android/settings/VirusScanAppActivity$ScanImp;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopScan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanAppActivity$ScanImp;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method getState()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->RS_Stop:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method getStringDesp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b06bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onScanClick()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->startScan()V

    .line 392
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;
    invoke-static {v1}, Lcom/android/settings/VirusScanAppActivity;->access$100(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/VirusScanAppActivity$ScanImp;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    .line 393
    return-void
.end method

.method public updateUi()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 412
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mProgress:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mTitleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    const v1, 0x7f0b06bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f0b06c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->getRiskCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mInfo:Landroid/widget/TextView;

    const v1, 0x7f0b06c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$StopScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v3}, Lcom/android/settings/VirusScanService$ScanBinder;->getRiskCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
