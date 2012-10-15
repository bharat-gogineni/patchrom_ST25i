.class Lcom/miui/gallery/photoeditor/FilterStack$3;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/FilterStack;->getOutputBitmap(Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/FilterStack;

.field final synthetic val$callback:Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->val$callback:Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;
    invoke-static {v3}, Lcom/miui/gallery/photoeditor/FilterStack;->access$100(Lcom/miui/gallery/photoeditor/FilterStack;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v4

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->outputTopFilter:Z
    invoke-static {v3}, Lcom/miui/gallery/photoeditor/FilterStack;->access$200(Lcom/miui/gallery/photoeditor/FilterStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    sub-int v1, v4, v3

    .line 164
    .local v1, filterIndex:I
    if-gez v1, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;
    invoke-static {v3}, Lcom/miui/gallery/photoeditor/FilterStack;->access$300(Lcom/miui/gallery/photoeditor/FilterStack;)Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v2

    .line 165
    .local v2, photo:Lcom/miui/gallery/photoeditor/Photo;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/photoeditor/Photo;->save()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;
    invoke-static {v3}, Lcom/miui/gallery/photoeditor/FilterStack;->access$600(Lcom/miui/gallery/photoeditor/FilterStack;)Lcom/miui/gallery/photoeditor/PhotoView;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/photoeditor/FilterStack$3$1;

    invoke-direct {v4, p0, v0}, Lcom/miui/gallery/photoeditor/FilterStack$3$1;-><init>(Lcom/miui/gallery/photoeditor/FilterStack$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void

    .line 163
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #filterIndex:I
    .end local v2           #photo:Lcom/miui/gallery/photoeditor/Photo;
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 164
    .restart local v1       #filterIndex:I
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #getter for: Lcom/miui/gallery/photoeditor/FilterStack;->buffers:[Lcom/miui/gallery/photoeditor/Photo;
    invoke-static {v3}, Lcom/miui/gallery/photoeditor/FilterStack;->access$400(Lcom/miui/gallery/photoeditor/FilterStack;)[Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/FilterStack$3;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #calls: Lcom/miui/gallery/photoeditor/FilterStack;->getOutBufferIndex(I)I
    invoke-static {v4, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->access$500(Lcom/miui/gallery/photoeditor/FilterStack;I)I

    move-result v4

    aget-object v2, v3, v4

    goto :goto_1

    .line 165
    .restart local v2       #photo:Lcom/miui/gallery/photoeditor/Photo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
