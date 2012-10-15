.class Lcom/miui/home/launcher/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$1;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$1;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;
    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$000(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/ThumbnailViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 329
    return-void
.end method
