.class Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;
.super Ljava/lang/Object;
.source "AutoFitImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->onThumbnailReady(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$meta:Lcom/miui/gallery/StorageExplorer/BaseMeta;


# direct methods
.method constructor <init>(Lcom/miui/gallery/StorageExplorer/AutoFitImageView;Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;->this$0:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;->val$meta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iput-object p3, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;->this$0:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;->val$meta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    if-eq v0, v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;->this$0:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->access$000(Lcom/miui/gallery/StorageExplorer/AutoFitImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
