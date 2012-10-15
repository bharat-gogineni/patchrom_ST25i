.class Lcom/android/thememanager/LocalThemeResourceListFragment$3;
.super Ljava/lang/Object;
.source "LocalThemeResourceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/LocalThemeResourceListFragment;->getRingtoneFiltingHeader()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$maxDuration:I

.field final synthetic val$minDuration:I


# direct methods
.method constructor <init>(Lcom/android/thememanager/LocalThemeResourceListFragment;Landroid/os/Handler;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    iput-object p2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->val$handler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->val$minDuration:I

    iput p4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->val$maxDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$1000(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->stopAllAsynLoadTask()V

    .line 197
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$1100(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->clearResourceSet()V

    .line 198
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->this$0:Lcom/android/thememanager/LocalThemeResourceListFragment;

    #getter for: Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;
    invoke-static {v2}, Lcom/android/thememanager/LocalThemeResourceListFragment;->access$1200(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->notifyDataSetInvalidated()V

    .line 199
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->val$handler:Landroid/os/Handler;

    iget v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->val$minDuration:I

    iget v5, p0, Lcom/android/thememanager/LocalThemeResourceListFragment$3;->val$maxDuration:I

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    .local v1, parent:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 203
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setSelected(Z)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 208
    .end local v0           #i:I
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
