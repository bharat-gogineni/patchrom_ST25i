.class Lcom/miui/gallery/ui/ActionModeHandler$3;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/ActionModeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/miui/gallery/ui/ActionModeHandler$3;->this$0:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ActionModeHandler$3;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .parameter "jc"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/gallery/ui/ActionModeHandler$3;->this$0:Lcom/miui/gallery/ui/ActionModeHandler;

    #calls: Lcom/miui/gallery/ui/ActionModeHandler;->updateMenuOptions(Lcom/miui/gallery/util/ThreadPool$JobContext;)V
    invoke-static {v0, p1}, Lcom/miui/gallery/ui/ActionModeHandler;->access$200(Lcom/miui/gallery/ui/ActionModeHandler;Lcom/miui/gallery/util/ThreadPool$JobContext;)V

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method
