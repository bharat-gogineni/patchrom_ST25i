.class Lcom/miui/player/ui/controller/ToolBarController$2;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/ToolBarController;->toggleDownload()V
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
    .line 269
    iput-object p1, p0, Lcom/miui/player/ui/controller/ToolBarController$2;->this$0:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController$2;->this$0:Lcom/miui/player/ui/controller/ToolBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/ToolBarController;->downloadRefresh(I)V

    .line 273
    return-void
.end method
