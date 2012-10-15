.class Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;
.super Lcom/android/settings/VirusScanAppActivity$ScanImp;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishRiskScan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanAppActivity$ScanImp;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->getRiskCount()I

    move-result v0

    return v0
.end method

.method getState()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->RS_Risk:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method getStringDesp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b06bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onFinishClick()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->getSelectedRiskCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->FinishScan()V
    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->access$400(Lcom/android/settings/VirusScanAppActivity;)V

    .line 471
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService$ScanBinder;->getSelectedRiskCount()I

    move-result v1

    #setter for: Lcom/android/settings/VirusScanAppActivity;->mUninstallCount:I
    invoke-static {v0, v1}, Lcom/android/settings/VirusScanAppActivity;->access$302(Lcom/android/settings/VirusScanAppActivity;I)I

    .line 468
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->uninstallApps()V

    goto :goto_0
.end method

.method updateListView(Lcom/android/settings/VirusScanAppActivity$ViewHolder;I)V
    .locals 4
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 496
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v2, p2}, Lcom/android/settings/VirusScanService$ScanBinder;->getRiskItemIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/VirusScanAppActivity$AppData;

    .line 497
    .local v0, data:Lcom/android/settings/VirusScanAppActivity$AppData;
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/VirusScanAppActivity$AppData;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 499
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/android/settings/VirusScanAppActivity$AppData;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 500
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$1;

    invoke-direct {v2, p0}, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$1;-><init>(Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;-><init>(Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;Lcom/android/settings/VirusScanAppActivity$AppData;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 518
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const/16 v2, 0xdf

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0b06bc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 520
    return-void
.end method

.method public updateUi()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mTitleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->getSelectedRiskCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v3}, Lcom/android/settings/VirusScanService$ScanBinder;->getSelectedRiskCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f0b06c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b06c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v3}, Lcom/android/settings/VirusScanService$ScanBinder;->getRiskCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mAdapter:Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->notifyDataSetChanged()V

    .line 540
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    const v1, 0x7f0b06be

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
