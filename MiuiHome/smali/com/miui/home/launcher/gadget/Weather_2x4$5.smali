.class Lcom/miui/home/launcher/gadget/Weather_2x4$5;
.super Ljava/lang/Object;
.source "Weather_2x4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4;->openDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$5;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$5;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4;->download()V
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$800(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    .line 393
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 394
    return-void
.end method
