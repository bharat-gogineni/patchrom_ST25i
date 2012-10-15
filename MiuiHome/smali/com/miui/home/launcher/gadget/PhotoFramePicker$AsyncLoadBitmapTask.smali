.class Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "PhotoFramePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/PhotoFramePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeepValues:Z

.field private final mPickerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/gadget/PhotoFramePicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;Z)V
    .locals 1
    .parameter "picker"
    .parameter "keepValues"

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 306
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    .line 307
    iput-boolean p2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mKeepValues:Z

    .line 308
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "params"

    .prologue
    .line 312
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    .line 313
    .local v0, picker:Lcom/miui/home/launcher/gadget/PhotoFramePicker;
    if-eqz v0, :cond_1

    .line 314
    iget-object v2, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    new-instance v1, Lmiui/util/InputStreamLoader;

    iget-object v2, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v1, streamLoader:Lmiui/util/InputStreamLoader;
    :goto_0
    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 319
    .end local v1           #streamLoader:Lmiui/util/InputStreamLoader;
    :goto_1
    return-object v2

    .line 314
    :cond_0
    new-instance v1, Lmiui/util/InputStreamLoader;

    iget-object v2, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 319
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 301
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;

    .line 327
    .local v0, picker:Lcom/miui/home/launcher/gadget/PhotoFramePicker;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    if-nez p1, :cond_0

    .line 329
    const v1, 0x7f0c006e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 331
    :cond_0
    iget-object v1, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1, p1}, Lmiui/widget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->mKeepValues:Z

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    iget v2, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    invoke-virtual {v1, v2, v3}, Lmiui/widget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 334
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->setMatrixValues()V

    .line 341
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 343
    .end local v0           #picker:Lcom/miui/home/launcher/gadget/PhotoFramePicker;
    :cond_2
    return-void

    .line 336
    .restart local v0       #picker:Lcom/miui/home/launcher/gadget/PhotoFramePicker;
    :cond_3
    iget-object v1, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1, v2, v2}, Lmiui/widget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 337
    iget-object v1, v0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1}, Lmiui/widget/PhotoFrameView;->resetMatrix()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 301
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
