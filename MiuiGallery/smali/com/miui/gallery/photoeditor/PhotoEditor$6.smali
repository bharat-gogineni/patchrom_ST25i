.class Lcom/miui/gallery/photoeditor/PhotoEditor$6;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;
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
    .line 180
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->effectsBar:Lcom/miui/gallery/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$100(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/EffectsBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$000(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/ActionBar;->canSave()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    new-instance v2, Lcom/miui/gallery/photoeditor/PhotoEditor$6$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$6$1;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor$6;)V

    new-instance v3, Lcom/miui/gallery/photoeditor/PhotoEditor$6$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$6$2;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor$6;)V

    const v4, 0x7f0d0005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/YesNoCancelDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->finish()V

    goto :goto_0
.end method
