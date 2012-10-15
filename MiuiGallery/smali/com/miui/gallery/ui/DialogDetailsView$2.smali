.class Lcom/miui/gallery/ui/DialogDetailsView$2;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/DialogDetailsView;->setDetails(Lcom/miui/gallery/data/MediaDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/DialogDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/ui/DialogDetailsView$2;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView$2;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    #getter for: Lcom/miui/gallery/ui/DialogDetailsView;->mListener:Lcom/miui/gallery/ui/DetailsHelper$CloseListener;
    invoke-static {v0}, Lcom/miui/gallery/ui/DialogDetailsView;->access$100(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/ui/DetailsHelper$CloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/DialogDetailsView$2;->this$0:Lcom/miui/gallery/ui/DialogDetailsView;

    #getter for: Lcom/miui/gallery/ui/DialogDetailsView;->mListener:Lcom/miui/gallery/ui/DetailsHelper$CloseListener;
    invoke-static {v0}, Lcom/miui/gallery/ui/DialogDetailsView;->access$100(Lcom/miui/gallery/ui/DialogDetailsView;)Lcom/miui/gallery/ui/DetailsHelper$CloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/DetailsHelper$CloseListener;->onClose()V

    .line 111
    :cond_0
    return-void
.end method
