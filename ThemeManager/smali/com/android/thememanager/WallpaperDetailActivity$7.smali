.class Lcom/android/thememanager/WallpaperDetailActivity$7;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/WallpaperDetailActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/WallpaperDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 233
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000d

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 234
    .local v1, info:Landroid/view/View;
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->getCurrentResourceInformation()Landroid/os/Bundle;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1200(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/os/Bundle;

    move-result-object v0

    .line 235
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 236
    const v4, 0x7f070024

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const-string v6, "AUTHOR"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->checkInfoValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1300(Lcom/android/thememanager/WallpaperDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const-string v4, "SIZE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, size:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getFormattedSize(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 242
    :goto_0
    const v4, 0x7f070025

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v4, 0x7f070027

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const-string v6, "MODIFIED_TIME"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->checkInfoValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1300(Lcom/android/thememanager/WallpaperDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mIsOnlineResourceSet:Z
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1400(Lcom/android/thememanager/WallpaperDetailActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    const v4, 0x7f070026

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 246
    .local v3, timeTitle:Landroid/widget/TextView;
    const v4, 0x60c01f9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 248
    .end local v3           #timeTitle:Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f070028

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const-string v6, "DOWNLOAD_COUNT"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->checkInfoValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1300(Lcom/android/thememanager/WallpaperDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .end local v2           #size:Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/thememanager/WallpaperDetailActivity$7;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x60c0016

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a004a

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 257
    return-void

    .line 240
    .restart local v2       #size:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
