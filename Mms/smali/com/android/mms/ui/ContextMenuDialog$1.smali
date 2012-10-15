.class Lcom/android/mms/ui/ContextMenuDialog$1;
.super Ljava/lang/Object;
.source "ContextMenuDialog.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ContextMenuDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ContextMenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/mms/ui/ContextMenuDialog$1;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 35
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 36
    .local v0, id:I
    iget-object v1, p0, Lcom/android/mms/ui/ContextMenuDialog$1;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    #getter for: Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ContextMenuDialog;->access$000(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 37
    const/4 v1, 0x1

    return v1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 42
    return-void
.end method
