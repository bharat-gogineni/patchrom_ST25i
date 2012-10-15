.class Lcom/miui/home/launcher/gadget/Weather_2x4$1;
.super Ljava/lang/Object;
.source "Weather_2x4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4;->setupView()V
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
    .line 186
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4$1;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4;

    #calls: Lcom/miui/home/launcher/gadget/Weather_2x4;->showDialog()V
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->access$000(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    .line 191
    return-void
.end method
