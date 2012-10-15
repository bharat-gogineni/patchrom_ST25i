.class Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailViewAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/ThumbnailView;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ThumbnailView;Lcom/miui/home/launcher/ThumbnailView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;-><init>(Lcom/miui/home/launcher/ThumbnailView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailView;->refreshThumbnails()V

    .line 572
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    const/4 v1, 0x1

    #setter for: Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/ThumbnailView;->access$102(Lcom/miui/home/launcher/ThumbnailView;Z)Z

    .line 573
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailView;->requestLayout()V

    .line 574
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->onChanged()V

    .line 579
    return-void
.end method
