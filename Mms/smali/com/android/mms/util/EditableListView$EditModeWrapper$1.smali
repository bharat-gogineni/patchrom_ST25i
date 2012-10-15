.class Lcom/android/mms/util/EditableListView$EditModeWrapper$1;
.super Ljava/lang/Object;
.source "EditableListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/EditableListView$EditModeWrapper;->innerEnterEditMode(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/EditableListView$EditModeWrapper;


# direct methods
.method constructor <init>(Lcom/android/mms/util/EditableListView$EditModeWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper$1;->this$1:Lcom/android/mms/util/EditableListView$EditModeWrapper;

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
    .line 589
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper$1;->this$1:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    #calls: Lcom/android/mms/util/EditableListView$EditModeWrapper;->handleHeadFooterPosition(I)I
    invoke-static {v1, p3}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->access$1000(Lcom/android/mms/util/EditableListView$EditModeWrapper;I)I

    move-result v0

    .line 590
    .local v0, innerPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper$1;->this$1:Lcom/android/mms/util/EditableListView$EditModeWrapper;

    iget-object v1, v1, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;
    invoke-static {v1}, Lcom/android/mms/util/EditableListView;->access$600(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditableListData;

    move-result-object v1

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->toggleAt(Landroid/view/View;I)Ljava/lang/Boolean;
    invoke-static {v1, p2, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$1100(Lcom/android/mms/util/EditableListView$EditableListData;Landroid/view/View;I)Ljava/lang/Boolean;

    .line 593
    :cond_0
    return-void
.end method
