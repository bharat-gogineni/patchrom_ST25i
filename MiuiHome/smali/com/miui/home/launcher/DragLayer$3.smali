.class Lcom/miui/home/launcher/DragLayer$3;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragLayer;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$onFinishAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$3;->this$0:Lcom/miui/home/launcher/DragLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/DragLayer$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/launcher/DragLayer$3;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$3;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$3;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$3;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 521
    :cond_0
    return-void
.end method
