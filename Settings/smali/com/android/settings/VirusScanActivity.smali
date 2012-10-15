.class public Lcom/android/settings/VirusScanActivity;
.super Lcom/android/settings/BaseActivity;
.source "VirusScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VirusScanActivity$LibViewHolder;,
        Lcom/android/settings/VirusScanActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final mItemInf:[I


# instance fields
.field private final SHOW_LIB_DIALOG:I

.field mList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/VirusScanActivity;->mItemInf:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xb0t 0x6t 0xbt 0x7ft
        0xb1t 0x6t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    .line 25
    const/16 v0, 0x111

    iput v0, p0, Lcom/android/settings/VirusScanActivity;->SHOW_LIB_DIALOG:I

    .line 33
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/settings/VirusScanActivity;->mItemInf:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/android/settings/VirusScanService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->finish()V

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    new-instance v1, Lcom/android/settings/VirusScanActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/VirusScanActivity$1;-><init>(Lcom/android/settings/VirusScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v1, Lcom/android/settings/VirusScanActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/VirusScanActivity$2;-><init>(Lcom/android/settings/VirusScanActivity;)V

    .line 116
    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    .line 117
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/VirusScanActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/VirusScanActivity$3;-><init>(Lcom/android/settings/VirusScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 150
    const/16 v3, 0x111

    if-ne v3, p1, :cond_0

    .line 151
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b06af

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 153
    const v3, 0x7f0b06b2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04007f

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, view:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    new-instance v0, Lcom/android/settings/VirusScanActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanActivity$4;-><init>(Lcom/android/settings/VirusScanActivity;)V

    .line 194
    .local v0, ba:Landroid/widget/BaseAdapter;
    const v3, 0x7f0b06b4

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v3, 0x7f0b06b5

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 198
    .end local v0           #ba:Landroid/widget/BaseAdapter;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-object v5
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/android/settings/VirusScanService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->finish()V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onResume()V

    .line 146
    return-void
.end method
