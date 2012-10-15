.class Lcom/miui/gallery/photoeditor/RestorableView$1;
.super Ljava/lang/Object;
.source "RestorableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/RestorableView;->setClickRunnable(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/RestorableView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/RestorableView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/RestorableView$1;->this$0:Lcom/miui/gallery/photoeditor/RestorableView;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/RestorableView$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView$1;->this$0:Lcom/miui/gallery/photoeditor/RestorableView;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/RestorableView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/RestorableView$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_0
    return-void
.end method
