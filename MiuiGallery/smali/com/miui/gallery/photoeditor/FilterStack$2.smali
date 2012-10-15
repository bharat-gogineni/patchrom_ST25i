.class Lcom/miui/gallery/photoeditor/FilterStack$2;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/FilterStack;->stackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/FilterStack;

.field final synthetic val$canRedo:Z

.field final synthetic val$canUndo:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/FilterStack;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack$2;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iput-boolean p2, p0, Lcom/miui/gallery/photoeditor/FilterStack$2;->val$canUndo:Z

    iput-boolean p3, p0, Lcom/miui/gallery/photoeditor/FilterStack$2;->val$canRedo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$2;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->stackListener:Lcom/miui/gallery/photoeditor/FilterStack$StackListener;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/FilterStack;->access$000(Lcom/miui/gallery/photoeditor/FilterStack;)Lcom/miui/gallery/photoeditor/FilterStack$StackListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$2;->val$canUndo:Z

    iget-boolean v2, p0, Lcom/miui/gallery/photoeditor/FilterStack$2;->val$canRedo:Z

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/photoeditor/FilterStack$StackListener;->onStackChanged(ZZ)V

    .line 154
    return-void
.end method
