.class Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;
.super Ljava/lang/Object;
.source "AbstractHomeSlotView.java"

# interfaces
.implements Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AbstractHomeSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AbstractHomeSlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AbstractHomeSlotView;Lcom/miui/gallery/ui/AbstractHomeSlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;-><init>(Lcom/miui/gallery/ui/AbstractHomeSlotView;)V

    return-void
.end method


# virtual methods
.method public onContentInvalidated()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->invalidate()V

    .line 191
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 4
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->setSlotCount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 174
    .local v0, center:I
    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    #calls: Lcom/miui/gallery/ui/AbstractHomeSlotView;->updateVisibleRange(II)V
    invoke-static {v1, v0, v0}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->access$100(Lcom/miui/gallery/ui/AbstractHomeSlotView;II)V

    .line 176
    .end local v0           #center:I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    iget-object v2, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->getVisibleStart()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->getVisibleEnd()I

    move-result v3

    #calls: Lcom/miui/gallery/ui/AbstractHomeSlotView;->updateVisibleRange(II)V
    invoke-static {v1, v2, v3}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->access$100(Lcom/miui/gallery/ui/AbstractHomeSlotView;II)V

    .line 178
    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->updateTitleView(I)V

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->invalidate()V

    .line 181
    return-void
.end method

.method public onUpdateVisibleRange()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    iget-object v1, v1, Lcom/miui/gallery/ui/AbstractHomeSlotView;->mDataWindow:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->getSource()Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;->getTotalMediaObjectCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->updateTitleView(I)V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    iget-object v1, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->getVisibleEnd()I

    move-result v2

    #calls: Lcom/miui/gallery/ui/AbstractHomeSlotView;->updateVisibleRange(II)V
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->access$100(Lcom/miui/gallery/ui/AbstractHomeSlotView;II)V

    .line 164
    return-void
.end method

.method public onWindowContentChanged(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "slot"
    .parameter "old"
    .parameter "update"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->freeSlotContent(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v0, p1, p3}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->putSlotContent(ILjava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractHomeSlotView$MyCacheListener;->this$0:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->invalidate()V

    .line 187
    return-void
.end method
