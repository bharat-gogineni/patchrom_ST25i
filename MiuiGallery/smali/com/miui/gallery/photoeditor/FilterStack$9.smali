.class Lcom/miui/gallery/photoeditor/FilterStack$9;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/FilterStack;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/FilterStack;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/FilterStack;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack$9;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-static {}, Lcom/miui/gallery/photoeditor/filters/Filter;->releaseContext()V

    .line 264
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$9;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/FilterStack;->access$600(Lcom/miui/gallery/photoeditor/FilterStack;)Lcom/miui/gallery/photoeditor/PhotoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/miui/gallery/photoeditor/PhotoView;->setPhoto(Lcom/miui/gallery/photoeditor/Photo;Z)V

    .line 265
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$9;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #setter for: Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;
    invoke-static {v1, v3}, Lcom/miui/gallery/photoeditor/FilterStack;->access$302(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/Photo;)Lcom/miui/gallery/photoeditor/Photo;

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$9;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/FilterStack;->access$400(Lcom/miui/gallery/photoeditor/FilterStack;)[Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$9;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/FilterStack;->access$400(Lcom/miui/gallery/photoeditor/FilterStack;)[Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v1

    aput-object v3, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method
