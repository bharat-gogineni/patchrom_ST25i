.class Lcom/miui/gallery/app/AlbumSetPage$2;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumSetPage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage$2;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage$2;->this$0:Lcom/miui/gallery/app/AlbumSetPage;

    #calls: Lcom/miui/gallery/app/AlbumSetPage;->hideDetails()V
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetPage;->access$100(Lcom/miui/gallery/app/AlbumSetPage;)V

    .line 486
    return-void
.end method
