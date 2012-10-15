.class Lcom/miui/gallery/photoeditor/PhotoEditor$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/LoadScreennailTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor;->openPhoto()V
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
    .line 80
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$2;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$2;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    #getter for: Lcom/miui/gallery/photoeditor/PhotoEditor;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->access$200(Lcom/miui/gallery/photoeditor/PhotoEditor;)Lcom/miui/gallery/photoeditor/FilterStack;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/photoeditor/PhotoEditor$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/photoeditor/PhotoEditor$2$1;-><init>(Lcom/miui/gallery/photoeditor/PhotoEditor$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->setPhotoSource(Landroid/graphics/Bitmap;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    .line 92
    return-void
.end method
