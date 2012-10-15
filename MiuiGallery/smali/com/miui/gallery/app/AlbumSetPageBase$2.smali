.class Lcom/miui/gallery/app/AlbumSetPageBase$2;
.super Lcom/miui/gallery/ui/SlotView$SimpleListener;
.source "AlbumSetPageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumSetPageBase;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPageBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPageBase;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPageBase$2;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$2;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->onDown(I)V

    .line 280
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$2;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->onLongTap(I)V

    .line 295
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$2;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->onSingleTapUp(I)V

    .line 290
    return-void
.end method

.method public onUp()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$2;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->onUp()V

    .line 285
    return-void
.end method
