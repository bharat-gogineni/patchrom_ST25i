.class Lcom/miui/home/launcher/upsidescene/SceneScreen$6;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 v1, 0x0

    #calls: Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditModeInner(Z)V
    invoke-static {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$700(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V

    .line 594
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    new-instance v1, Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$6$1;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen$6;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method
