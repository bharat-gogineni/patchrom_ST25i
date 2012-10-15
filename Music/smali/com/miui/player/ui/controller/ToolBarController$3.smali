.class Lcom/miui/player/ui/controller/ToolBarController$3;
.super Landroid/content/BroadcastReceiver;
.source "ToolBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/ToolBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/ToolBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/ToolBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/miui/player/ui/controller/ToolBarController$3;->this$0:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController$3;->this$0:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/ToolBarController;->downloadRefresh()V

    .line 365
    return-void
.end method
