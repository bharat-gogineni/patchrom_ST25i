.class Lcom/miui/player/ui/DeleteItems$1;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/DeleteItems;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/DeleteItems;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, confirm:Z
    const/4 v2, 0x0

    .line 71
    .local v2, count:I
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    iget-object v5, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    iget-object v5, v5, Lcom/miui/player/ui/DeleteItems;->mWorker:Lcom/miui/player/ui/DeleteItems$DeleteWorker;

    if-eqz v5, :cond_0

    .line 75
    iget-object v5, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    iget-object v1, v5, Lcom/miui/player/ui/DeleteItems;->mActivity:Landroid/app/Activity;

    .line 76
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    iget-object v5, v5, Lcom/miui/player/ui/DeleteItems;->mWorker:Lcom/miui/player/ui/DeleteItems$DeleteWorker;

    invoke-interface {v5, v1}, Lcom/miui/player/ui/DeleteItems$DeleteWorker;->delete(Landroid/content/Context;)I

    move-result v2

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0011

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, message:Ljava/lang/String;
    invoke-static {v1, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 83
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #message:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    iget-object v5, v5, Lcom/miui/player/ui/DeleteItems;->mCallback:Lcom/miui/player/ui/DialogCallback;

    if-eqz v5, :cond_1

    .line 84
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "delete_count"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 85
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    iget-object v5, v5, Lcom/miui/player/ui/DeleteItems;->mCallback:Lcom/miui/player/ui/DialogCallback;

    iget-object v6, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    iget v6, v6, Lcom/miui/player/ui/DeleteItems;->mRequestCode:I

    invoke-interface {v5, v6, v0, v3}, Lcom/miui/player/ui/DialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 87
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
