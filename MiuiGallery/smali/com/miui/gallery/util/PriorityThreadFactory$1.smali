.class Lcom/miui/gallery/util/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/util/PriorityThreadFactory$1;->this$0:Lcom/miui/gallery/util/PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/util/PriorityThreadFactory$1;->this$0:Lcom/miui/gallery/util/PriorityThreadFactory;

    #getter for: Lcom/miui/gallery/util/PriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/miui/gallery/util/PriorityThreadFactory;->access$000(Lcom/miui/gallery/util/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 43
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 44
    return-void
.end method
