.class Lcom/miui/gallery/photoeditor/PhotoEditor$6$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$6;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/PhotoEditor$6;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6$1;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6$1;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->actionBar:Lcom/miui/gallery/photoeditor/ActionBar;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$000(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/ActionBar;->clickSave()V

    .line 193
    return-void
.end method
