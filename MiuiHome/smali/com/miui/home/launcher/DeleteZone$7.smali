.class Lcom/miui/home/launcher/DeleteZone$7;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DeleteZone;->startUninstallWidgetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DeleteZone;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DeleteZone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone$7;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iput-object p2, p0, Lcom/miui/home/launcher/DeleteZone$7;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$7;->this$0:Lcom/miui/home/launcher/DeleteZone;

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone$7;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    #calls: Lcom/miui/home/launcher/DeleteZone;->deletePackage(Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeleteZone;->access$400(Lcom/miui/home/launcher/DeleteZone;Ljava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 296
    return-void
.end method
