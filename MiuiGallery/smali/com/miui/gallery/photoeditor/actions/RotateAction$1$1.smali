.class Lcom/miui/gallery/photoeditor/actions/RotateAction$1$1;
.super Ljava/lang/Object;
.source "RotateAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->transformPhotoView(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/photoeditor/actions/RotateAction$1;

.field final synthetic val$degrees:F


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/RotateAction$1;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1$1;->this$1:Lcom/miui/gallery/photoeditor/actions/RotateAction$1;

    iput p2, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1$1;->val$degrees:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1$1;->this$1:Lcom/miui/gallery/photoeditor/actions/RotateAction$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget v1, p0, Lcom/miui/gallery/photoeditor/actions/RotateAction$1$1;->val$degrees:F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/PhotoView;->rotatePhoto(F)V

    .line 86
    return-void
.end method
