.class public Lcom/android/settings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1511
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;[ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "uids"
    .parameter "label"

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1517
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1518
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "uids"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1520
    new-instance v1, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1521
    .local v1, fragment:Lcom/android/settings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1522
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1523
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1524
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1525
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1526
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1527
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1532
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1533
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1534
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    #setter for: Lcom/android/settings/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$3002(Lcom/android/settings/DataUsageSummary;[I)[I

    .line 1535
    #calls: Lcom/android/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)V

    .line 1536
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1540
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1541
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1542
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/android/settings/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$3002(Lcom/android/settings/DataUsageSummary;[I)[I

    .line 1543
    #calls: Lcom/android/settings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)V

    .line 1544
    return-void
.end method
