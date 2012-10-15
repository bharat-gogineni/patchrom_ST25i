.class Lcom/android/settings/VirusScanActivity$2;
.super Landroid/widget/BaseAdapter;
.source "VirusScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$2;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/android/settings/VirusScanActivity;->access$000()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 91
    new-instance v0, Lcom/android/settings/VirusScanActivity$ViewHolder;

    .end local v0           #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity$2;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {v0, v2, v4}, Lcom/android/settings/VirusScanActivity$ViewHolder;-><init>(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/VirusScanActivity$1;)V

    .line 92
    .restart local v0       #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity$2;->this$0:Lcom/android/settings/VirusScanActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/settings/VirusScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 93
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040082

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    const v2, 0x7f080177

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemInf:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f080178

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, v0, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemInf:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/VirusScanActivity;->access$000()[I

    move-result-object v3

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_1
    return-object p2

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    check-cast v0, Lcom/android/settings/VirusScanActivity$ViewHolder;

    .restart local v0       #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v2, v0, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :pswitch_1
    iget-object v2, v0, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
