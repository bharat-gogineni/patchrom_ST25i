.class Lcom/miui/gallery/photoeditor/FilterStack$5;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/FilterStack;->pushFilter(Lcom/miui/gallery/photoeditor/filters/Filter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/FilterStack;

.field final synthetic val$filter:Lcom/miui/gallery/photoeditor/filters/Filter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/filters/Filter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack$5;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/FilterStack$5;->val$filter:Lcom/miui/gallery/photoeditor/filters/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$5;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/FilterStack;->access$900(Lcom/miui/gallery/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$5;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/FilterStack;->access$900(Lcom/miui/gallery/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/photoeditor/filters/Filter;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/filters/Filter;->release()V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$5;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$5;->val$filter:Lcom/miui/gallery/photoeditor/filters/Filter;

    #calls: Lcom/miui/gallery/photoeditor/FilterStack;->pushFilterInternal(Lcom/miui/gallery/photoeditor/filters/Filter;)V
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->access$1000(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/filters/Filter;)V

    .line 204
    return-void
.end method
