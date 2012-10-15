.class Lcom/miui/player/util/LoopChecker$1;
.super Landroid/os/Handler;
.source "LoopChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/LoopChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/util/LoopChecker;


# direct methods
.method constructor <init>(Lcom/miui/player/util/LoopChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/miui/player/util/LoopChecker$1;->this$0:Lcom/miui/player/util/LoopChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 17
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/miui/player/util/LoopChecker$1;->this$0:Lcom/miui/player/util/LoopChecker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/miui/player/util/LoopChecker;->doCheck(I)V

    .line 20
    :cond_0
    return-void
.end method
