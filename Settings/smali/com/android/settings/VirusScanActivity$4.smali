.class Lcom/android/settings/VirusScanActivity$4;
.super Landroid/widget/BaseAdapter;
.source "VirusScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 158
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$4;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 171
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

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, holder:Lcom/android/settings/VirusScanActivity$LibViewHolder;
    if-nez p2, :cond_0

    .line 179
    new-instance v0, Lcom/android/settings/VirusScanActivity$LibViewHolder;

    .end local v0           #holder:Lcom/android/settings/VirusScanActivity$LibViewHolder;
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity$4;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {v0, v2, v4}, Lcom/android/settings/VirusScanActivity$LibViewHolder;-><init>(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/VirusScanActivity$1;)V

    .line 180
    .restart local v0       #holder:Lcom/android/settings/VirusScanActivity$LibViewHolder;
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity$4;->this$0:Lcom/android/settings/VirusScanActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/settings/VirusScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 181
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04007e

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    const v2, 0x7f080167

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings/VirusScanActivity$LibViewHolder;->mLibIcon:Landroid/widget/ImageView;

    .line 183
    const v2, 0x7f080168

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/VirusScanActivity$LibViewHolder;->mLibName:Landroid/widget/TextView;

    .line 184
    const v2, 0x7f080169

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings/VirusScanActivity$LibViewHolder;->mLibCheck:Landroid/widget/CheckBox;

    .line 185
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    return-object p2

    .line 187
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/settings/VirusScanActivity$LibViewHolder;
    check-cast v0, Lcom/android/settings/VirusScanActivity$LibViewHolder;

    .restart local v0       #holder:Lcom/android/settings/VirusScanActivity$LibViewHolder;
    goto :goto_0
.end method
