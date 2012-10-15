.class Lcom/miui/gallery/app/AlbumSetPageBase$4;
.super Ljava/lang/Object;
.source "AlbumSetPageBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumSetPageBase;->onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPageBase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iput p2, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 335
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->val$resultCode:I

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #setter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mInitialSynced:Z
    invoke-static {v0, v2}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$602(Lcom/miui/gallery/app/AlbumSetPageBase;Z)Z

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetPageBase;->mIsActive:Z
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$700(Lcom/miui/gallery/app/AlbumSetPageBase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    #calls: Lcom/miui/gallery/app/AlbumSetPageBase;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/miui/gallery/app/AlbumSetPageBase;->access$800(Lcom/miui/gallery/app/AlbumSetPageBase;I)V

    .line 340
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->val$resultCode:I

    if-ne v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0068

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
