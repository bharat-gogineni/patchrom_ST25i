.class Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/SaveCopyTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;->onDone(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1$1;->this$3:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 143
    invoke-static {}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dismissDialog()V

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1$1;->this$3:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$4;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #setter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$302(Lcom/miui/gallery/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1$1;->this$3:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$4;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$000(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1$1;->this$3:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$4;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$300(Lcom/miui/gallery/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/photoeditor/ActionBar;->updateSave(Z)V

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
