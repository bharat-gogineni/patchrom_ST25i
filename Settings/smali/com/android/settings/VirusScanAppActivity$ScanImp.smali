.class abstract Lcom/android/settings/VirusScanAppActivity$ScanImp;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ScanImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method abstract getState()Lcom/android/settings/VirusScanAppActivity$RunState;
.end method

.method abstract getStringDesp()Ljava/lang/String;
.end method

.method onFinishClick()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->FinishScan()V
    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->access$400(Lcom/android/settings/VirusScanAppActivity;)V

    .line 304
    return-void
.end method

.method onScanClick()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method updateListView(Lcom/android/settings/VirusScanAppActivity$ViewHolder;I)V
    .locals 5
    .parameter "holder"
    .parameter "position"

    .prologue
    const v3, 0x1060005

    const/4 v4, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/VirusScanAppActivity$AppData;

    .line 322
    .local v0, data:Lcom/android/settings/VirusScanAppActivity$AppData;
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/VirusScanAppActivity$AppData;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 325
    sget-object v1, Lcom/android/settings/VirusScanAppActivity$7;->$SwitchMap$com$android$settings$ScanState:[I

    iget-object v2, v0, Lcom/android/settings/VirusScanAppActivity$AppData;->mState:Lcom/android/settings/ScanState;

    invoke-virtual {v2}, Lcom/android/settings/ScanState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0b06ba

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0b06b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const/16 v2, 0x47

    const/16 v3, 0x88

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0b06bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const/16 v2, 0xdf

    invoke-static {v2, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0b06bc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method abstract updateUi()V
.end method
