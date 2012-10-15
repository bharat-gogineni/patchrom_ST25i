.class Lcom/miui/home/launcher/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->showPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$4;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-boolean p2, p0, Lcom/miui/home/launcher/Workspace$4;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$4;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace$4;->val$show:Z

    #calls: Lcom/miui/home/launcher/Workspace;->delayedShowPreview(Z)V
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Workspace;->access$400(Lcom/miui/home/launcher/Workspace;Z)V

    .line 1271
    return-void
.end method
