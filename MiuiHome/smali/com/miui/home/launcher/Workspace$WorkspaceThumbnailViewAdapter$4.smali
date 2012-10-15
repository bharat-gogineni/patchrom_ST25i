.class Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1530
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace;->access$900(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getCurrentScreen()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ThumbnailScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ThumbnailScreen;->isMovingAnimationStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1546
    :goto_0
    return-void

    .line 1533
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1534
    .local v1, screenId:J
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace;->access$1000(Lcom/miui/home/launcher/Workspace;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1535
    .local v3, screenPosition:I
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;)[I

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1536
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;)[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1537
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace;->access$1100(Lcom/miui/home/launcher/Workspace;)[I

    move-result-object v4

    aget v4, v4, v0

    if-ne v3, v4, :cond_2

    .line 1538
    move v3, v0

    .line 1543
    .end local v0           #i:I
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v1, v2}, Lcom/miui/home/launcher/Workspace;->deleteScreen(J)V

    .line 1544
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1545
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace;->access$900(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->startDeletedAnimation(I)V

    goto :goto_0

    .line 1536
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
