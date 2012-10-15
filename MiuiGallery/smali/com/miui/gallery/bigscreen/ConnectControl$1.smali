.class Lcom/miui/gallery/bigscreen/ConnectControl$1;
.super Ljava/lang/Object;
.source "ConnectControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/bigscreen/ConnectControl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/bigscreen/ConnectControl;


# direct methods
.method constructor <init>(Lcom/miui/gallery/bigscreen/ConnectControl;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/bigscreen/ConnectControl$1;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "grab_connect_control"

    const-string v1, "delayed disconnected"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/bigscreen/ConnectControl$1;->this$0:Lcom/miui/gallery/bigscreen/ConnectControl;

    #calls: Lcom/miui/gallery/bigscreen/ConnectControl;->disconnectBigShow()V
    invoke-static {v0}, Lcom/miui/gallery/bigscreen/ConnectControl;->access$200(Lcom/miui/gallery/bigscreen/ConnectControl;)V

    .line 105
    return-void
.end method
