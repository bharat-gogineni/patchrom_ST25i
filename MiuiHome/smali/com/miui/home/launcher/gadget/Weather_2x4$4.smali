.class Lcom/miui/home/launcher/gadget/Weather_2x4$4;
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
    .line 397
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$4;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 401
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 402
    return-void
.end method
