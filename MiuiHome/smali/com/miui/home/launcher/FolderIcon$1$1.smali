.class Lcom/miui/home/launcher/FolderIcon$1$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/FolderIcon$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon$1;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$1$1;->this$1:Lcom/miui/home/launcher/FolderIcon$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$1$1;->this$1:Lcom/miui/home/launcher/FolderIcon$1;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderIcon$1;->this$0:Lcom/miui/home/launcher/FolderIcon;

    #getter for: Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;
    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$000(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$1$1;->this$1:Lcom/miui/home/launcher/FolderIcon$1;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderIcon$1;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    .line 276
    return-void
.end method
