.class Lcom/miui/home/launcher/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field final synthetic val$cellLayout:Lcom/miui/home/launcher/CellLayout;

.field final synthetic val$hostView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

.field final synthetic val$info:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$2;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$2;->val$info:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$2;->val$hostView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/miui/home/launcher/Workspace$2;->val$cellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 722
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$2;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v1}, Lcom/miui/home/launcher/Workspace;->access$100(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 723
    .local v0, dragLayer:Lcom/miui/home/launcher/DragLayer;
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$2;->val$info:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$2;->val$hostView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace$2;->val$cellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/DragLayer;->addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    .line 724
    return-void
.end method
