.class Lcom/miui/home/launcher/gadget/Player$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Player;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$1;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$1;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Player;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$1;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$200(Lcom/miui/home/launcher/gadget/Player;)V

    .line 209
    :cond_0
    return-void
.end method
