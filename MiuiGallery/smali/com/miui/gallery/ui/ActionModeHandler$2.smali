.class Lcom/miui/gallery/ui/ActionModeHandler$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ActionModeHandler;->updateMenuOptions(Lcom/miui/gallery/util/ThreadPool$JobContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ActionModeHandler;

.field final synthetic val$supportedOperation:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ActionModeHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/miui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/miui/gallery/ui/ActionModeHandler;

    iput p2, p0, Lcom/miui/gallery/ui/ActionModeHandler$2;->val$supportedOperation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/miui/gallery/ui/ActionModeHandler;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/ui/ActionModeHandler;->mMenuTask:Lcom/miui/gallery/util/Future;
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->access$002(Lcom/miui/gallery/ui/ActionModeHandler;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler$2;->this$0:Lcom/miui/gallery/ui/ActionModeHandler;

    #getter for: Lcom/miui/gallery/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->access$100(Lcom/miui/gallery/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/ui/ActionModeHandler$2;->val$supportedOperation:I

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 219
    return-void
.end method
