.class Lcom/android/mms/ui/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 215
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$100(Lcom/android/mms/ui/SearchFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 216
    if-ltz p3, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchFragment$3;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mAdapter:Lcom/android/mms/ui/SearchFragment$SearchAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/SearchFragment;->access$000(Lcom/android/mms/ui/SearchFragment;)Lcom/android/mms/ui/SearchFragment$SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 219
    :cond_0
    return-void
.end method
