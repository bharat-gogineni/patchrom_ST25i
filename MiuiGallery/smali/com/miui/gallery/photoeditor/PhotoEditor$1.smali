.class Lcom/miui/gallery/photoeditor/PhotoEditor$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/FilterStack$StackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$1;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStackChanged(ZZ)V
    .locals 1
    .parameter "canUndo"
    .parameter "canRedo"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$1;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$000(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/photoeditor/ActionBar;->updateButtons(ZZ)V

    .line 59
    return-void
.end method
