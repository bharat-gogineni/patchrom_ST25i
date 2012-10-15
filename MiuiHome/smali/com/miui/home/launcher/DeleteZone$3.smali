.class Lcom/miui/home/launcher/DeleteZone$3;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone$3;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iput-object p2, p0, Lcom/miui/home/launcher/DeleteZone$3;->val$d:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$3;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone$3;->val$d:Lcom/miui/home/launcher/DropTarget$DragObject;

    const/4 v2, 0x1

    #calls: Lcom/miui/home/launcher/DeleteZone;->removeItem(Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeleteZone;->access$300(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V

    .line 244
    return-void
.end method
