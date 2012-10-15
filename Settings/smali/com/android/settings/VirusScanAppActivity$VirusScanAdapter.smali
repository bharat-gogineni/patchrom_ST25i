.class Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;
.super Landroid/widget/BaseAdapter;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirusScanAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/VirusScanAppActivity;Lcom/android/settings/VirusScanAppActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity$ScanImp;->getCount()I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 253
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, holder:Lcom/android/settings/VirusScanAppActivity$ViewHolder;
    if-nez p2, :cond_1

    .line 261
    new-instance v0, Lcom/android/settings/VirusScanAppActivity$ViewHolder;

    .end local v0           #holder:Lcom/android/settings/VirusScanAppActivity$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v0, v2}, Lcom/android/settings/VirusScanAppActivity$ViewHolder;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    .line 262
    .restart local v0       #holder:Lcom/android/settings/VirusScanAppActivity$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->this$0:Lcom/android/settings/VirusScanAppActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/settings/VirusScanAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 263
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 264
    const v2, 0x1010003

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppName:Landroid/widget/TextView;

    .line 265
    const v2, 0x7f080175

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    .line 266
    const v2, 0x7f080176

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 267
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    invoke-virtual {v2, v0, p1}, Lcom/android/settings/VirusScanAppActivity$ScanImp;->updateListView(Lcom/android/settings/VirusScanAppActivity$ViewHolder;I)V

    .line 275
    :cond_0
    return-object p2

    .line 269
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/settings/VirusScanAppActivity$ViewHolder;
    check-cast v0, Lcom/android/settings/VirusScanAppActivity$ViewHolder;

    .restart local v0       #holder:Lcom/android/settings/VirusScanAppActivity$ViewHolder;
    goto :goto_0
.end method
