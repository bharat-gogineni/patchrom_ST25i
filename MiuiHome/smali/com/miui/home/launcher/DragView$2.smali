.class Lcom/miui/home/launcher/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    #getter for: Lcom/miui/home/launcher/DragView;->mDragLayer:Lcom/miui/home/launcher/DragLayer;
    invoke-static {v0}, Lcom/miui/home/launcher/DragView;->access$300(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView$2;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 229
    return-void
.end method
