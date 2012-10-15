.class public Lcom/android/thememanager/view/ThirdAppPicker;
.super Landroid/app/Activity;
.source "ThirdAppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/ThirdAppPicker$FileListAdapter;
    }
.end annotation


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/android/thememanager/view/ThirdAppPicker$FileListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/view/ThirdAppPicker;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mAllApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/view/ThirdAppPicker;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/thememanager/view/ThirdAppPicker;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/thememanager/view/ThirdAppPicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x60c001b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/thememanager/view/ThirdAppPicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/android/thememanager/view/ThirdAppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mAllApps:Ljava/util/List;

    .line 47
    iget-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mAllApps:Ljava/util/List;

    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    iget-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mAllApps:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/android/thememanager/view/ThirdAppPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    .line 51
    new-instance v1, Lcom/android/thememanager/view/ThirdAppPicker$FileListAdapter;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mAllApps:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/thememanager/view/ThirdAppPicker$FileListAdapter;-><init>(Lcom/android/thememanager/view/ThirdAppPicker;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mListAdapter:Lcom/android/thememanager/view/ThirdAppPicker$FileListAdapter;

    .line 52
    iget-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mListAdapter:Lcom/android/thememanager/view/ThirdAppPicker$FileListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v1, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 96
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mAllApps:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 97
    .local v1, item:Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 99
    const-string v2, "name"

    iget-object v3, p0, Lcom/android/thememanager/view/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 100
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :cond_0
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/thememanager/view/ThirdAppPicker;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/thememanager/view/ThirdAppPicker;->finish()V

    .line 104
    return-void

    .line 102
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/thememanager/view/ThirdAppPicker;->finish()V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
