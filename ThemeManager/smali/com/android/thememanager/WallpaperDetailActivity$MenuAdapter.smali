.class Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/WallpaperDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mCmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/thememanager/WallpaperDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    .line 677
    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mResourceType:J
    invoke-static {p1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$200(Lcom/android/thememanager/WallpaperDetailActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    const v1, 0x7f0a0046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :goto_0
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    const v1, 0x7f0a0044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    const v1, 0x7f0a0047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3000(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/resourcebrowser/util/ResourceHelper;->isSystemResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    const v1, 0x60c0176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    const v1, 0x7f0a0045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 701
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 706
    if-nez p2, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 709
    :cond_0
    const v0, 0x7f07000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 711
    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v2, 0x60c0176

    .line 716
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->mCmdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 717
    .local v6, titleId:I
    const v0, 0x7f0a0045

    if-ne v6, v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const-wide/16 v1, 0x2

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3100(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->doApplyWallpaper(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$400(Lcom/android/thememanager/WallpaperDetailActivity;JLjava/lang/String;)V

    .line 747
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 750
    :cond_1
    return-void

    .line 719
    :cond_2
    const v0, 0x7f0a0046

    if-ne v6, v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const-wide/16 v1, 0x4

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3200(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->doApplyWallpaper(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$400(Lcom/android/thememanager/WallpaperDetailActivity;JLjava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_3
    const v0, 0x7f0a0044

    if-ne v6, v0, :cond_4

    .line 722
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const-wide/16 v1, 0x6

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3300(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->doApplyWallpaper(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$400(Lcom/android/thememanager/WallpaperDetailActivity;JLjava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_4
    const v0, 0x7f0a0047

    if-ne v6, v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mResourceType:J
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$200(Lcom/android/thememanager/WallpaperDetailActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->access$3400(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/util/WallpaperUtils;->cropAndApplyWallpaper(Landroid/app/Activity;JLjava/lang/String;ZZ)V

    goto :goto_0

    .line 725
    :cond_5
    if-ne v6, v2, :cond_0

    .line 726
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x60c0026

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter$1;-><init>(Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
