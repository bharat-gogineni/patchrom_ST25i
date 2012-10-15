.class Lcom/android/thememanager/view/ComponentCategoryView$1;
.super Ljava/lang/Object;
.source "ComponentCategoryView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/view/ComponentCategoryView;->setComponentItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/view/ComponentCategoryView;


# direct methods
.method constructor <init>(Lcom/android/thememanager/view/ComponentCategoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/thememanager/view/ComponentCategoryView$1;->this$0:Lcom/android/thememanager/view/ComponentCategoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 69
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView$1;->this$0:Lcom/android/thememanager/view/ComponentCategoryView;

    #getter for: Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Lcom/android/thememanager/view/FixedHeightGridView;
    invoke-static {v0}, Lcom/android/thememanager/view/ComponentCategoryView;->access$000(Lcom/android/thememanager/view/ComponentCategoryView;)Lcom/android/thememanager/view/FixedHeightGridView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/thememanager/view/FixedHeightGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 70
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/thememanager/view/ComponentCategoryView$1;->this$0:Lcom/android/thememanager/view/ComponentCategoryView;

    invoke-virtual {v3}, Lcom/android/thememanager/view/ComponentCategoryView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string v3, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView$1;->this$0:Lcom/android/thememanager/view/ComponentCategoryView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/ComponentCategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
