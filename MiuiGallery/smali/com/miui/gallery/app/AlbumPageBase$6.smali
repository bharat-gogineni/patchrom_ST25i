.class Lcom/miui/gallery/app/AlbumPageBase$6;
.super Ljava/lang/Object;
.source "AlbumPageBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPageBase;->showDetails()V
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
    .line 393
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPageBase$6;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$6;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #calls: Lcom/miui/gallery/app/AlbumPageBase;->hideDetails()V
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPageBase;->access$1100(Lcom/miui/gallery/app/AlbumPageBase;)V

    .line 396
    return-void
.end method
