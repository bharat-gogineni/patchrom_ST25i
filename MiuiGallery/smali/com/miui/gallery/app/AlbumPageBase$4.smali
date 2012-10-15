.class Lcom/miui/gallery/app/AlbumPageBase$4;
.super Lcom/miui/gallery/ui/SlotView$SimpleListener;
.source "AlbumPageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPageBase;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPageBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #calls: Lcom/miui/gallery/app/AlbumPageBase;->onDown(I)V
    invoke-static {v0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->access$800(Lcom/miui/gallery/app/AlbumPageBase;I)V

    .line 352
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->onLongTap(I)V

    .line 367
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->onSingleTapUp(I)V

    .line 362
    return-void
.end method

.method public onUp()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$4;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #calls: Lcom/miui/gallery/app/AlbumPageBase;->onUp()V
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPageBase;->access$900(Lcom/miui/gallery/app/AlbumPageBase;)V

    .line 357
    return-void
.end method
