.class Lcom/miui/home/launcher/FolderCling$1;
.super Ljava/lang/Object;
.source "FolderCling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$1;->this$0:Lcom/miui/home/launcher/FolderCling;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/FolderCling;->mOpened:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/FolderCling;->access$002(Lcom/miui/home/launcher/FolderCling;Z)Z

    .line 62
    return-void
.end method
