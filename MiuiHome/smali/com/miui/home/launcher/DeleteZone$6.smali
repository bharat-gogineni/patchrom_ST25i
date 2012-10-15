.class Lcom/miui/home/launcher/DeleteZone$6;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DeleteZone;->startUninstallDialog(Lcom/miui/home/launcher/ShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DeleteZone;

.field final synthetic val$info:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DeleteZone;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone$6;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iput-object p2, p0, Lcom/miui/home/launcher/DeleteZone$6;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$6;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone$6;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/DeleteZone$6;->val$info:Lcom/miui/home/launcher/ShortcutInfo;

    #calls: Lcom/miui/home/launcher/DeleteZone;->deletePackage(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeleteZone;->access$400(Lcom/miui/home/launcher/DeleteZone;Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 269
    return-void
.end method
