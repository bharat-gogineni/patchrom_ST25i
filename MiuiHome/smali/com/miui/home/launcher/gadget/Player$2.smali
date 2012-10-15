.class Lcom/miui/home/launcher/gadget/Player$2;
.super Landroid/os/Handler;
.source "Player.java"


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
    .line 461
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$2;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 469
    :goto_0
    return-void

    .line 466
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$2;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateLyricAndTime()V
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$1200(Lcom/miui/home/launcher/gadget/Player;)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
