.class Lcom/miui/gallery/ui/MenuExecutor$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/MenuExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/miui/gallery/ui/MenuExecutor$2;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor$2;->this$0:Lcom/miui/gallery/ui/MenuExecutor;

    const v1, 0x7f0b00b8

    const v2, 0x7f0d0047

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/MenuExecutor;->startAction(IILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 335
    return-void
.end method
