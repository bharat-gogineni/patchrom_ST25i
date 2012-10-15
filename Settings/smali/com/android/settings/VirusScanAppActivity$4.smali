.class Lcom/android/settings/VirusScanAppActivity$4;
.super Landroid/os/Handler;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 160
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, index:I
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mAdapter:Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->notifyDataSetChanged()V

    .line 163
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v4, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mProgress:Landroid/widget/TextView;

    const-string v3, "%d%%"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x64

    iget-object v7, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v7, v7, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 178
    return-void

    .line 166
    :cond_1
    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 168
    :cond_2
    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_3

    .line 169
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;
    invoke-static {v3}, Lcom/android/settings/VirusScanAppActivity;->access$100(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/VirusScanAppActivity$ScanImp;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    goto :goto_0

    .line 170
    :cond_3
    const/4 v2, 0x4

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #getter for: Lcom/android/settings/VirusScanAppActivity;->mUninstallCount:I
    invoke-static {v2}, Lcom/android/settings/VirusScanAppActivity;->access$300(Lcom/android/settings/VirusScanAppActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v3}, Lcom/android/settings/VirusScanService$ScanBinder;->getUninstallCount()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 172
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanAppActivity$ScanImp;->updateUi()V

    goto :goto_0
.end method
