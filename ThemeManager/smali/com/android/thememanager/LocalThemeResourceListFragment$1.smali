.class Lcom/android/thememanager/LocalThemeResourceListFragment$1;
.super Ljava/lang/Object;
.source "LocalThemeResourceListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LocalThemeResourceListFragment;->initClockPhotoCategoryHeader(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;


# direct methods
.method constructor <init>(Lcom/android/thememanager/LocalThemeResourceListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 98
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$000(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, formerSize:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$100(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/resourcebrowser/resource/ResourceCategory;

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/resource/ResourceCategory;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, nowSize:Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, ""

    .line 102
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$200(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$300(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/thememanager/LocalThemeResourceAdapter;

    invoke-virtual {v2}, Lcom/android/thememanager/LocalThemeResourceAdapter;->clearVisitors()V

    .line 114
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$1;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$400(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->loadData()V

    .line 116
    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
