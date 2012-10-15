.class Lcom/miui/player/ui/AudioPreview$2;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AudioPreview;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/miui/player/ui/AudioPreview$2;->this$0:Lcom/miui/player/ui/AudioPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview$2;->this$0:Lcom/miui/player/ui/AudioPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/AudioPreview;->queueNextRefresh(Z)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
