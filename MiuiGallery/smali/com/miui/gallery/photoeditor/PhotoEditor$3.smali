.class Lcom/miui/gallery/photoeditor/PhotoEditor$3;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

.field final synthetic val$undo:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/PhotoEditor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$3;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    iput-boolean p2, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$3;->val$undo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$3;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->effectsBar:Lcom/miui/gallery/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$100(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/EffectsBar;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/photoeditor/PhotoEditor$3$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$3$1;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor$3;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
