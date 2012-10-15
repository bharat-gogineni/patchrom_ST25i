.class Lcom/miui/home/launcher/DeleteZone$1;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DeleteZone;->startUninstallPresetDialog(Lcom/miui/home/launcher/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DeleteZone;

.field final synthetic val$d:Lcom/miui/home/launcher/DropTarget$DragObject;

.field final synthetic val$info:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone$1;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iput-object p2, p0, Lcom/miui/home/launcher/DeleteZone$1;->val$d:Lcom/miui/home/launcher/DropTarget$DragObject;

    iput-object p3, p0, Lcom/miui/home/launcher/DeleteZone$1;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$1;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone$1;->val$d:Lcom/miui/home/launcher/DropTarget$DragObject;

    #calls: Lcom/miui/home/launcher/DeleteZone;->removeItem(Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeleteZone;->access$300(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$1;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone$1;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 233
    return-void
.end method
