.class Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v1, v1, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 1524
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1525
    return-void
.end method
