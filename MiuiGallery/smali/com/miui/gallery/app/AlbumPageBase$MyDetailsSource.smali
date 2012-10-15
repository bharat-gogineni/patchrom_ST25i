.class Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumPageBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumPageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPageBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;Lcom/miui/gallery/app/AlbumPageBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumPageBase;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 2
    .parameter "indexHint"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPageBase;->access$1600(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iput p1, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->mIndex:I

    .line 630
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->mIndex:I

    :goto_0
    return v0

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPageBase;->access$1600(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->mIndex:I

    .line 626
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPageBase;->access$1600(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$1600(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 635
    .local v0, item:Lcom/miui/gallery/data/MediaObject;
    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;
    invoke-static {v1}, Lcom/miui/gallery/app/AlbumPageBase;->access$1700(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/HighlightDrawer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 637
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    .line 639
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    #getter for: Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumPageBase;->access$1600(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->size()I

    move-result v0

    return v0
.end method
