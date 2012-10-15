.class Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->packageDeleted(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/DeleteZone$DeleteObserver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DeleteZone$DeleteObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;->this$1:Lcom/miui/home/launcher/DeleteZone$DeleteObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;->this$1:Lcom/miui/home/launcher/DeleteZone$DeleteObserver;

    iget-object v0, v0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 209
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;->this$1:Lcom/miui/home/launcher/DeleteZone$DeleteObserver;

    #getter for: Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->access$200(Lcom/miui/home/launcher/DeleteZone$DeleteObserver;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;->this$1:Lcom/miui/home/launcher/DeleteZone$DeleteObserver;

    iget-object v0, v0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->this$0:Lcom/miui/home/launcher/DeleteZone;

    #getter for: Lcom/miui/home/launcher/DeleteZone;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/DeleteZone;->access$100(Lcom/miui/home/launcher/DeleteZone;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DeleteZone$DeleteObserver$1;->this$1:Lcom/miui/home/launcher/DeleteZone$DeleteObserver;

    #getter for: Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-static {v1}, Lcom/miui/home/launcher/DeleteZone$DeleteObserver;->access$200(Lcom/miui/home/launcher/DeleteZone$DeleteObserver;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)V

    .line 212
    :cond_0
    return-void
.end method
