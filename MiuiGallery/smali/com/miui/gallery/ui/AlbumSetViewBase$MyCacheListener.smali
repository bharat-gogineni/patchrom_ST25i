.class Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetViewBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumSetViewBase;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumSetViewBase;Lcom/miui/gallery/ui/AlbumSetViewBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;-><init>(Lcom/miui/gallery/ui/AlbumSetViewBase;)V

    return-void
.end method


# virtual methods
.method public onContentInvalidated()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    .line 202
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 4
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setSlotCount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 183
    .local v0, center:I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v1, v0, v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->updateVisibleRange(II)V

    .line 185
    .end local v0           #center:I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleStart()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleEnd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AlbumSetViewBase;->updateVisibleRange(II)V

    .line 186
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->updateTitleView(I)V

    .line 189
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->onSizeChanged(I)V

    .line 191
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    .line 192
    return-void
.end method

.method public onWindowContentChanged(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V
    .locals 1
    .parameter "slot"
    .parameter "old"
    .parameter "update"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    #calls: Lcom/miui/gallery/ui/AlbumSetViewBase;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V
    invoke-static {v0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->access$100(Lcom/miui/gallery/ui/AlbumSetViewBase;ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    #calls: Lcom/miui/gallery/ui/AlbumSetViewBase;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V
    invoke-static {v0, p1, p3}, Lcom/miui/gallery/ui/AlbumSetViewBase;->access$200(Lcom/miui/gallery/ui/AlbumSetViewBase;ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    .line 198
    return-void
.end method
