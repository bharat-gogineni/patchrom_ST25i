.class Lcom/miui/gallery/photoeditor/FilterStack$3$1;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/FilterStack$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/photoeditor/FilterStack$3;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/FilterStack$3;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack$3$1;->this$1:Lcom/miui/gallery/photoeditor/FilterStack$3;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/FilterStack$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$3$1;->this$1:Lcom/miui/gallery/photoeditor/FilterStack$3;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/FilterStack$3;->val$callback:Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/FilterStack$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/miui/gallery/photoeditor/OnDoneBitmapCallback;->onDone(Landroid/graphics/Bitmap;)V

    .line 171
    return-void
.end method
