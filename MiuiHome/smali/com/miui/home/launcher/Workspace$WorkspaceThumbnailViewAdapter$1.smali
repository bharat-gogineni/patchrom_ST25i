.class Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$1;
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
    .line 1493
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$1;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1495
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$1;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #calls: Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->exitPreview(J)V
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->access$600(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;J)V

    .line 1496
    return-void
.end method
