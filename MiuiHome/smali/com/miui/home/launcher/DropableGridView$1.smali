.class Lcom/miui/home/launcher/DropableGridView$1;
.super Ljava/lang/Object;
.source "DropableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DropableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DropableGridView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DropableGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #getter for: Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/home/launcher/DropableGridView;->access$000(Lcom/miui/home/launcher/DropableGridView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #getter for: Lcom/miui/home/launcher/DropableGridView;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-static {v0}, Lcom/miui/home/launcher/DropableGridView;->access$100(Lcom/miui/home/launcher/DropableGridView;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #getter for: Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/home/launcher/DropableGridView;->access$000(Lcom/miui/home/launcher/DropableGridView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #calls: Lcom/miui/home/launcher/DropableGridView;->makePositionSnapShot()V
    invoke-static {v0}, Lcom/miui/home/launcher/DropableGridView;->access$200(Lcom/miui/home/launcher/DropableGridView;)V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #getter for: Lcom/miui/home/launcher/DropableGridView;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;
    invoke-static {v0}, Lcom/miui/home/launcher/DropableGridView;->access$300(Lcom/miui/home/launcher/DropableGridView;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #getter for: Lcom/miui/home/launcher/DropableGridView;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-static {v0}, Lcom/miui/home/launcher/DropableGridView;->access$100(Lcom/miui/home/launcher/DropableGridView;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #getter for: Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/home/launcher/DropableGridView;->access$000(Lcom/miui/home/launcher/DropableGridView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->reorderItemByInsert(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 97
    :cond_1
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/DropableGridView$1;->this$0:Lcom/miui/home/launcher/DropableGridView;

    #getter for: Lcom/miui/home/launcher/DropableGridView;->mLastHit:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/home/launcher/DropableGridView;->access$000(Lcom/miui/home/launcher/DropableGridView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    goto :goto_0
.end method
