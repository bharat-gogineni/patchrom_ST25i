.class Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$4;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/PhotoEditor$4;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->showDialog()V

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$4;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$4;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$200(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/FilterStack;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/photoeditor/PhotoEditor$4$1$1;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor$4$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->getOutputBitmap(Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;)V

    .line 152
    return-void
.end method
