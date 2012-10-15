.class Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$6;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen$6;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$6;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$600(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/SceneData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData;->clearSettings()Z

    .line 597
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$6;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mSceneData:Lcom/miui/home/launcher/upsidescene/SceneData;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$600(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/SceneData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$6;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$300(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->loadData(Landroid/content/Context;)Z

    .line 598
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$6;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #calls: Lcom/miui/home/launcher/upsidescene/SceneScreen;->reload()V
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$800(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 599
    return-void
.end method
