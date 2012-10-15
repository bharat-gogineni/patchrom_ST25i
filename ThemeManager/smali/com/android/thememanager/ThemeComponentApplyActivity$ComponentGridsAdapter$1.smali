.class Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;
.super Ljava/lang/Object;
.source "ThemeComponentApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->getChildView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    #getter for: Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->access$300(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 283
    const v2, 0x7f07000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 284
    .local v0, check:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    #getter for: Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->access$300(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->access$474(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;J)J

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-virtual {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->notifyDataSetInvalidated()V

    .line 290
    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    iget-object v2, v2, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    #calls: Lcom/android/thememanager/ThemeComponentApplyActivity;->updateComponentNumber()V
    invoke-static {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity;->access$500(Lcom/android/thememanager/ThemeComponentApplyActivity;)V

    .line 292
    .end local v0           #check:Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 287
    .restart local v0       #check:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    #getter for: Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->access$300(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->access$478(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;J)J

    goto :goto_0
.end method
