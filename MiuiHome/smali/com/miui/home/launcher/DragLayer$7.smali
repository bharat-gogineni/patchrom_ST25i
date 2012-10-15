.class Lcom/miui/home/launcher/DragLayer$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$7;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$7;->this$0:Lcom/miui/home/launcher/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragLayer;->access$402(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;)Landroid/view/View;

    .line 649
    return-void
.end method
