.class Lcom/miui/home/launcher/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->bindUpsideScene(Lcom/miui/home/launcher/upsidescene/SceneData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2081
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    #calls: Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)V
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;Z)V

    .line 2084
    return-void
.end method
