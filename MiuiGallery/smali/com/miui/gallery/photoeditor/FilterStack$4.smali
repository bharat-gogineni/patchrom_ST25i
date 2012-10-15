.class Lcom/miui/gallery/photoeditor/FilterStack$4;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/FilterStack;->setPhotoSource(Landroid/graphics/Bitmap;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/FilterStack;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/miui/gallery/photoeditor/OnDoneCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/FilterStack;Landroid/graphics/Bitmap;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->val$callback:Lcom/miui/gallery/photoeditor/OnDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/miui/gallery/photoeditor/Photo;->create(Landroid/graphics/Bitmap;)Lcom/miui/gallery/photoeditor/Photo;

    move-result-object v1

    #setter for: Lcom/miui/gallery/photoeditor/FilterStack;->source:Lcom/miui/gallery/photoeditor/Photo;
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->access$302(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/Photo;)Lcom/miui/gallery/photoeditor/Photo;

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    #calls: Lcom/miui/gallery/photoeditor/FilterStack;->invalidate()V
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/FilterStack;->access$700(Lcom/miui/gallery/photoeditor/FilterStack;)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$4;->val$callback:Lcom/miui/gallery/photoeditor/OnDoneCallback;

    #calls: Lcom/miui/gallery/photoeditor/FilterStack;->callbackDone(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/FilterStack;->access$800(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V

    .line 185
    return-void
.end method
