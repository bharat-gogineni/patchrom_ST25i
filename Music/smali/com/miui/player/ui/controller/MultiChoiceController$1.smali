.class Lcom/miui/player/ui/controller/MultiChoiceController$1;
.super Ljava/lang/Object;
.source "MultiChoiceController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/MultiChoiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/MultiChoiceController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController$1;,"Lcom/miui/player/ui/controller/MultiChoiceController.1;"
    iput-object p1, p0, Lcom/miui/player/ui/controller/MultiChoiceController$1;->this$0:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController$1;,"Lcom/miui/player/ui/controller/MultiChoiceController.1;"
    const/4 v0, 0x1

    .line 277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController$1;->this$0:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->isAllSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController$1;->this$0:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->selectAll()I

    .line 286
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController$1;->this$0:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->clean()I

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
