.class Lcom/miui/gallery/gadget/LocalPhotoSource$1;
.super Landroid/database/ContentObserver;
.source "LocalPhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/gadget/LocalPhotoSource;


# direct methods
.method constructor <init>(Lcom/miui/gallery/gadget/LocalPhotoSource;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/gadget/LocalPhotoSource$1;->this$0:Lcom/miui/gallery/gadget/LocalPhotoSource;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource$1;->this$0:Lcom/miui/gallery/gadget/LocalPhotoSource;

    const/4 v1, 0x1

    #setter for: Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentDirty:Z
    invoke-static {v0, v1}, Lcom/miui/gallery/gadget/LocalPhotoSource;->access$002(Lcom/miui/gallery/gadget/LocalPhotoSource;Z)Z

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource$1;->this$0:Lcom/miui/gallery/gadget/LocalPhotoSource;

    #getter for: Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentListener:Lcom/miui/gallery/data/ContentListener;
    invoke-static {v0}, Lcom/miui/gallery/gadget/LocalPhotoSource;->access$100(Lcom/miui/gallery/gadget/LocalPhotoSource;)Lcom/miui/gallery/data/ContentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource$1;->this$0:Lcom/miui/gallery/gadget/LocalPhotoSource;

    #getter for: Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentListener:Lcom/miui/gallery/data/ContentListener;
    invoke-static {v0}, Lcom/miui/gallery/gadget/LocalPhotoSource;->access$100(Lcom/miui/gallery/gadget/LocalPhotoSource;)Lcom/miui/gallery/data/ContentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/data/ContentListener;->onContentDirty()V

    .line 76
    :cond_0
    return-void
.end method
